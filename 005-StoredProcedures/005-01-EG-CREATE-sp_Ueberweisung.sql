USE [MiniBank];
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:
-- Create date:
-- Description:	
-- =============================================
CREATE OR ALTER PROCEDURE [sp_Ueberweisung] 
	-- Add the parameters for the stored procedure here
	@DatumUhrzeit			DATETIME,
    @Betrag					DECIMAL(19,4),
    @Verwendungszweck		NVARCHAR(140),
    @Konto_ID				INT,
    @IBAN_Gegenseite		CHAR(22),
    @BIC_Gegenseite			CHAR(11),
    @Kommentar				NTEXT,
	-----
	@Erfolg bit OUTPUT, -- geklappt oder nicht
	@Feedback VARCHAR(MAX) OUTPUT -- Fehlermeldungen etc.
AS
BEGIN
	-- Hilfsvariablen deklarieren	
	DECLARE @CheckResult		AS INT,
			@KontoStandAlt		AS DECIMAL(19,4),
			@KontoStandErlaubt	AS DECIMAL(19,4),
			@KontoStandNeu		AS DECIMAL(19,4),
			@msg				AS nvarchar(MAX);
	-------------------------------	
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;	
	BEGIN TRY
		-- Konto_ID ist nicht in der Tabelle [Kunden] vorhanden
		SET @CheckResult = dbo.sf_Ueberweisung_Konto_ID_in_Kunden(@Konto_ID)
		IF @CheckResult = 0
			THROW 50001, '[Konto_ID] ist nicht in der Tabelle [Kunden] vorhanden, bitte korrigieren!', 1;


		-- @Konto_ID ist gesperrt!
		SET @CheckResult = dbo.sf_Konto_ID_gesperrt(@Konto_ID);
		IF @CheckResult = 1
			THROW 50002, '[Konto_ID] (Auftraggeber) ist gesperrt!', 1;


		-- IBAN inkorrekt
		SET @CheckResult = dbo.sf_IBAN_Validierung(@IBAN_Gegenseite);
		IF @CheckResult = 0 -- IBAN inkorrekt
			THROW 50003, 'Die IBAN ist inkorrekt, bitte korrigieren!', 1;


		-- Kunde-A überweist an Kunde-B und der Betrag ist positiv
		SET @CheckResult = dbo.sf_IBAN_von_Tabelle_Kunde(@IBAN_Gegenseite);
		IF (@CheckResult = 1) AND (@Betrag > 0)
			THROW 50004, 'Bitte negativen Betrag eingeben!', 1;


		-- Kunde-A überweist an Kunde-B und Konto von Kunde-B ist gesperrt
		IF (@CheckResult = 1) AND (dbo.sf_Kontonummer_gesperrt(SUBSTRING(@IBAN_Gegenseite, 13, 10)) = 1)
			THROW 50005, 'Konto des Empfängers ist gesperrt!', 1;



		SET @KontoStandAlt = (SELECT KontoStand FROM Konto WHERE Konto_ID = @Konto_ID)
		SET @KontoStandErlaubt = (SELECT KontoStandErlaubt FROM Konto WHERE Konto_ID = @Konto_ID)
		-- Betrag ist negativ: Also Überweisung vom Kunden-Konto
		IF (@Betrag < 0)
			-- KontoStand (Kunde-A) + (negativer Betrag) < KontoStandErlaubt (Kunde-A)
			IF (@KontoStandAlt + @Betrag < @KontoStandErlaubt)
				BEGIN
					SET @msg = 'Sie dürfen nur ' + CONVERT(nvarchar(24), @KontoStandAlt - @KontoStandErlaubt) + ' Euro überweisen';
					THROW 50006, @msg, 1;
				END


		-- Überweisung an oder von Fremde-Bank
		SET @CheckResult = dbo.sf_IBAN_von_Tabelle_Kunde(@IBAN_Gegenseite);
		SET @KontoStandNeu = @KontoStandAlt + @Betrag
		IF @DatumUhrzeit = NULL
			SET @DatumUhrzeit = CURRENT_TIMESTAMP
		IF (@CheckResult = 0)
			BEGIN				
				-- INSERT INTO [Ueberweisung]
				INSERT INTO [Ueberweisung]
							([DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar])
						VALUES(@DatumUhrzeit, @Betrag, @Verwendungszweck, @Konto_ID, @IBAN_Gegenseite, @BIC_Gegenseite, @KontoStandAlt, @KontoStandNeu,  @Kommentar);
			END
		ELSE -- @CheckResult = 1: IBAN ist aus Tabelle Kunde. Also Überweisung von (Kunde-A) an (Kunde-B)
			BEGIN
				-- DECLARE Variablen für die zweite (INSERT) Zeile: Kunde-B <- Kunde-A
				DECLARE @Konto_ID_B				INT,
						@IBAN_Gegenseite_A		CHAR(22),
						@KontoStandAlt_B		AS DECIMAL(19,4),
						@KontoStandNeu_B		AS DECIMAL(19,4),
						@Kontonummer_B			CHAR(10);

				
				--SET @Betrag = - @Betrag
				SET @Kontonummer_B = dbo.sf_erstelle_Kontonummer_von_IBAN(@IBAN_Gegenseite)
				SET @Konto_ID_B = (SELECT [Konto_ID] FROM [Konto] WHERE [Kontonummer] = @Kontonummer_B)

				-- Kunde-A überweist an Kunde-B wobei Kunde-A = Kunde-B
				IF @Konto_ID = @Konto_ID_B
					THROW 50007, 'Es macht keinen Sinn aufs eigene Konto zu überweisen!', 1;

				-- @IBAN_Gegenseite (Kunde-A Zweite Zeile)
				SET @IBAN_Gegenseite_A = dbo.sf_erstelle_IBAN_von_Kontonummer((SELECT [Kontonummer] FROM [Konto] WHERE [Konto_ID] = @Konto_ID), (SELECT [BIC] FROM [MiniBank].[dbo].[MiniBankFiliale] WHERE [Filial_ID] = 1))
				SET @KontoStandAlt_B = (SELECT KontoStand FROM Konto WHERE Konto_ID = @Konto_ID_B)
				SET @KontoStandNeu_B = @KontoStandAlt_B - @Betrag
				--INSERT INTO [Ueberweisung]
				--			([Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar])
				--		VALUES(@Betrag, @Verwendungszweck, @Konto_ID, @IBAN_Gegenseite, @BIC_Gegenseite, @KontoStandAlt, @KontoStandNeu,  @Kommentar),
				--			  (-@Betrag, @Verwendungszweck, @Konto_ID_B, @IBAN_Gegenseite_A, @BIC_Gegenseite, @KontoStandAlt_B, @KontoStandNeu_B,  @Kommentar);	

				INSERT INTO [Ueberweisung]
							([DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar])
						VALUES(@DatumUhrzeit, @Betrag, @Verwendungszweck, @Konto_ID, @IBAN_Gegenseite, @BIC_Gegenseite, @KontoStandAlt, @KontoStandNeu,  @Kommentar);
				INSERT INTO [Ueberweisung]
							([DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar])
						VALUES(@DatumUhrzeit, -@Betrag, @Verwendungszweck, @Konto_ID_B, @IBAN_Gegenseite_A, @BIC_Gegenseite, @KontoStandAlt_B, @KontoStandNeu_B,  @Kommentar);	
			END

		SET @Erfolg = 1;
		SET @Feedback = 'Alles OK!';			
	END TRY 
	BEGIN CATCH
		SET @Erfolg = 0; -- nicht geklappt--
		-- 	@Feedback text OUTPUT --Fehlermeldungen etc.
		SET @Feedback = 
			ERROR_MESSAGE() + ' Fehler Nr. '+ CONVERT(varchar, ERROR_NUMBER())
						+ ' Prozedur: '  + ERROR_PROCEDURE()
						+ ' Zeile Nr.: ' + CONVERT(varchar,  ERROR_LINE());
	END CATCH;
END
GO

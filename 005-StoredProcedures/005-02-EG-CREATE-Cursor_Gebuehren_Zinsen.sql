USE [MiniBank]
GO

--SELECT [Konto_ID]
--FROM [Konto]
--ORDER BY [Konto_ID]

--SELECT [Konto_ID]
--FROM [Konto]
--WHERE (Kontonummer != '1000000001') AND ([Gesperrt] = 0)
--ORDER BY [Konto_ID]

DECLARE @Konto_ID			AS INT,
		@Konto_ID_MiniBank	AS INT,
		@StartDT			AS DATETIME,
		@StartDT_VARCHAR	AS VARCHAR,
		@KontoStandAlt		AS DECIMAL(19,4),
		@Betrag				AS DECIMAL(19,4),
		@KontoStandNeu		AS DECIMAL(19,4),
		@KontoArt_Interval	AS TINYINT,
		@KontoArt_Kosten	AS DECIMAL(19,4),
		@Dispokredit		AS DECIMAL(19,4),
		@KontoArt_Einheit	AS BIT,
		@Bonitaet_Score		AS TINYINT,
	    @Month_Numeric 		AS NUMERIC(2,0),
		@Month_Char 		AS CHAR(2),
		@KontoArt_ID		AS INT,
		@Erfolg 			AS BIT, -- geklappt oder nicht
		@Feedback 			AS VARCHAR(MAX), -- Fehlermeldungen etc.
		@Datum 				AS DATETIME,
		@BIC				AS CHAR(11),
		@IBAN_Gegenseite	AS VARCHAR(22);

SET @Datum = CURRENT_TIMESTAMP;
SET @BIC = (SELECT [BIC] FROM [MiniBank].[dbo].[MiniBankFiliale] WHERE [Filial_ID] = 1)

SET @Dispokredit = 0.0943

SET @StartDT =  '20090101'

WHILE @StartDT < '20100201'
BEGIN



DECLARE Cursor_Kunde CURSOR FOR
	SELECT [Konto_ID], [KontoStand]
	FROM [Konto]
	WHERE ([Gesperrt] = 0) --AND (Kontonummer != '1000000001')
	ORDER BY [Konto_ID];


OPEN Cursor_Kunde; -- so was wie SET @Variable = Wert
PRINT ' --------Anfang----------';
	FETCH NEXT FROM Cursor_Kunde INTO @Konto_ID, @KontoStandAlt; -- go to record 1
	WHILE @@FETCH_STATUS = 0  
	BEGIN
		SET @KontoArt_Interval = dbo.sf_Input_Kont_ID_Output_KontoArt_Interval(@Konto_ID)
		SET @KontoArt_Kosten = dbo.sf_Input_Kont_ID_Output_KontoArt_Kosten(@Konto_ID)
		SET @KontoArt_Einheit = dbo.sf_Input_Kont_ID_Output_KontoArt_Einheit(@Konto_ID)
		SET @Bonitaet_Score = dbo.sf_Input_Kont_ID_Output_Bonitaet_Score(@Konto_ID)
		SET @KontoArt_ID = (SELECT [KontoArt_ID] FROM [Konto] WHERE [Konto_ID] = @Konto_ID)



	SET @Month_Char = FORMAT(@StartDT, 'MM')
	--SET @Month_Numeric = @Month_Char
	--SET @Month_Numeric = @Month_Numeric % 12
	--SET @Month_Char = @Month_Numeric




		-- Berechnung
		--SET @Month_Char = '9' --FORMAT(@StartDT, 'MM')
		SET @Month_Numeric = @Month_Char
		SET @Month_Numeric = @Month_Numeric % @KontoArt_Interval
		SET @Betrag = 0

		IF @Month_Numeric = 0
			IF @KontoArt_Einheit = 1 -- Euro
				BEGIN
					IF @KontoStandAlt >= 0
						SET @Betrag = -@KontoArt_Kosten
					ELSE -- Girokonto Dispokredit
						SET @Betrag = -((ABS(@KontoStandAlt) * @Bonitaet_Score/100.0 * @Dispokredit )) - @KontoArt_Kosten
				END
			ELSE
				IF @KontoArt_ID = 3 -- Kreditkartenkonto
					SET @Betrag = -(ABS(@KontoStandAlt) * @Bonitaet_Score/100.0 * @KontoArt_Kosten)
				ELSE -- Konto mit Erhalt von Zinsen
					SET @Betrag = (ABS(@KontoStandAlt) * @KontoArt_Kosten)



		SET @Month_Char = @Month_Numeric



		SET @KontoStandNeu = @KontoStandAlt + @Betrag

		--SET @KontoStandNeu = @Month_Char

		--IF @KontoArt_ID = 3 --AND @KontoArt_Einheit != 1
		--IF @KontoART_ID = 1
		--IF @Betrag > 0
		--PRINT '@Konto_ID: ' + CONVERT(nvarchar(2000), @Konto_ID) +
		--		' @KontoArt_Interval: ' + CONVERT(nvarchar(2), @KontoArt_Interval) +
		--		' @KontoArt_Kosten: ' + CONVERT(nvarchar(23), @KontoArt_Kosten) +
		--		' @KontoArt_Einheit: ' + CONVERT(nvarchar(1), @KontoArt_Einheit) +
		--		' @Bonitaet_Score ' + CONVERT(nvarchar(2), @Bonitaet_Score) +
		--		' @KontoStandAlt: ' + CONVERT(nvarchar(23), @KontoStandAlt) +
		--		' @KontoStandNeu: ' + CONVERT(nvarchar(23), @KontoStandNeu) +
		--		' @Betrag: ' + CONVERT(nvarchar(23), @Betrag) +
		--		' @Month_Char: ' + @Month_Char;

		-- Konto_ID von der MiniBank
		SET @Konto_ID_MiniBank = (SELECT [Konto_ID] FROM [Konto] WHERE (Kontonummer = '1000000001'))
		IF @Konto_ID != @Konto_ID_MiniBank
			-- MiniBank -> Kunde-A: Zinsen
			IF @Betrag > 0
				BEGIN
					PRINT 'MiniBank -> Kunde-A'
					SET @Betrag = -@Betrag
					-- IBAN von Kunde-A
					SET @IBAN_Gegenseite = dbo.sf_erstelle_IBAN_von_Kontonummer((SELECT [Kontonummer] FROM [Konto] WHERE (Konto_ID = @Konto_ID)), @BIC)
					EXEC [dbo].[sp_Ueberweisung] 
						@StartDT
						,@Betrag					--@Betrag: Kunde-A -> Kunde-B
						,'MiniBank -> Kunde-A'		--@Verwendungszweck
						,@Konto_ID_MiniBank			--@Konto_ID				
						,@IBAN_Gegenseite			--@IBAN_Gegenseite:  Kunde-B	
						,@BIC						--@BIC_Gegenseite			
						,'Zinsen-Test-4711'			--@Kommentar				
						----------
						,@Erfolg OUTPUT
						,@Feedback OUTPUT;

					PRINT 'Geklappt?: ' + CONVERT(nvarchar(1), @Erfolg) + 
						  ' Rückgabemeldung: ' + CONVERT(nvarchar(MAX), @Feedback) +
						  ' MiniBank -> Kunde-A';
				END
			ELSE IF @Betrag < 0
				BEGIN
					SET @IBAN_Gegenseite = dbo.sf_erstelle_IBAN_von_Kontonummer(1000000001, @BIC)
					-- Kunde-A -> MiniBank
					EXEC [dbo].[sp_Ueberweisung] 
						@StartDT
						,@Betrag					--@Betrag: Kunde-A -> Kunde-B
						,'Kunde-A -> MiniBank'		--@Verwendungszweck
						,@Konto_ID					--@Konto_ID				
						,@IBAN_Gegenseite			--@IBAN_Gegenseite:  Kunde-B	
						,@BIC						--@BIC_Gegenseite			
						,'Kontogebühren-Test-4711'	--@Kommentar				
						----------
						,@Erfolg OUTPUT
						,@Feedback OUTPUT;

					PRINT 'Geklappt?: ' + CONVERT(nvarchar(1), @Erfolg) + 
						  ' Rückgabemeldung: ' + CONVERT(nvarchar(MAX), @Feedback) +
						  ' Kunde-A -> MiniBank';
				END

		--IF @Betrag > 0
		--PRINT '@Konto_ID: ' + CONVERT(nvarchar(2000), @Konto_ID) +
		--		' @KontoArt_Interval: ' + CONVERT(nvarchar(2), @KontoArt_Interval) +
		--		' @KontoArt_Kosten: ' + CONVERT(nvarchar(23), @KontoArt_Kosten) +
		--		' @KontoArt_Einheit: ' + CONVERT(nvarchar(1), @KontoArt_Einheit) +
		--		' @Bonitaet_Score ' + CONVERT(nvarchar(2), @Bonitaet_Score) +
		--		' @KontoStandAlt: ' + CONVERT(nvarchar(23), @KontoStandAlt) +
		--		' @KontoStandNeu: ' + CONVERT(nvarchar(23), @KontoStandNeu) +
		--		' @Betrag: ' + CONVERT(nvarchar(23), @Betrag) +
		--		' @Modulo: ' + @Month_Char;

		FETCH NEXT FROM Cursor_Kunde INTO @Konto_ID, @KontoStandAlt;   -- go to next record
	END
	PRINT --CONVERT(VARCHAR,@StartDT) + '---' + 
		--convert(varchar,DATEADD(MONTH,1,@StartDT)) + '-----' + 
		FORMAT(@StartDT, 'dd.MM.yyyy') -- HH:mm:ss') + '-----' +
		--FORMAT(@StartDT, 'MM') + '-----' +
		--@Month_Char + '-----' +
		--CONVERT(VARCHAR, @Datum)
PRINT ' --------Ende------------';
CLOSE Cursor_Kunde;
DEALLOCATE Cursor_Kunde; --Arbeitsspeicher freigeben

	SET @StartDT = DATEADD(MONTH,1,@StartDT)
END
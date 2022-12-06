USE [MiniBank]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eugen Gromow
-- Create date: 31.08.2022
-- Description:	
-- =============================================
CREATE OR ALTER FUNCTION sf_erstelle_IBAN_von_Kontonummer
(
	@Kontonummer	BIGINT,
	@BIC			CHAR(11)
)
RETURNS VARCHAR(22) -- IBAN
AS
BEGIN
	-- Declare the return variable here
	DECLARE @IBAN						VARCHAR(22),
			@Kontonummer_Char			CHAR(10),
			@Pruefsumme					NUMERIC(2,0),
			@Pruefsumme_Char			CHAR(2),
			@IBAN_BLZ_KTONR				CHAR(18),
			@IBAN_Validierung_Char		CHAR(24),
			@IBAN_Validierung_Numeric	NUMERIC(24,0),
			@Pruefe						NUMERIC(2,0);

	--SET @Sortierung
	-- Add the T-SQL statements to compute the return value here
	-- Numeric in String umwandeln
	SET @Kontonummer_Char = CAST(@Kontonummer AS CHAR(10))
	SET @IBAN_BLZ_KTONR = CAST((SELECT [BLZ] FROM [MiniBankFiliale] WHERE [BIC] = @BIC) AS CHAR(8)) + @Kontonummer_Char

	IF (ISNUMERIC(@IBAN_BLZ_KTONR) = 1)
		BEGIN
			SET @IBAN_Validierung_Char = @IBAN_BLZ_KTONR + '131400'
			-- String in Numeric umwandeln
			SET @IBAN_Validierung_Numeric = @IBAN_Validierung_Char
			SET @Pruefe = @IBAN_Validierung_Numeric % 97
			SET @Pruefsumme = 98 - @Pruefe
			-- Numeric in String umwandeln
			SET @Pruefsumme_Char = RIGHT('0' +  CAST(@Pruefsumme AS varchar), 2)
			SET @IBAN = 'DE' + @Pruefsumme_Char + @IBAN_BLZ_KTONR
		END

	-- Return the result of the function
	RETURN @IBAN

END
GO
USE [MiniBank]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eugen Gromow
-- Create date: 30.08.2022
-- Description:	
-- =============================================
CREATE OR ALTER FUNCTION sf_IBAN_Validierung
(
	@IBAN varchar(22)
)
RETURNS BIT -- 0 IBAN inkorrekt
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Validierung 				BIT,
			@Pruefsumme 				CHAR(2),
			@IBAN_BLZ_KTONR 			CHAR(18),
			@IBAN_Validierung_Char 		CHAR(24),
			@IBAN_Validierung_Numeric 	NUMERIC(24,0),
			@Pruefe 					numeric(2,0);

	--SET @Sortierung
	-- Add the T-SQL statements to compute the return value here
	SET @Pruefsumme = SUBSTRING(@IBAN, 3, 2)
	SET @IBAN_BLZ_KTONR = SUBSTRING(@IBAN, 5, 18)
	IF (ISNUMERIC(@Pruefsumme) = 1) AND (ISNUMERIC(@IBAN_BLZ_KTONR) = 1)
		BEGIN
			SET @IBAN_Validierung_Char = @IBAN_BLZ_KTONR + '1314' + @Pruefsumme
			--String in Numeric umwandeln
			SET @IBAN_Validierung_Numeric = @IBAN_Validierung_Char
			SET @Pruefe = @IBAN_Validierung_Numeric % 97
		END

	IF @Pruefe = 1
		SET @Validierung = 1
	ELSE
		SET @Validierung = 0
	-- Return the result of the function
	RETURN @Validierung

END
GO
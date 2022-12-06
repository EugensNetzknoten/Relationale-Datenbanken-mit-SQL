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
CREATE OR ALTER FUNCTION sf_IBAN_von_Tabelle_Kunde
(
	@IBAN varchar(22)
)
RETURNS BIT -- 0 Kontonummer ist nicht aus Tabelle Kunde
AS
BEGIN
	-- Declare the return variable here
	DECLARE @IBAN_von_Tabelle_Kunde BIT,
			@IBAN_KTONR_Char CHAR(10),
			@Counter BIGINT;

	--SET @Sortierung
	-- Add the T-SQL statements to compute the return value here
	SET @IBAN_KTONR_Char = SUBSTRING(@IBAN, 13, 10)
	SET @Counter =
		(
		SELECT COUNT(*)
		FROM [Konto]
		WHERE [Kontonummer] = @IBAN_KTONR_Char
		)

	IF @Counter > 0
		SET @IBAN_von_Tabelle_Kunde = 1
	ELSE
		SET @IBAN_von_Tabelle_Kunde = 0
	-- Return the result of the function
	RETURN @IBAN_von_Tabelle_Kunde

END
GO
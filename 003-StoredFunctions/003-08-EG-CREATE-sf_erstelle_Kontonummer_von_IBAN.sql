USE [MiniBank]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		EugensNetzknoten
-- Create date: 31.08.2022
-- Description:	
-- =============================================
CREATE OR ALTER FUNCTION sf_erstelle_Kontonummer_von_IBAN
(
	@IBAN varchar(22)
)
RETURNS CHAR(10) -- Kontonummer
AS
BEGIN
	-- Declare the return variable here
	DECLARE @KTONR_Char CHAR(10);

	--SET @Sortierung
	-- Add the T-SQL statements to compute the return value here
	SET @KTONR_Char = SUBSTRING(@IBAN, 13, 10)

	-- Return the result of the function
	RETURN @KTONR_Char

END
GO
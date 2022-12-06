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
CREATE OR ALTER FUNCTION [sf_Ueberweisung_Konto_ID_in_Kunden]
(
	@Konto_ID INT
)
RETURNS BIT -- 0 Konto_ID ist nicht in der Tabelle Kunde vorhanden
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Konto_ID_von_Kunde BIT;

	--SET @Sortierung
	-- Add the T-SQL statements to compute the return value here
	SET @Konto_ID_von_Kunde =
		(
		SELECT COUNT(*)
		FROM [Konto]
		WHERE [Konto_ID] = @Konto_ID
		)
	-- Return the result of the function
	RETURN @Konto_ID_von_Kunde

END
GO
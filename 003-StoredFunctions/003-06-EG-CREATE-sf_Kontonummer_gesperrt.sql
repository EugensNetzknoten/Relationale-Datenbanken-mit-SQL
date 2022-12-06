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
CREATE OR ALTER FUNCTION [sf_Kontonummer_gesperrt]
(
	@Kontonummer BIGINT
)
RETURNS BIT
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Konto_ID_gesperrt BIT;

	-- Add the T-SQL statements to compute the return value here
	SET @Konto_ID_gesperrt = 
	(
		SELECT Gesperrt
		FROM Konto
		WHERE Kontonummer = @Kontonummer
	);
	
	-- Return the result of the function
	RETURN @Konto_ID_gesperrt;

END
GO


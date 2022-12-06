USE [MiniBank]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		EugensNetzknoten
-- Create date: 01.09.2022
-- Description:	
-- =============================================
CREATE OR ALTER FUNCTION [sf_Input_Kont_ID_Output_Bonitaet_Score]
(
	@Konto_ID INT
)
RETURNS TINYINT -- KontoArt Einheit
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Bonitaet_Score		TINYINT,
		    @Bonitaet_ID		INT;

	--SET @Sortierung
	-- Add the T-SQL statements to compute the return value here
	SET @Bonitaet_ID =
		(
		SELECT [Bonitaet_ID]
		FROM [Konto]
		WHERE [Konto_ID] = @Konto_ID
		)

	SET @Bonitaet_Score =
		(
		SELECT [Score]
		FROM [Bonitaet]
		WHERE [Bonitaet_ID] = @Bonitaet_ID
		)

	-- Return the result of the function
	RETURN @Bonitaet_Score

END
GO
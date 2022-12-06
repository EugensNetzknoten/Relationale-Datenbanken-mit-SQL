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
CREATE OR ALTER FUNCTION [sf_Input_Kont_ID_Output_KontoArt_Kosten]
(
	@Konto_ID INT
)
RETURNS DECIMAL(19,4) -- KontoArt Kosten
AS
BEGIN
	-- Declare the return variable here
	DECLARE @KontoArt_Kosten	DECIMAL(19,4),
		    @KontoArt_ID		INT;

	--SET @Sortierung
	-- Add the T-SQL statements to compute the return value here
	SET @KontoArt_ID =
		(
		SELECT [KontoArt_ID]
		FROM [Konto]
		WHERE [Konto_ID] = @Konto_ID
		)

	SET @KontoArt_Kosten =
		(
		SELECT [Kosten]
		FROM [KontoArt]
		WHERE [KontoArt_ID] = @KontoArt_ID
		)

	-- Return the result of the function
	RETURN @KontoArt_Kosten

END
GO
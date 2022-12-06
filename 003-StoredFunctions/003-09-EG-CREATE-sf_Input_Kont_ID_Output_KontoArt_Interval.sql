USE [MiniBank]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eugen Gromow
-- Create date: 01.09.2022
-- Description:	
-- =============================================
CREATE OR ALTER FUNCTION [sf_Input_Kont_ID_Output_KontoArt_Interval]
(
	@Konto_ID INT
)
RETURNS TINYINT -- KontoArt Interval
AS
BEGIN
	-- Declare the return variable here
	DECLARE @KontoArt_Interval	TINYINT,
		    @KontoArt_ID		INT;

	--SET @Sortierung
	-- Add the T-SQL statements to compute the return value here
	SET @KontoArt_ID =
		(
		SELECT [KontoArt_ID]
		FROM [Konto]
		WHERE [Konto_ID] = @Konto_ID
		)

	SET @KontoArt_Interval =
		(
		SELECT [Interval]
		FROM [KontoArt]
		WHERE [KontoArt_ID] = @KontoArt_ID
		)

	-- Return the result of the function
	RETURN @KontoArt_Interval

END
GO
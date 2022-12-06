USE [MiniBank]
GO

SELECT dbo.sf_Input_Kont_ID_Output_KontoArt_Interval(1)

SELECT dbo.sf_Input_Kont_ID_Output_KontoArt_Interval(600)


SELECT [Konto_ID], dbo.sf_Input_Kont_ID_Output_KontoArt_Interval([Konto_ID]) AS Interval
FROM [Ueberweisung]

--SELECT [Ueberweisung_ID], [Konto_ID], dbo.sf_Input_Kont_ID_Output_KontoArt_Interval([Konto_ID]) AS Interval
--FROM [Ueberweisung]
--WHERE dbo.sf_Input_Kont_ID_Output_KontoArt_Interval([Konto_ID]) >= 1



SELECT [Konto_ID], [KontoArt_ID], dbo.sf_Input_Kont_ID_Output_KontoArt_Interval([Konto_ID]) AS Interval
FROM [Konto]
ORDER BY [Konto_ID]
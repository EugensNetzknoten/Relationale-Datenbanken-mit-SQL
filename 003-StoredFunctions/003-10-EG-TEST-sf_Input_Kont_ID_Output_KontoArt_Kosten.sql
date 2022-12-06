USE [MiniBank]
GO

SELECT dbo.sf_Input_Kont_ID_Output_KontoArt_Kosten(1)

SELECT dbo.sf_Input_Kont_ID_Output_KontoArt_Kosten(600)


SELECT [Konto_ID], dbo.sf_Input_Kont_ID_Output_KontoArt_Kosten([Konto_ID]) AS Kosten
FROM [Ueberweisung]

--SELECT [Ueberweisung_ID], [Konto_ID], dbo.sf_Input_Kont_ID_Output_KontoArt_Kosten([Konto_ID]) AS Kosten
--FROM [Ueberweisung]
--WHERE dbo.sf_Input_Kont_ID_Output_KontoArt_Kosten([Konto_ID]) >= 1



SELECT [Konto_ID], [KontoArt_ID], dbo.sf_Input_Kont_ID_Output_KontoArt_Kosten([Konto_ID]) AS Kosten
FROM [Konto]
ORDER BY [Konto_ID]
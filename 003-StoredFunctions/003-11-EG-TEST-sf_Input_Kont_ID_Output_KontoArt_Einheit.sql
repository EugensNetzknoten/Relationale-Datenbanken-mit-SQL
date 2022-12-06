USE [MiniBank]
GO

SELECT dbo.sf_Input_Kont_ID_Output_KontoArt_Einheit(1)

SELECT dbo.sf_Input_Kont_ID_Output_KontoArt_Einheit(600)


SELECT [Konto_ID], dbo.sf_Input_Kont_ID_Output_KontoArt_Einheit([Konto_ID]) AS Einheit
FROM [Ueberweisung]

--SELECT [Ueberweisung_ID], [Konto_ID], dbo.sf_Input_Kont_ID_Output_KontoArt_Einheit([Konto_ID]) AS Einheit
--FROM [Ueberweisung]
--WHERE dbo.sf_Input_Kont_ID_Output_KontoArt_Einheit([Konto_ID]) >= 1



SELECT [Konto_ID], [KontoArt_ID], dbo.sf_Input_Kont_ID_Output_KontoArt_Einheit([Konto_ID]) AS Einheit
FROM [Konto]
ORDER BY [Konto_ID]
USE [MiniBank]
GO

SELECT dbo.sf_Input_Kont_ID_Output_Bonitaet_Score(1)

SELECT dbo.sf_Input_Kont_ID_Output_Bonitaet_Score(600)


SELECT [Konto_ID], dbo.sf_Input_Kont_ID_Output_Bonitaet_Score([Konto_ID]) AS Score
FROM [Ueberweisung]

--SELECT [Ueberweisung_ID], [Konto_ID], dbo.sf_Input_Kont_ID_Output_Bonitaet_Score([Konto_ID]) AS Score
--FROM [Ueberweisung]
--WHERE dbo.sf_Input_Kont_ID_Output_Bonitaet_Score([Konto_ID]) >= 1



SELECT [Konto_ID], [Bonitaet_ID], dbo.sf_Input_Kont_ID_Output_Bonitaet_Score([Konto_ID]) AS Score
FROM [Konto]
ORDER BY [Konto_ID]
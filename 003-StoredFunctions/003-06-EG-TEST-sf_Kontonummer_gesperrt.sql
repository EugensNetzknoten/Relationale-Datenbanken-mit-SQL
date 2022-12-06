USE [MiniBank]
GO

SELECT dbo.sf_Kontonummer_gesperrt(1)

SELECT dbo.sf_Kontonummer_gesperrt(4976897169)

SELECT dbo.sf_Kontonummer_gesperrt(5876897169)


SELECT [Kontonummer], dbo.sf_Kontonummer_gesperrt([Kontonummer]) AS Gesperrt
	FROM [Konto]

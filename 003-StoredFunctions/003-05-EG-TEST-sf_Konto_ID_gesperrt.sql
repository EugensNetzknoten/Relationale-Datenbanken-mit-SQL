USE [MiniBank]
GO

SELECT dbo.sf_Konto_ID_gesperrt(1)

SELECT dbo.sf_Konto_ID_gesperrt(600)


SELECT [Konto_ID], dbo.sf_Konto_ID_gesperrt([Konto_ID]) AS Validierung
FROM [Ueberweisung]

SELECT [Ueberweisung_ID], [Konto_ID], dbo.sf_Konto_ID_gesperrt([Konto_ID]) AS Validierung
FROM [Ueberweisung]
WHERE dbo.sf_Konto_ID_gesperrt([Konto_ID]) >= 1



SELECT [Konto_ID], dbo.sf_Konto_ID_gesperrt([Konto_ID]) AS Validierung
	FROM [Konto]

USE [MiniBank]
GO

SELECT dbo.sf_Ueberweisung_Konto_ID_in_Kunden(1)

SELECT dbo.sf_Ueberweisung_Konto_ID_in_Kunden(600)

SELECT [Konto_ID], dbo.sf_Ueberweisung_Konto_ID_in_Kunden([Konto_ID]) AS Validierung
	FROM [Ueberweisung]

SELECT [Konto_ID], dbo.sf_Ueberweisung_Konto_ID_in_Kunden([Konto_ID]) AS Validierung
	FROM [Konto]

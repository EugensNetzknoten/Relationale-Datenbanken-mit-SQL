USE [MiniBank]
GO

SELECT dbo.sf_IBAN_von_Tabelle_Kunde('DE57455698539847400919')

SELECT dbo.sf_IBAN_von_Tabelle_Kunde('DE89100600009999999999')


SELECT [IBAN_Gegenseite], dbo.sf_IBAN_von_Tabelle_Kunde([IBAN_Gegenseite]) AS Validierung
	FROM [Ueberweisung]
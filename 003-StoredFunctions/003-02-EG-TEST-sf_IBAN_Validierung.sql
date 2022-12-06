USE [MiniBank]
GO

SELECT dbo.sf_IBAN_Validierung('XY63718114376383208524')

SELECT [IBAN_Gegenseite], dbo.sf_IBAN_Validierung([IBAN_Gegenseite]) AS Validierung
	FROM [Ueberweisung]

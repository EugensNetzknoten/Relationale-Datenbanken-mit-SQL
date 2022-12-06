USE [MiniBank]
GO

SELECT dbo.sf_erstelle_Kontonummer_von_IBAN('XY63718114376383208524')

SELECT [IBAN_Gegenseite], dbo.sf_erstelle_Kontonummer_von_IBAN([IBAN_Gegenseite]) AS Kontonummer
	FROM [Ueberweisung]


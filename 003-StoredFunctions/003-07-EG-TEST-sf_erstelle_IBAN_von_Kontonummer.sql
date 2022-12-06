USE [MiniBank]
GO

DECLARE @BIC CHAR(11);
SET @BIC = (SELECT [BIC] FROM [MiniBank].[dbo].[MiniBankFiliale] WHERE [Filial_ID] = 1)


--SELECT dbo.sf_erstelle_IBAN_von_Kontonummer(1)

--SELECT dbo.sf_erstelle_IBAN_von_Kontonummer(4976897169, @BIC)

--SELECT dbo.sf_erstelle_IBAN_von_Kontonummer(5876897169, @BIC)

--SELECT dbo.sf_erstelle_IBAN_von_Kontonummer(6643554845, @BIC)

--SELECT dbo.sf_erstelle_IBAN_von_Kontonummer(2346877021, @BIC)

SELECT [Kontonummer], [Gesperrt], dbo.sf_erstelle_IBAN_von_Kontonummer([Kontonummer], @BIC) AS IBAN
	FROM [Konto]

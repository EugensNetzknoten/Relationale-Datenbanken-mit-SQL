USE [MiniBank]
GO

--SELECT dbo.tf_ent_ge_sperrte_Kontoarten_Grenze(1)

SELECT *
FROM dbo.tf_ent_ge_sperrte_Kontoarten_Grenze('Girokonto', 10000, 0)

SELECT *
FROM dbo.tf_ent_ge_sperrte_Kontoarten_Grenze('Girokonto', -95, 0)
USE [MiniBank]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		EugensNetzknoten
-- Create date: 30.08.2022
-- Description:	entsperrte oder gesperrte Kontoarten unter gewissem KontoStand
-- =============================================
CREATE OR ALTER FUNCTION [tf_ent_ge_sperrte_Kontoarten_Grenze]
(	
	@KontoArtBezeichnung NVARCHAR(50),
	@KontoStand DECIMAL(19,4),
	@Gesperrt BIT
	--,@kleiner_groesser BIT
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT TOP (100) PERCENT 
		dbo.Konto.KontoStand, 
		dbo.Kunden.Nachname, 
		dbo.Kunden.Vorname, 
		dbo.Kunden.Kundennummer
	FROM [Konto]
		INNER JOIN dbo.KontoBesitzer 
			ON dbo.Konto.Konto_ID = dbo.KontoBesitzer.Konto_ID 
		INNER JOIN dbo.Kunden 
			ON dbo.KontoBesitzer.Kunden_ID = dbo.Kunden.Kunden_ID 
		INNER JOIN dbo.KontoArt 
			ON dbo.Konto.KontoArt_ID = dbo.KontoArt.KontoArt_ID
	WHERE (dbo.KontoArt.Bezeichnung = @KontoArtBezeichnung) 
		AND (dbo.Konto.KontoStand <= @KontoStand)
		--AND (iif(@kleiner_groesser, (dbo.Konto.KontoStand <= @KontoStand),  (dbo.Konto.KontoStand >= @KontoStand)))
		AND (dbo.Konto.Gesperrt = @Gesperrt)
	ORDER BY dbo.KontoArt.Bezeichnung, dbo.Konto.KontoStand, dbo.Kunden.Nachname, dbo.Kunden.Vorname
)
GO

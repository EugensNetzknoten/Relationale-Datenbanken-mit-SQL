USE [MiniBank]
GO

----------------------------------------------------------------------------------------------------------------
INSERT INTO [dbo].[Kunden]
           ([Kundennummer]
           ,[Nachname]
           ,[Vorname]
           ,[GeburtsDatum]
           ,[Land]
           ,[Ort]
           ,[PLZ]
           ,[Strasse]
           ,[Hausnummer])
     VALUES
			(1234567891 --<Kundennummer, nchar(10),>
           ,'TestNachname'--,<Nachname, nvarchar(50),>
           ,'TestVorname'--,<Vorname, nvarchar(50),>
           ,'30.08.2000'--,<GeburtsDatum, date,>
           ,'Deutschland'--,<Land, nvarchar(50),>
           ,'Berlin'--,<Ort, varchar(50),>
           ,'12345'--,<PLZ, char(5),>
           ,'TestStrasse'--,<Strasse, nvarchar(50),>
           ,'1t'--,<Hausnummer, nvarchar(20),>
           --,<Telefon, nvarchar(50),>
           --,<Mobil, nvarchar(150),>
           --,<Kommentar, ntext,>
		   ),
           (1234567892 --<Kundennummer, nchar(10),>
           ,'ATestNachname'--,<Nachname, nvarchar(50),>
           ,'ATestVorname'--,<Vorname, nvarchar(50),>
           ,'30.08.2000'--,<GeburtsDatum, date,>
           ,'Deutschland'--,<Land, nvarchar(50),>
           ,'Berlin'--,<Ort, varchar(50),>
           ,'12345'--,<PLZ, char(5),>
           ,'TestStrasse'--,<Strasse, nvarchar(50),>
           ,'1t'--,<Hausnummer, nvarchar(20),>
           --,<Telefon, nvarchar(50),>
           --,<Mobil, nvarchar(150),>
           --,<Kommentar, ntext,>
		   )
GO



----------------------------------------------------------------------------------------------------------------
INSERT INTO [dbo].[Kunden]
           ([Kundennummer]
           ,[Nachname]
           ,[Vorname]
           ,[GeburtsDatum]
           ,[Land]
           ,[Ort]
           ,[PLZ]
           ,[Strasse]
           ,[Hausnummer]
		   ,[Telefon]
		   ,[Mobil]
		   ,[Kommentar])
     VALUES
			(0000000001 --<Kundennummer, nchar(10),>
           ,'CEO'--,<Nachname, nvarchar(50),>
           ,'Boss'--,<Vorname, nvarchar(50),>
           ,'30.08.2022'--,<GeburtsDatum, date,>
           ,'Deutschland'--,<Land, nvarchar(50),>
           ,'Berlin'--,<Ort, varchar(50),>
           ,'12345'--,<PLZ, char(5),>
           ,'Augsburgerstraße'--,<Strasse, nvarchar(50),>
           ,'28'--,<Hausnummer, nvarchar(20),>
           ,'030 306-9368'--,<Telefon, nvarchar(50),>
           ,'+49 (6542) 589408' --,<Mobil, nvarchar(150),>
           ,'MiniBankFiliale als Kunde'--,<Kommentar, ntext,>
		   )
GO

-----[Konto]----------------------------------------------------------------------------------------------------------
INSERT INTO [dbo].[Konto]
           ([Kontonummer]
           ,[EingerichtetAm]
           ,[KontoStand]
           ,[KontoStandErlaubt]
           ,[Gesperrt]
           ,[Filial_ID]
           ,[KontoArt_ID]
           ,[Bonitaet_ID]
           ,[Kommentar])
     VALUES
           (1000000001		--<Kontonummer, bigint,>
           ,'31.08.2022'	--,<EingerichtetAm, datetime,>
           ,0				--,<KontoStand, decimal(19,4),>
           ,-5000000		--,<KontoStandErlaubt, decimal(19,4),>
           ,0				--,<Gesperrt, bit,>
           ,1				--<Filial_ID, int,>
           ,1				--<KontoArt_ID, int,>
           ,1				--<Bonitaet_ID, int,>
           ,'MiniBankFiliale eigenes Konto'	--<Kommentar, ntext,>
		   )
GO
-- Update Tabelle [Konto] Spalte [KontoArt_ID]-----------------------------------------------------------------
DECLARE @myVar INT,
		@KTOerlaubt DECIMAL(19,4)
SET @myVar = 0
SET @KTOerlaubt = 0
UPDATE [dbo].[Konto]
	SET  @myvar = [KontoArt_ID] = @myVar + 1
		,@KTOerlaubt = [KontoStandErlaubt] = @KTOerlaubt - 750
 WHERE [Konto_ID] <= 4


SET @myVar = 0
SET @KTOerlaubt = 0
UPDATE [dbo].[Konto]
	SET  @myvar = [KontoArt_ID] = @myVar + 1
		,@KTOerlaubt = [KontoStandErlaubt] = @KTOerlaubt - 750
 WHERE [Konto_ID] BETWEEN 5 AND 7


SET @myVar = 0
SET @KTOerlaubt = 0
UPDATE [dbo].[Konto]
	SET  @myvar = [KontoArt_ID] = @myVar + 1
		,@KTOerlaubt = [KontoStandErlaubt] = @KTOerlaubt - 750
 WHERE [Konto_ID] BETWEEN 8 AND 10
GO




--(SELECT [Konto_ID]
--  FROM [Konto]
--  WHERE	[Kontonummer] = 1000000001)



--(SELECT [Kunden_ID]
--  FROM [Kunden]
--  WHERE [Kundennummer] = '1')

----------------------------------------------------------------------------------------------------------------
INSERT INTO [dbo].[KontoBesitzer]
           ([Kunden_ID]
           ,[Konto_ID])
     VALUES
           ((SELECT [Kunden_ID] FROM [Kunden] WHERE [Kundennummer] = '1')
           ,(SELECT [Konto_ID] FROM [Konto] WHERE [Kontonummer] = 1000000001))
GO




-- Update Tabelle [Bonitaet] Bei Fehler Eine Zeile mit doppeltem Schlüssel kann in....:-> mehrmals Tabelle [Bonitaet] aktualisieren-----------------------------------------------------------------------------------
UPDATE [dbo].[Bonitaet]
   SET [Score] = 97
      ,[Bezeichnung] = 'Sehr geringes Risiko'
 WHERE [Bonitaet_ID] = 1
GO

UPDATE [dbo].[Bonitaet]
   SET [Score] = 95
      ,[Bezeichnung] = 'Geringes bis überschaubares Risiko'
 WHERE [Bonitaet_ID] = 2
GO

UPDATE [dbo].[Bonitaet]
   SET [Score] = 90
      ,[Bezeichnung] = 'Zufriedenstellendes bis erhöhtes Risiko'
 WHERE [Bonitaet_ID] = 3
GO

UPDATE [dbo].[Bonitaet]
   SET [Score] = 80
      ,[Bezeichnung] = 'Deutlich erhöhtes bis hohes Risiko'
 WHERE [Bonitaet_ID] = 4
GO

UPDATE [dbo].[Bonitaet]
   SET [Score] = 50
      ,[Bezeichnung] = 'Sehr hohes Risiko'
 WHERE [Bonitaet_ID] = 5
GO

UPDATE [dbo].[Bonitaet]
   SET [Score] = 49
      ,[Bezeichnung] = 'Sehr kritisches Risiko'
 WHERE [Bonitaet_ID] = 6
GO






-- Update Tabelle [KontoArt]-----------------------------------------------------------------------------------
UPDATE [dbo].[KontoArt]
   SET [Einheit] = 1
      ,[Kosten] = 3.5
	  ,[Interval] = 1
 WHERE [Bezeichnung] = 'Girokonto'
GO

UPDATE [dbo].[KontoArt]
   SET [Interval] = 3
      ,[Kosten] = 0.02
 WHERE [Bezeichnung] = 'Sparkonto'
GO

UPDATE [dbo].[KontoArt]
   SET [Interval] = 6
      ,[Kosten] = 0.07
 WHERE [Bezeichnung] = 'Kreditkartenkonto'
GO

UPDATE [dbo].[KontoArt]
   SET [Interval] = 12
      ,[Kosten] = 0.03
 WHERE [Bezeichnung] = 'Depotkonto'
GO

UPDATE [dbo].[KontoArt]
   SET [Interval] = 12
      ,[Kosten] = 0.018
 WHERE [Bezeichnung] = 'Festgeldkonto'
GO

UPDATE [dbo].[KontoArt]
   SET [Interval] = 12
      ,[Kosten] = 0.001
 WHERE [Bezeichnung] = 'Tagesgeldkonto'
GO


-- Inserting data into table dbo.Ueberweisung
SET IDENTITY_INSERT dbo.Ueberweisung ON
GO
INSERT dbo.Ueberweisung(Ueberweisung_ID, Betrag, Verwendungszweck, Konto_ID, IBAN_Gegenseite, BIC_Gegenseite, KontoStandAlt, KontoStandNeu, Kommentar) VALUES
(1,  -822.7352, N'Kauf ABCXYZ Kauf R.-Nr. dir Snickers. dir ein Kauf ein ein Snickers. Kauf', 6, 'DE50943373813734703481', 'BELADEBLALA', -999999999999999, 0, NULL),
(2, -3.074, NULL, 9, 'DE49286249712889059028', 'YJDADEZENMW', -999999999999997, 3, N''),
(3, 651.8295, N'', 5, 'DE63718114376383208524', 'YJDADEZENMW', -999999999999995, 6, N'ist Dies Dies ein ein ist Dies Kommentar. ein Dies Dies Kommentar. Kommentar. ein Kommentar. zufaelliger Kommentar. ist zufaelliger Dies ein Kommentar. ein Kommentar. ist zufaelliger ist Dies Dies Kommentar. zufaelliger ist zufaelliger zufaelliger zufaelliger Kommentar. Kommentar. zufaelliger ein Dies Kommentar. zufaelliger Dies ist zufaelliger Kommentar. Kommentar. ein Kommentar. Dies ein zufaelliger ist Dies ein ein zufaelliger zufaelliger ist zufaelliger Dies ist Kommentar. zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. ist Kommentar. ein ist zufaelliger ein Kommentar. Kommentar. ein ist ist ein ist Dies Dies Dies Dies ist Dies Kommentar. zufaelliger zufaelliger ist ist zufaelliger zufaelliger ist ist ist ein ein zufaelliger ein Kommentar. zufaelliger Dies Dies ist ein Kommentar. ist Kommentar. Dies Kommentar. ein Kommentar. Dies Dies ist ein ein ist Dies ein Kommentar. Kommentar. ist ein ein Dies ein Dies ist Dies Dies ein ist ein ist zufaelliger ist ein zufaelliger Kommentar. Dies Kommentar. ein ein Dies Dies ein ein Kommentar. zufaelliger Kommentar. Dies Dies Kommentar. ein ist Dies Dies zufaelliger Dies ist Dies Kommentar. Kommentar. ein ist zufaelliger ist Kommentar. Dies ist ist Dies Dies ein ist zufaelliger zufaelliger Dies ein Dies ist Kommentar. ein Kommentar. ist ein ist ist Kommentar. Kommentar. ist Kommentar. zufaelliger ist zufaelliger Dies Dies Kommentar. ein zufaelliger Kommentar. ein zufaelliger zufaelliger zufaelliger ein Dies ist Kommentar. ein Dies Kommentar. Kommentar. zufaelliger Kommentar. ein zufaelliger zufaelliger Dies Kommentar. ein ist Dies Kommentar. zufaelliger Dies Kommentar. ein ein zufaelliger ein ist Kommentar. zufaelliger Dies ein Dies ist ist ist ist Dies Kommentar. ist ist Dies ist Dies Dies Kommentar. ein Dies ist zufaelliger Kommentar. ein ist ein ein ein ein Dies ist ist ein Dies ein Kommentar. ein ein ein Dies zufaelliger ist zufaelliger Kommentar. Kommentar. ist Kommentar. ein Kommentar. ein zufaelliger ein Dies zufaelliger ist zufaelliger ist ein ein Kommentar. Dies Dies Kommentar. zufaelliger zufaelliger ein Dies ist ein zufaelliger ein Dies ein Kommentar. Kommentar. ist ist Dies zufaelliger Dies ist ist ein Kommentar. Dies ein ein Kommentar. zufaelliger Dies ist zufaelliger zufaelliger Kommentar. Kommentar. Kommentar. ist ein ist ein ist Dies zufaelliger Kommentar. ein Dies Dies Kommentar. ist ist Dies ein Dies Dies ein zufaelliger zufaelliger Kommentar. ein ist zufaelliger ein zufaelliger Dies ein zufaelliger ein ein ein Dies Dies Dies ein zufaelliger ein Kommentar. Dies ein Kommentar. ein ist zufaelliger Kommentar. Kommentar. zufaelliger ist ist zufaelliger Dies zufaelliger Dies ein Kommentar. ein zufaelliger zufaelliger Dies Kommentar. Dies ist zufaelliger'),
(4, -201.3773, N'', 9, 'DE21757524349408276217', 'YJDADEZENMW', -999999999999993, 9, N'Dies ein Kommentar. ist ein Kommentar. Kommentar. Dies zufaelliger zufaelliger ein ist Dies Kommentar. zufaelliger ist zufaelliger ein zufaelliger ist Dies ist ist zufaelliger zufaelliger Dies zufaelliger ein zufaelliger ein ist zufaelliger zufaelliger ein Dies ein Dies zufaelliger Dies ist ist ist zufaelliger ist Kommentar. ist Dies zufaelliger ist ist ein ist ein Kommentar. ist Dies ist zufaelliger Kommentar. ein zufaelliger ein ist Kommentar. ist ist ist ein Kommentar. Dies Dies Kommentar. ist ein zufaelliger zufaelliger zufaelliger zufaelliger ein Kommentar. ein Kommentar. ein Kommentar. Kommentar. ein zufaelliger zufaelliger ist zufaelliger ist Dies Kommentar. Kommentar. zufaelliger ist zufaelliger ein Dies zufaelliger Dies ein zufaelliger Dies Kommentar. Dies Dies zufaelliger zufaelliger zufaelliger zufaelliger Dies Kommentar. Kommentar. ist ein Dies Dies ist ein ein ist ist Dies Dies ein Kommentar. zufaelliger Kommentar. ist ist zufaelliger Kommentar. Dies ist zufaelliger Kommentar. zufaelliger Dies ein ist Dies Kommentar. ein zufaelliger ist ist Dies Kommentar. Kommentar. ist ist ist zufaelliger ist ist Kommentar. ein ein zufaelliger ein ein ein zufaelliger ein ist zufaelliger ein Kommentar. Dies ist Kommentar. ein zufaelliger ein Dies Dies ist ein zufaelliger Kommentar. Kommentar. Dies Dies Kommentar. Kommentar. Kommentar. ein Kommentar. Kommentar. ist ist ein Kommentar. zufaelliger Kommentar. ist Kommentar. zufaelliger zufaelliger Dies Kommentar. zufaelliger Dies Kommentar. ist Kommentar. Kommentar. Kommentar. ist zufaelliger Kommentar. zufaelliger Dies ist zufaelliger Kommentar. ein Kommentar. ein ist ist Kommentar. Kommentar. ist ein ein ein zufaelliger ist zufaelliger zufaelliger ist Kommentar. ist ist zufaelliger zufaelliger Kommentar. Kommentar. ein ein Kommentar. ein ist ist Kommentar. Dies ein ist zufaelliger Kommentar. ein Kommentar. Dies zufaelliger ein ein Kommentar. ein Kommentar. Kommentar. zufaelliger ein ist ist ein ist Kommentar. zufaelliger Kommentar. ein ist ein zufaelliger zufaelliger Dies ist ein ist ein ist Kommentar. ist ist ist ein ist ein ist ein Kommentar. zufaelliger Dies zufaelliger Kommentar. ist Dies ist Kommentar. Dies zufaelliger zufaelliger Kommentar. ist zufaelliger zufaelliger Dies zufaelliger Dies ein zufaelliger ist Dies ist Kommentar. ist Kommentar. Kommentar. ein zufaelliger zufaelliger zufaelliger Dies Kommentar. ein Dies ist ist zufaelliger ein ist ein ist ein Kommentar. Kommentar. ein ein Dies zufaelliger zufaelliger ist zufaelliger zufaelliger zufaelliger Dies Kommentar. Dies zufaelliger ist'),
(5, -141.369, N'ABCXYZ Snickers.', 9, 'DE17169112197990114341', 'FYIPURPZEWZ', -999999999999991, 12, N'Kommentar. Kommentar. ein ein Kommentar. Dies ein ein zufaelliger zufaelliger zufaelliger ist Kommentar. Kommentar. Dies ein ist ein Dies Kommentar. Kommentar. Kommentar. ist zufaelliger zufaelliger ein Kommentar. ein ist zufaelliger Kommentar. ein zufaelliger ist ein Kommentar. Dies Kommentar. ist Kommentar. zufaelliger ein zufaelliger ein Dies ist Kommentar. Dies zufaelliger Dies Kommentar. ein ist zufaelliger Dies ein zufaelliger ein ist Dies ist ist ist ein Kommentar. ein ein Kommentar. ist Dies ist Dies zufaelliger Kommentar. Dies ein ein zufaelliger ein ist Kommentar. ein zufaelliger Dies Kommentar. ein Kommentar. ein Kommentar. Kommentar. ist zufaelliger ein ist ein zufaelliger zufaelliger Dies ist ein Dies ein ein ein zufaelliger Kommentar. Dies ein ein ein zufaelliger Kommentar. ist Kommentar. ist ein ist zufaelliger zufaelliger zufaelliger zufaelliger ist zufaelliger ist ist Kommentar. ein Kommentar. ein ein ein ist ist zufaelliger ist ist')
GO
SET IDENTITY_INSERT dbo.Ueberweisung OFF
GO

-- Inkorekte IBAN
UPDATE [Ueberweisung]
	SET [IBAN_Gegenseite] = 'DE25604893770170612833'
WHERE Ueberweisung_ID = 1

UPDATE [Ueberweisung]
	SET [IBAN_Gegenseite] = 'DE17446171600020567203'
WHERE Ueberweisung_ID = 3
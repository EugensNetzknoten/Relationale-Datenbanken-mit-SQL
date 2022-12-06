USE [MiniBank];
GO

DROP TABLE IF EXISTS Ueberweisung;
GO

CREATE TABLE Ueberweisung
(
  Ueberweisung_ID			INT				IDENTITY(1,1) NOT NULL,
  DatumUhrzeit				DATETIME		NOT NULL DEFAULT CURRENT_TIMESTAMP,
  Betrag					DECIMAL(19,4)	NOT NULL, -- DECIMAL ist vielleicht besser als MONEY. Grund https://stackoverflow.com/questions/582797/should-you-choose-the-money-or-decimalx-y-datatypes-in-sql-server
  Verwendungszweck			NVARCHAR(140)	NULL,
  Konto_ID					INT				NOT NULL,
  IBAN_Gegenseite			CHAR(22)		NOT NULL,
  BIC_Gegenseite			CHAR(11)		NOT NULL,
  KontoStandAlt				DECIMAL(19,4)	NOT NULL,
  KontoStandNeu				DECIMAL(19,4)	NOT NULL,
  Kommentar					ntext			NULL
)
GO
-- Primärschlussel -----------------------
ALTER TABLE [dbo].[Ueberweisung] 
ADD CONSTRAINT [PK_Ueberweisung] PRIMARY KEY CLUSTERED 
(
	[Ueberweisung_ID] ASC
) 
------------------------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS Kunden;
GO

CREATE TABLE Kunden
(
  Kunden_ID			INT				IDENTITY(1,1) NOT NULL,
  Kundennummer		NCHAR(10)		NOT NULL,
  Nachname			NVARCHAR(50)	NOT NULL,
  Vorname			NVARCHAR(50)	NOT NULL,
  GeburtsDatum		DATE			NOT NULL,
  Land				NVARCHAR(50)	NOT NULL DEFAULT 'Deutschland',
  Ort				VARCHAR(50)		NOT NULL DEFAULT 'Berlin',
  PLZ				CHAR(5)         NOT NULL,
  Strasse			NVARCHAR(50)	NOT NULL,
  Hausnummer		NVARCHAR(20)	NOT NULL,
  Telefon			NVARCHAR(50)	NULL,
  Mobil				NVARCHAR(150)	NULL,
  Kommentar			ntext			NULL
)
GO
-- Primärschlussel -----------------------
ALTER TABLE [dbo].[Kunden] 
ADD CONSTRAINT [PK_Kunden] PRIMARY KEY CLUSTERED 
(
	[Kunden_ID] ASC
)
------------------------------------------------------------------------------------------------------------


------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS KontoBesitzer;
GO

CREATE TABLE KontoBesitzer
(
  Kunden_ID			INT				NOT NULL,
  Konto_ID			INT				NOT NULL,
)
GO
------------------------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS Bonitaet;
GO

CREATE TABLE Bonitaet
(
  Bonitaet_ID		INT				IDENTITY(1,1) NOT NULL,
  Score				TINYINT			NOT NULL,
  Bezeichnung		NVARCHAR(50)	NOT NULL,
  Kommentar			ntext			NULL
)
GO
-- Primärschlussel -----------------------
ALTER TABLE [dbo].[Bonitaet] 
ADD CONSTRAINT [PK_Bonitaet] PRIMARY KEY CLUSTERED 
(
	[Bonitaet_ID] ASC
)
------------------------------------------------------------------------------------------------------------


------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS Konto;
GO

CREATE TABLE Konto
(
  Konto_ID			INT				IDENTITY(1,1) NOT NULL,
  Kontonummer		BIGINT			NOT NULL,
  EingerichtetAm	DATETIME		NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KontoStand		DECIMAL(19,4)	NOT NULL,
  KontoStandErlaubt	DECIMAL(19,4)	NOT NULL,
  Gesperrt			BIT				NOT NULL DEFAULT 0, -- entsperrt 
  Filial_ID			INT				NOT NULL,
  KontoArt_ID		INT				NOT NULL,
  Bonitaet_ID		INT				NOT NULL,
  Kommentar			ntext			NULL
)
GO
-- Primärschlussel -----------------------
ALTER TABLE [dbo].[Konto] 
ADD CONSTRAINT [PK_Konto] PRIMARY KEY CLUSTERED 
(
	[Konto_ID] ASC
)
------------------------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS KontoArt;
GO

CREATE TABLE KontoArt
(
  KontoArt_ID		INT				IDENTITY(1,1) NOT NULL,
  Bezeichnung		NVARCHAR(50)	NOT NULL,
  Einheit			BIT				NOT NULL DEFAULT 0, --Prozent
  Kosten			DECIMAL(19,4)	NOT NULL,
  Interval			TINYINT			NOT NULL,
  Kommentar			ntext			NULL
)
GO
-- Primärschlussel -----------------------
ALTER TABLE [dbo].[KontoArt] 
ADD CONSTRAINT [PK_KontoArt] PRIMARY KEY CLUSTERED 
(
	[KontoArt_ID] ASC
)
------------------------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS MiniBankFiliale;
GO

CREATE TABLE MiniBankFiliale
(
  Filial_ID			INT				IDENTITY(1,1) NOT NULL,
  FilialName		NVARCHAR(50)	NOT NULL,
  Ort				VARCHAR(50)		NOT NULL,
  PLZ				CHAR(5)         NOT NULL,
  Strasse			NVARCHAR(50)	NOT NULL,
  Hausnummer		NVARCHAR(20)	NOT NULL,
  Telefon			NVARCHAR(50)	NOT NULL,
  Mobil				NVARCHAR(150)	NULL,
  BLZ				INT			    NOT NULL,
  BIC				CHAR(11)		NOT NULL,
  Kommentar			ntext			NULL
)
GO
-- Primärschlussel -----------------------
ALTER TABLE [dbo].[MiniBankFiliale] 
ADD CONSTRAINT [PK_MiniBankFiliale] PRIMARY KEY CLUSTERED 
(
	[Filial_ID] ASC
)
------------------------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS Abteilung;
GO

CREATE TABLE Abteilung
(
  Abteilung_ID		INT				IDENTITY(1,1) NOT NULL,
  Abteilung			NVARCHAR(50)	NOT NULL,
  Filial_ID			INT				NOT NULL,
  Kommentar			ntext			NULL,
)
GO
-- Primärschlussel -----------------------
ALTER TABLE [dbo].[Abteilung] 
ADD CONSTRAINT [PK_Abteilung] PRIMARY KEY CLUSTERED 
(
	[Abteilung_ID] ASC
)
------------------------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS Personal;
GO

CREATE TABLE Personal
(
  Personal_ID		INT				IDENTITY(1,1) NOT NULL,
  Nachname			NVARCHAR(50)	NOT NULL,
  Vorname			NVARCHAR(50)	NOT NULL,
  GeburtsDatum		DATE			NOT NULL,
  Land				NVARCHAR(50)	NULL DEFAULT 'Deutschland',
  Ort				VARCHAR(50)		NULL DEFAULT 'Berlin',
  PLZ				CHAR(5)         NULL,
  Strasse			NVARCHAR(50)	NULL,
  Hausnummer		NVARCHAR(20)	NULL,
  Telefon			NVARCHAR(50)	NULL,
  Mobil				NVARCHAR(150)	NULL,
  Abteilung_ID		INT				NOT NULL,
  Beruf_ID			INT				NOT NULL,
  Position_ID		INT				NOT NULL,
  Kommentar			ntext			NULL
)
GO
-- Primärschlussel -----------------------
ALTER TABLE [dbo].[Personal] 
ADD CONSTRAINT [PK_Personal] PRIMARY KEY CLUSTERED 
(
	[Personal_ID] ASC
)
------------------------------------------------------------------------------------------------------------


------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS Beruf;
GO

CREATE TABLE Beruf
(
  Beruf_ID			INT				IDENTITY(1,1) NOT NULL,
  Beruf				NVARCHAR(50)	NOT NULL,
  Kommentar			ntext			NULL
)
GO
-- Primärschlussel -----------------------
ALTER TABLE [dbo].[Beruf] 
ADD CONSTRAINT [PK_Beruf] PRIMARY KEY CLUSTERED 
(
	[Beruf_ID] ASC
)
------------------------------------------------------------------------------------------------------------


------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS Position;
GO

CREATE TABLE Position
(
  Position_ID		INT				IDENTITY(1,1) NOT NULL,
  Position			NVARCHAR(30)	NOT NULL,
  Kommentar			ntext			NULL
)
GO
-- Primärschlussel -----------------------
ALTER TABLE [dbo].[Position] 
ADD CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[Position_ID] ASC
)
------------------------------------------------------------------------------------------------------------

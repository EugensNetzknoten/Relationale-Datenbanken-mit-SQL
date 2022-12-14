USE [master]
GO
/****** Object:  Database [MiniBank]    Script Date: 02.09.2022 13:15:05 ******/
CREATE DATABASE [MiniBank]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MiniBank', FILENAME = N'C:\SQL-Kurs\DB\Projekt\MiniBank.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'MiniBank_log', FILENAME = N'C:\SQL-Kurs\DB\Projekt\MiniBank_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MiniBank] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MiniBank].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MiniBank] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MiniBank] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MiniBank] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MiniBank] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MiniBank] SET ARITHABORT OFF 
GO
ALTER DATABASE [MiniBank] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MiniBank] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MiniBank] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MiniBank] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MiniBank] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MiniBank] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MiniBank] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MiniBank] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MiniBank] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MiniBank] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MiniBank] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MiniBank] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MiniBank] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MiniBank] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MiniBank] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MiniBank] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MiniBank] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MiniBank] SET RECOVERY FULL 
GO
ALTER DATABASE [MiniBank] SET  MULTI_USER 
GO
ALTER DATABASE [MiniBank] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MiniBank] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MiniBank] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MiniBank] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MiniBank] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MiniBank] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MiniBank', N'ON'
GO
ALTER DATABASE [MiniBank] SET QUERY_STORE = OFF
GO
/****** Object:  Login [NT-AUTORITÄT\SYSTEM]    Script Date: 02.09.2022 13:15:07 ******/
CREATE LOGIN [NT-AUTORITÄT\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT-AUTORITÄT\Netzwerkdienst]    Script Date: 02.09.2022 13:15:07 ******/
CREATE LOGIN [NT-AUTORITÄT\Netzwerkdienst] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 02.09.2022 13:15:07 ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 02.09.2022 13:15:07 ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY$SQL2019]    Script Date: 02.09.2022 13:15:07 ******/
CREATE LOGIN [NT SERVICE\SQLTELEMETRY$SQL2019] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT SERVICE\SQLAgent$SQL2019]    Script Date: 02.09.2022 13:15:07 ******/
CREATE LOGIN [NT SERVICE\SQLAgent$SQL2019] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT Service\MSSQL$SQL2019]    Script Date: 02.09.2022 13:15:07 ******/
CREATE LOGIN [NT Service\MSSQL$SQL2019] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [MiniBankReader]    Script Date: 02.09.2022 13:15:07 ******/
CREATE LOGIN [MiniBankReader] WITH PASSWORD=N'spuEIESt6b8xkHttEeC+b5qbutxId732fzg6n1QTGYw=', DEFAULT_DATABASE=[MiniBank], DEFAULT_LANGUAGE=[Deutsch], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [MiniBankReader] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [FirmaWriter]    Script Date: 02.09.2022 13:15:07 ******/
CREATE LOGIN [FirmaWriter] WITH PASSWORD=N'tN84Zngsz/C/O9UGiGfAGbrTk9vCR8IYvKEszGO8g4c=', DEFAULT_DATABASE=[FirmaUebung], DEFAULT_LANGUAGE=[Deutsch], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [FirmaWriter] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [FirmaReader]    Script Date: 02.09.2022 13:15:07 ******/
CREATE LOGIN [FirmaReader] WITH PASSWORD=N'Kr67wLOMBeWBHAwZgNQxr6mWICSRSrox8JAiWIhbivc=', DEFAULT_DATABASE=[FirmaUebung], DEFAULT_LANGUAGE=[Deutsch], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [FirmaReader] DISABLE
GO
/****** Object:  Login [Admin]    Script Date: 02.09.2022 13:15:07 ******/
CREATE LOGIN [Admin] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 02.09.2022 13:15:07 ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'08h6C5BoXOnId5KOIKUGP1axv+08HjsBuPxx1u6kfkY=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 02.09.2022 13:15:07 ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'y3MHrH67K1sbgkx1jJSxdSfsLblrJKzQoaUnRaoTVKg=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
/****** Object:  Login [l_certSignSmDetach]    Script Date: 02.09.2022 13:15:07 ******/
CREATE LOGIN [l_certSignSmDetach] FROM CERTIFICATE [_##PDW_SmDetachSigningCertificate##]
GO
/****** Object:  Login [l_certSignPolyBaseAuthorize]    Script Date: 02.09.2022 13:15:07 ******/
CREATE LOGIN [l_certSignPolyBaseAuthorize] FROM CERTIFICATE [_##PDW_PolyBaseAuthorizeSigningCertificate##]
GO
ALTER AUTHORIZATION ON DATABASE::[MiniBank] TO [Admin]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLAgent$SQL2019]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQL$SQL2019]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [Admin]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [l_certSignSmDetach]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [l_certSignPolyBaseAuthorize]
GO
USE [MiniBank]
GO
/****** Object:  User [MiniBankLeser]    Script Date: 02.09.2022 13:15:11 ******/
CREATE USER [MiniBankLeser] FOR LOGIN [MiniBankReader] WITH DEFAULT_SCHEMA=[dbo]
GO
GRANT CONNECT TO [MiniBankLeser] AS [dbo]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
/****** Object:  UserDefinedFunction [dbo].[sf_erstelle_IBAN_von_Kontonummer]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eugen Gromow
-- Create date: 31.08.2022
-- Description:	
-- =============================================
CREATE   FUNCTION [dbo].[sf_erstelle_IBAN_von_Kontonummer]
(
	@Kontonummer	BIGINT,
	@BIC			CHAR(11)
)
RETURNS VARCHAR(22) -- IBAN
AS
BEGIN
	-- Declare the return variable here
	DECLARE @IBAN						VARCHAR(22),
			@Kontonummer_Char			CHAR(10),
			@Pruefsumme					NUMERIC(2,0),
			@Pruefsumme_Char			CHAR(2),
			@IBAN_BLZ_KTONR				CHAR(18),
			@IBAN_Validierung_Char		CHAR(24),
			@IBAN_Validierung_Numeric	NUMERIC(24,0),
			@Pruefe						NUMERIC(2,0);

	--SET @Sortierung
	-- Add the T-SQL statements to compute the return value here
	-- Numeric in String umwandeln
	SET @Kontonummer_Char = CAST(@Kontonummer AS CHAR(10))
	SET @IBAN_BLZ_KTONR = CAST((SELECT [BLZ] FROM [MiniBankFiliale] WHERE [BIC] = @BIC) AS CHAR(8)) + @Kontonummer_Char

	IF (ISNUMERIC(@IBAN_BLZ_KTONR) = 1)
		BEGIN
			SET @IBAN_Validierung_Char = @IBAN_BLZ_KTONR + '131400'
			-- String in Numeric umwandeln
			SET @IBAN_Validierung_Numeric = @IBAN_Validierung_Char
			SET @Pruefe = @IBAN_Validierung_Numeric % 97
			SET @Pruefsumme = 98 - @Pruefe
			-- Numeric in String umwandeln
			SET @Pruefsumme_Char = RIGHT('0' +  CAST(@Pruefsumme AS varchar), 2)
			SET @IBAN = 'DE' + @Pruefsumme_Char + @IBAN_BLZ_KTONR
		END

	-- Return the result of the function
	RETURN @IBAN

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_erstelle_IBAN_von_Kontonummer] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[sf_erstelle_Kontonummer_von_IBAN]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eugen Gromow
-- Create date: 31.08.2022
-- Description:	
-- =============================================
CREATE   FUNCTION [dbo].[sf_erstelle_Kontonummer_von_IBAN]
(
	@IBAN varchar(22)
)
RETURNS CHAR(10) -- Kontonummer
AS
BEGIN
	-- Declare the return variable here
	DECLARE @KTONR_Char CHAR(10);

	--SET @Sortierung
	-- Add the T-SQL statements to compute the return value here
	SET @KTONR_Char = SUBSTRING(@IBAN, 13, 10)

	-- Return the result of the function
	RETURN @KTONR_Char

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_erstelle_Kontonummer_von_IBAN] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[sf_IBAN_Validierung]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eugen Gromow
-- Create date: 30.08.2022
-- Description:	
-- =============================================
CREATE   FUNCTION [dbo].[sf_IBAN_Validierung]
(
	@IBAN varchar(22)
)
RETURNS BIT -- 0 IBAN inkorrekt
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Validierung 				BIT,
			@Pruefsumme 				CHAR(2),
			@IBAN_BLZ_KTONR 			CHAR(18),
			@IBAN_Validierung_Char 		CHAR(24),
			@IBAN_Validierung_Numeric 	NUMERIC(24,0),
			@Pruefe 					numeric(2,0);

	--SET @Sortierung
	-- Add the T-SQL statements to compute the return value here
	SET @Pruefsumme = SUBSTRING(@IBAN, 3, 2)
	SET @IBAN_BLZ_KTONR = SUBSTRING(@IBAN, 5, 18)
	IF (ISNUMERIC(@Pruefsumme) = 1) AND (ISNUMERIC(@IBAN_BLZ_KTONR) = 1)
		BEGIN
			SET @IBAN_Validierung_Char = @IBAN_BLZ_KTONR + '1314' + @Pruefsumme
			--String in Numeric umwandeln
			SET @IBAN_Validierung_Numeric = @IBAN_Validierung_Char
			SET @Pruefe = @IBAN_Validierung_Numeric % 97
		END

	IF @Pruefe = 1
		SET @Validierung = 1
	ELSE
		SET @Validierung = 0
	-- Return the result of the function
	RETURN @Validierung

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_IBAN_Validierung] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[sf_IBAN_von_Tabelle_Kunde]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eugen Gromow
-- Create date: 30.08.2022
-- Description:	
-- =============================================
CREATE   FUNCTION [dbo].[sf_IBAN_von_Tabelle_Kunde]
(
	@IBAN varchar(22)
)
RETURNS BIT -- 0 Kontonummer ist nicht aus Tabelle Kunde
AS
BEGIN
	-- Declare the return variable here
	DECLARE @IBAN_von_Tabelle_Kunde BIT,
			@IBAN_KTONR_Char CHAR(10),
			@Counter BIGINT;

	--SET @Sortierung
	-- Add the T-SQL statements to compute the return value here
	SET @IBAN_KTONR_Char = SUBSTRING(@IBAN, 13, 10)
	SET @Counter =
		(
		SELECT COUNT(*)
		FROM [Konto]
		WHERE [Kontonummer] = @IBAN_KTONR_Char
		)

	IF @Counter > 0
		SET @IBAN_von_Tabelle_Kunde = 1
	ELSE
		SET @IBAN_von_Tabelle_Kunde = 0
	-- Return the result of the function
	RETURN @IBAN_von_Tabelle_Kunde

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_IBAN_von_Tabelle_Kunde] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[sf_Input_Kont_ID_Output_Bonitaet_Score]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eugen Gromow
-- Create date: 01.09.2022
-- Description:	
-- =============================================
CREATE   FUNCTION [dbo].[sf_Input_Kont_ID_Output_Bonitaet_Score]
(
	@Konto_ID INT
)
RETURNS TINYINT -- KontoArt Einheit
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Bonitaet_Score		TINYINT,
		    @Bonitaet_ID		INT;

	--SET @Sortierung
	-- Add the T-SQL statements to compute the return value here
	SET @Bonitaet_ID =
		(
		SELECT [Bonitaet_ID]
		FROM [Konto]
		WHERE [Konto_ID] = @Konto_ID
		)

	SET @Bonitaet_Score =
		(
		SELECT [Score]
		FROM [Bonitaet]
		WHERE [Bonitaet_ID] = @Bonitaet_ID
		)

	-- Return the result of the function
	RETURN @Bonitaet_Score

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_Input_Kont_ID_Output_Bonitaet_Score] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[sf_Input_Kont_ID_Output_KontoArt_Einheit]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eugen Gromow
-- Create date: 01.09.2022
-- Description:	
-- =============================================
CREATE   FUNCTION [dbo].[sf_Input_Kont_ID_Output_KontoArt_Einheit]
(
	@Konto_ID INT
)
RETURNS BIT -- KontoArt Einheit
AS
BEGIN
	-- Declare the return variable here
	DECLARE @KontoArt_Einheit	BIT,
		    @KontoArt_ID		INT;

	--SET @Sortierung
	-- Add the T-SQL statements to compute the return value here
	SET @KontoArt_ID =
		(
		SELECT [KontoArt_ID]
		FROM [Konto]
		WHERE [Konto_ID] = @Konto_ID
		)

	SET @KontoArt_Einheit =
		(
		SELECT [Einheit]
		FROM [KontoArt]
		WHERE [KontoArt_ID] = @KontoArt_ID
		)

	-- Return the result of the function
	RETURN @KontoArt_Einheit

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_Input_Kont_ID_Output_KontoArt_Einheit] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[sf_Input_Kont_ID_Output_KontoArt_Interval]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eugen Gromow
-- Create date: 01.09.2022
-- Description:	
-- =============================================
CREATE   FUNCTION [dbo].[sf_Input_Kont_ID_Output_KontoArt_Interval]
(
	@Konto_ID INT
)
RETURNS TINYINT -- KontoArt Interval
AS
BEGIN
	-- Declare the return variable here
	DECLARE @KontoArt_Interval	TINYINT,
		    @KontoArt_ID		INT;

	--SET @Sortierung
	-- Add the T-SQL statements to compute the return value here
	SET @KontoArt_ID =
		(
		SELECT [KontoArt_ID]
		FROM [Konto]
		WHERE [Konto_ID] = @Konto_ID
		)

	SET @KontoArt_Interval =
		(
		SELECT [Interval]
		FROM [KontoArt]
		WHERE [KontoArt_ID] = @KontoArt_ID
		)

	-- Return the result of the function
	RETURN @KontoArt_Interval

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_Input_Kont_ID_Output_KontoArt_Interval] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[sf_Input_Kont_ID_Output_KontoArt_Kosten]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eugen Gromow
-- Create date: 01.09.2022
-- Description:	
-- =============================================
CREATE   FUNCTION [dbo].[sf_Input_Kont_ID_Output_KontoArt_Kosten]
(
	@Konto_ID INT
)
RETURNS DECIMAL(19,4) -- KontoArt Kosten
AS
BEGIN
	-- Declare the return variable here
	DECLARE @KontoArt_Kosten	DECIMAL(19,4),
		    @KontoArt_ID		INT;

	--SET @Sortierung
	-- Add the T-SQL statements to compute the return value here
	SET @KontoArt_ID =
		(
		SELECT [KontoArt_ID]
		FROM [Konto]
		WHERE [Konto_ID] = @Konto_ID
		)

	SET @KontoArt_Kosten =
		(
		SELECT [Kosten]
		FROM [KontoArt]
		WHERE [KontoArt_ID] = @KontoArt_ID
		)

	-- Return the result of the function
	RETURN @KontoArt_Kosten

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_Input_Kont_ID_Output_KontoArt_Kosten] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[sf_Konto_ID_gesperrt]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eugen Gromow
-- Create date: 31.08.2022
-- Description:	
-- =============================================
CREATE   FUNCTION [dbo].[sf_Konto_ID_gesperrt]
(
	@Konto_ID INT
)
RETURNS BIT
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Konto_ID_gesperrt BIT;

	-- Add the T-SQL statements to compute the return value here
	SET @Konto_ID_gesperrt = 
	(
		SELECT Gesperrt
		FROM Konto
		WHERE Konto_ID = @Konto_ID
	);
	
	-- Return the result of the function
	RETURN @Konto_ID_gesperrt;

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_Konto_ID_gesperrt] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[sf_Kontonummer_gesperrt]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eugen Gromow
-- Create date: 31.08.2022
-- Description:	
-- =============================================
CREATE   FUNCTION [dbo].[sf_Kontonummer_gesperrt]
(
	@Kontonummer BIGINT
)
RETURNS BIT
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Konto_ID_gesperrt BIT;

	-- Add the T-SQL statements to compute the return value here
	SET @Konto_ID_gesperrt = 
	(
		SELECT Gesperrt
		FROM Konto
		WHERE Kontonummer = @Kontonummer
	);
	
	-- Return the result of the function
	RETURN @Konto_ID_gesperrt;

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_Kontonummer_gesperrt] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[sf_Ueberweisung_Konto_ID_in_Kunden]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eugen Gromow
-- Create date: 30.08.2022
-- Description:	
-- =============================================
CREATE   FUNCTION [dbo].[sf_Ueberweisung_Konto_ID_in_Kunden]
(
	@Konto_ID INT
)
RETURNS BIT -- 0 Konto_ID ist nicht in der Tabelle Kunde vorhanden
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Konto_ID_von_Kunde BIT;

	--SET @Sortierung
	-- Add the T-SQL statements to compute the return value here
	SET @Konto_ID_von_Kunde =
		(
		SELECT COUNT(*)
		FROM [Konto]
		WHERE [Konto_ID] = @Konto_ID
		)
	-- Return the result of the function
	RETURN @Konto_ID_von_Kunde

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_Ueberweisung_Konto_ID_in_Kunden] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Ueberweisung]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ueberweisung](
	[Ueberweisung_ID] [int] IDENTITY(1,1) NOT NULL,
	[DatumUhrzeit] [datetime] NOT NULL,
	[Betrag] [decimal](19, 4) NOT NULL,
	[Verwendungszweck] [nvarchar](140) NULL,
	[Konto_ID] [int] NOT NULL,
	[IBAN_Gegenseite] [char](22) NOT NULL,
	[BIC_Gegenseite] [char](11) NOT NULL,
	[KontoStandAlt] [decimal](19, 4) NOT NULL,
	[KontoStandNeu] [decimal](19, 4) NOT NULL,
	[Kommentar] [ntext] NULL,
 CONSTRAINT [PK_Ueberweisung] PRIMARY KEY CLUSTERED 
(
	[Ueberweisung_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Ueberweisung] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Konto]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Konto](
	[Konto_ID] [int] IDENTITY(1,1) NOT NULL,
	[Kontonummer] [bigint] NOT NULL,
	[EingerichtetAm] [datetime] NOT NULL,
	[KontoStand] [decimal](19, 4) NOT NULL,
	[KontoStandErlaubt] [decimal](19, 4) NOT NULL,
	[Gesperrt] [bit] NOT NULL,
	[Filial_ID] [int] NOT NULL,
	[KontoArt_ID] [int] NOT NULL,
	[Bonitaet_ID] [int] NOT NULL,
	[Kommentar] [ntext] NULL,
 CONSTRAINT [PK_Konto] PRIMARY KEY CLUSTERED 
(
	[Konto_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Konto] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Konto] ([Kontonummer]) TO [MiniBankLeser] AS [dbo]
GO
GRANT SELECT ON [dbo].[Konto] ([KontoStand]) TO [MiniBankLeser] AS [dbo]
GO
GRANT SELECT ON [dbo].[Konto] ([KontoStandErlaubt]) TO [MiniBankLeser] AS [dbo]
GO
GRANT SELECT ON [dbo].[Konto] ([Gesperrt]) TO [MiniBankLeser] AS [dbo]
GO
/****** Object:  View [dbo].[View_Kontoauszug_Vorlage]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_Kontoauszug_Vorlage]
AS
SELECT        TOP (100) PERCENT dbo.Ueberweisung.DatumUhrzeit, dbo.Ueberweisung.Betrag, dbo.Ueberweisung.KontoStandAlt, dbo.Ueberweisung.KontoStandNeu, dbo.Ueberweisung.IBAN_Gegenseite, 
                         dbo.Ueberweisung.Verwendungszweck
FROM            dbo.Ueberweisung INNER JOIN
                         dbo.Konto ON dbo.Ueberweisung.Konto_ID = dbo.Konto.Konto_ID
WHERE        (dbo.Konto.Kontonummer = 9999999999) AND (dbo.Ueberweisung.DatumUhrzeit BETWEEN CONVERT(DATETIME, '2022-02-14 00:00:00', 102) AND CONVERT(DATETIME, '2022-09-02 00:00:00', 102))
ORDER BY dbo.Ueberweisung.DatumUhrzeit DESC
GO
ALTER AUTHORIZATION ON [dbo].[View_Kontoauszug_Vorlage] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[View_Kontoauszug_Vorlage] TO [MiniBankLeser] AS [dbo]
GO
/****** Object:  Table [dbo].[Bonitaet]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bonitaet](
	[Bonitaet_ID] [int] IDENTITY(1,1) NOT NULL,
	[Score] [tinyint] NOT NULL,
	[Bezeichnung] [nvarchar](50) NOT NULL,
	[Kommentar] [ntext] NULL,
 CONSTRAINT [PK_Bonitaet] PRIMARY KEY CLUSTERED 
(
	[Bonitaet_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Bonitaet] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[KontoArt]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KontoArt](
	[KontoArt_ID] [int] IDENTITY(1,1) NOT NULL,
	[Bezeichnung] [nvarchar](50) NOT NULL,
	[Einheit] [bit] NOT NULL,
	[Kosten] [decimal](19, 4) NOT NULL,
	[Interval] [tinyint] NOT NULL,
	[Kommentar] [ntext] NULL,
 CONSTRAINT [PK_KontoArt] PRIMARY KEY CLUSTERED 
(
	[KontoArt_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[KontoArt] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[KontoArt] TO [MiniBankLeser] AS [dbo]
GO
/****** Object:  Table [dbo].[MiniBankFiliale]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MiniBankFiliale](
	[Filial_ID] [int] IDENTITY(1,1) NOT NULL,
	[FilialName] [nvarchar](50) NOT NULL,
	[Ort] [varchar](50) NOT NULL,
	[PLZ] [char](5) NOT NULL,
	[Strasse] [nvarchar](50) NOT NULL,
	[Hausnummer] [nvarchar](20) NOT NULL,
	[Telefon] [nvarchar](50) NOT NULL,
	[Mobil] [nvarchar](150) NULL,
	[BLZ] [int] NOT NULL,
	[BIC] [char](11) NOT NULL,
	[Kommentar] [ntext] NULL,
 CONSTRAINT [PK_MiniBankFiliale] PRIMARY KEY CLUSTERED 
(
	[Filial_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[MiniBankFiliale] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_FULL_JOIN_Filialen_verschiedene_arten_Uebrweisungen_etc]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_FULL_JOIN_Filialen_verschiedene_arten_Uebrweisungen_etc]
AS
SELECT        TOP (100) PERCENT dbo.MiniBankFiliale.FilialName, dbo.MiniBankFiliale.BIC, dbo.Ueberweisung.BIC_Gegenseite, dbo.Ueberweisung.Ueberweisung_ID, dbo.Ueberweisung.DatumUhrzeit, dbo.Konto.Kontonummer, 
                         dbo.Konto.KontoStand, dbo.KontoArt.Bezeichnung AS KontoArtBezeichnung, dbo.KontoArt.Kosten, dbo.Bonitaet.Score, dbo.Bonitaet.Bezeichnung AS [Bonitaet Bezeichnung]
FROM            dbo.Ueberweisung FULL OUTER JOIN
                         dbo.Konto ON dbo.Ueberweisung.Konto_ID = dbo.Konto.Konto_ID FULL OUTER JOIN
                         dbo.Bonitaet ON dbo.Konto.Bonitaet_ID = dbo.Bonitaet.Bonitaet_ID FULL OUTER JOIN
                         dbo.MiniBankFiliale ON dbo.Konto.Filial_ID = dbo.MiniBankFiliale.Filial_ID FULL OUTER JOIN
                         dbo.KontoArt ON dbo.Konto.KontoArt_ID = dbo.KontoArt.KontoArt_ID
ORDER BY dbo.MiniBankFiliale.FilialName
GO
ALTER AUTHORIZATION ON [dbo].[View_FULL_JOIN_Filialen_verschiedene_arten_Uebrweisungen_etc] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Kunden]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kunden](
	[Kunden_ID] [int] IDENTITY(1,1) NOT NULL,
	[Kundennummer] [nchar](10) NOT NULL,
	[Nachname] [nvarchar](50) NOT NULL,
	[Vorname] [nvarchar](50) NOT NULL,
	[GeburtsDatum] [date] NOT NULL,
	[Land] [nvarchar](50) NOT NULL,
	[Ort] [varchar](50) NOT NULL,
	[PLZ] [char](5) NOT NULL,
	[Strasse] [nvarchar](50) NOT NULL,
	[Hausnummer] [nvarchar](20) NOT NULL,
	[Telefon] [nvarchar](50) NULL,
	[Mobil] [nvarchar](150) NULL,
	[Kommentar] [ntext] NULL,
 CONSTRAINT [PK_Kunden] PRIMARY KEY CLUSTERED 
(
	[Kunden_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Kunden] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[KontoBesitzer]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KontoBesitzer](
	[Kunden_ID] [int] NOT NULL,
	[Konto_ID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[KontoBesitzer] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Abteilung]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abteilung](
	[Abteilung_ID] [int] IDENTITY(1,1) NOT NULL,
	[Abteilung] [nvarchar](50) NOT NULL,
	[Filial_ID] [int] NOT NULL,
	[Kommentar] [ntext] NULL,
 CONSTRAINT [PK_Abteilung] PRIMARY KEY CLUSTERED 
(
	[Abteilung_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Abteilung] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personal](
	[Personal_ID] [int] IDENTITY(1,1) NOT NULL,
	[Nachname] [nvarchar](50) NOT NULL,
	[Vorname] [nvarchar](50) NOT NULL,
	[GeburtsDatum] [date] NOT NULL,
	[Land] [nvarchar](50) NULL,
	[Ort] [varchar](50) NULL,
	[PLZ] [char](5) NULL,
	[Strasse] [nvarchar](50) NULL,
	[Hausnummer] [nvarchar](20) NULL,
	[Telefon] [nvarchar](50) NULL,
	[Mobil] [nvarchar](150) NULL,
	[Abteilung_ID] [int] NOT NULL,
	[Beruf_ID] [int] NOT NULL,
	[Position_ID] [int] NOT NULL,
	[Kommentar] [ntext] NULL,
 CONSTRAINT [PK_Personal] PRIMARY KEY CLUSTERED 
(
	[Personal_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Personal] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_FULL_JOIN_Kunden_Personal]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_FULL_JOIN_Kunden_Personal]
AS
SELECT        TOP (100) PERCENT dbo.Kunden.Nachname AS KuNN, dbo.Kunden.Vorname AS KuVN, dbo.Konto.Kontonummer, dbo.MiniBankFiliale.FilialName, dbo.Abteilung.Abteilung, dbo.Personal.Nachname AS PeNN, 
                         dbo.Personal.Vorname AS PeVN
FROM            dbo.Kunden LEFT OUTER JOIN
                         dbo.KontoBesitzer ON dbo.Kunden.Kunden_ID = dbo.KontoBesitzer.Kunden_ID FULL OUTER JOIN
                         dbo.Personal FULL OUTER JOIN
                         dbo.Abteilung ON dbo.Personal.Abteilung_ID = dbo.Abteilung.Abteilung_ID FULL OUTER JOIN
                         dbo.MiniBankFiliale ON dbo.Abteilung.Filial_ID = dbo.MiniBankFiliale.Filial_ID FULL OUTER JOIN
                         dbo.Konto ON dbo.MiniBankFiliale.Filial_ID = dbo.Konto.Filial_ID ON dbo.KontoBesitzer.Konto_ID = dbo.Konto.Konto_ID
ORDER BY KuNN, KuVN
GO
ALTER AUTHORIZATION ON [dbo].[View_FULL_JOIN_Kunden_Personal] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_alle_Konten_unter_0_gruppiert_nach_KontoArt]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_alle_Konten_unter_0_gruppiert_nach_KontoArt]
AS
SELECT        dbo.KontoArt.Bezeichnung, SUM(dbo.Konto.KontoStand) AS Summe, COUNT(dbo.Konto.Kontonummer) AS Anzahl
FROM            dbo.KontoArt INNER JOIN
                         dbo.Konto ON dbo.KontoArt.KontoArt_ID = dbo.Konto.KontoArt_ID
WHERE        (dbo.Konto.KontoStand < 0)
GROUP BY dbo.KontoArt.Bezeichnung
GO
ALTER AUTHORIZATION ON [dbo].[View_alle_Konten_unter_0_gruppiert_nach_KontoArt] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_Bonitaet_hohes_Risiko]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_Bonitaet_hohes_Risiko]
AS
SELECT        TOP (100) PERCENT dbo.Bonitaet.Score, COUNT(dbo.Konto.Kontonummer) AS [Anzahl der Konten]
FROM            dbo.Bonitaet INNER JOIN
                         dbo.Konto ON dbo.Bonitaet.Bonitaet_ID = dbo.Konto.Bonitaet_ID
GROUP BY dbo.Bonitaet.Score
HAVING        (dbo.Bonitaet.Score <= 80)
GO
ALTER AUTHORIZATION ON [dbo].[View_Bonitaet_hohes_Risiko] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_KTO_Uebersicht_fuer_KnNr_3451027379]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_KTO_Uebersicht_fuer_KnNr_3451027379]
AS
SELECT        TOP (100) PERCENT dbo.Ueberweisung.DatumUhrzeit, dbo.Ueberweisung.Verwendungszweck, dbo.Ueberweisung.Betrag, dbo.Konto.KontoStand
FROM            dbo.Ueberweisung INNER JOIN
                         dbo.Konto ON dbo.Ueberweisung.Konto_ID = dbo.Konto.Konto_ID INNER JOIN
                         dbo.KontoBesitzer ON dbo.Konto.Konto_ID = dbo.KontoBesitzer.Konto_ID INNER JOIN
                         dbo.Kunden ON dbo.KontoBesitzer.Kunden_ID = dbo.Kunden.Kunden_ID
WHERE        (dbo.Ueberweisung.DatumUhrzeit BETWEEN CONVERT(DATETIME, '2022-03-01 00:00:00', 102) AND CONVERT(DATETIME, '2022-06-20 00:00:00', 102)) AND (dbo.Kunden.Kundennummer = N'3451027379')
ORDER BY dbo.Ueberweisung.DatumUhrzeit DESC
GO
ALTER AUTHORIZATION ON [dbo].[View_KTO_Uebersicht_fuer_KnNr_3451027379] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_entsperrte_Girokonten_unter_zehn_Tausend]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_entsperrte_Girokonten_unter_zehn_Tausend]
AS
SELECT        TOP (100) PERCENT dbo.Konto.KontoStand, dbo.Kunden.Nachname, dbo.Kunden.Vorname, dbo.Kunden.Kundennummer
FROM            dbo.Konto INNER JOIN
                         dbo.KontoBesitzer ON dbo.Konto.Konto_ID = dbo.KontoBesitzer.Konto_ID INNER JOIN
                         dbo.Kunden ON dbo.KontoBesitzer.Kunden_ID = dbo.Kunden.Kunden_ID INNER JOIN
                         dbo.KontoArt ON dbo.Konto.KontoArt_ID = dbo.KontoArt.KontoArt_ID
WHERE        (dbo.KontoArt.Bezeichnung = N'Girokonto') AND (dbo.Konto.KontoStand <= - 10000) AND (dbo.Konto.Gesperrt = 0)
ORDER BY dbo.KontoArt.Bezeichnung, dbo.Konto.KontoStand, dbo.Kunden.Nachname, dbo.Kunden.Vorname
GO
ALTER AUTHORIZATION ON [dbo].[View_entsperrte_Girokonten_unter_zehn_Tausend] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_Jungsten_Kunden_nach_2000]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_Jungsten_Kunden_nach_2000]
AS
SELECT        TOP (100) PERCENT GeburtsDatum, Nachname, Vorname, Kundennummer, Ort
FROM            dbo.Kunden
WHERE        (YEAR(GeburtsDatum) >= 2000)
ORDER BY GeburtsDatum DESC, Nachname, Vorname
GO
ALTER AUTHORIZATION ON [dbo].[View_Jungsten_Kunden_nach_2000] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_RIGHT-JOIN_Ueberweisungen_von_anderen_Banken]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_RIGHT-JOIN_Ueberweisungen_von_anderen_Banken]
AS
SELECT        dbo.MiniBankFiliale.FilialName, dbo.MiniBankFiliale.BIC, dbo.Ueberweisung.BIC_Gegenseite, COUNT(dbo.Ueberweisung.BIC_Gegenseite) AS Anzahl
FROM            dbo.MiniBankFiliale RIGHT OUTER JOIN
                         dbo.Ueberweisung ON dbo.MiniBankFiliale.BIC = dbo.Ueberweisung.BIC_Gegenseite
GROUP BY dbo.MiniBankFiliale.FilialName, dbo.MiniBankFiliale.BIC, dbo.Ueberweisung.BIC_Gegenseite
GO
ALTER AUTHORIZATION ON [dbo].[View_RIGHT-JOIN_Ueberweisungen_von_anderen_Banken] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[tf_ent_ge_sperrte_Kontoarten_Grenze]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eugen Gromow
-- Create date: 30.08.2022
-- Description:	entsperrte oder gesperrte Kontoarten unter gewissem KontoStand
-- =============================================
CREATE   FUNCTION [dbo].[tf_ent_ge_sperrte_Kontoarten_Grenze]
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
ALTER AUTHORIZATION ON [dbo].[tf_ent_ge_sperrte_Kontoarten_Grenze] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Beruf]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beruf](
	[Beruf_ID] [int] IDENTITY(1,1) NOT NULL,
	[Beruf] [nvarchar](50) NOT NULL,
	[Kommentar] [ntext] NULL,
 CONSTRAINT [PK_Beruf] PRIMARY KEY CLUSTERED 
(
	[Beruf_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Beruf] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Position]    Script Date: 02.09.2022 13:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[Position_ID] [int] IDENTITY(1,1) NOT NULL,
	[Position] [nvarchar](30) NOT NULL,
	[Kommentar] [ntext] NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[Position_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Position] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[Abteilung] ON 

INSERT [dbo].[Abteilung] ([Abteilung_ID], [Abteilung], [Filial_ID], [Kommentar]) VALUES (1, N'Sales', 1, NULL)
INSERT [dbo].[Abteilung] ([Abteilung_ID], [Abteilung], [Filial_ID], [Kommentar]) VALUES (2, N'Finance', 2, N'')
INSERT [dbo].[Abteilung] ([Abteilung_ID], [Abteilung], [Filial_ID], [Kommentar]) VALUES (3, N'Research and Development', 2, N'ist Dies Dies ein ein ist Dies Kommentar. ein Dies Dies Kommentar. Kommentar. ein Kommentar. zufaelliger Kommentar. ist zufaelliger Dies ein Kommentar. ein Kommentar. ist zufaelliger ist Dies Dies Kommentar. zufaelliger ist zufaelliger zufaelliger zufaelliger Kommentar. Kommentar. zufaelliger ein Dies Kommentar. zufaelliger Dies ist zufaelliger Kommentar. Kommentar. ein Kommentar. Dies ein zufaelliger ist Dies ein ein zufaelliger zufaelliger ist zufaelliger Dies ist Kommentar. zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. ist Kommentar. ein ist zufaelliger ein Kommentar. Kommentar. ein ist ist ein ist Dies Dies Dies Dies ist Dies Kommentar. zufaelliger zufaelliger ist ist zufaelliger zufaelliger ist ist ist ein ein zufaelliger ein Kommentar. zufaelliger Dies Dies ist ein Kommentar. ist Kommentar. Dies Kommentar. ein Kommentar. Dies Dies ist ein ein ist Dies ein Kommentar. Kommentar. ist ein ein Dies ein Dies ist Dies Dies ein ist ein ist zufaelliger ist ein zufaelliger Kommentar. Dies Kommentar. ein ein Dies Dies ein ein Kommentar. zufaelliger Kommentar. Dies Dies Kommentar. ein ist Dies Dies zufaelliger Dies ist Dies Kommentar. Kommentar. ein ist zufaelliger ist Kommentar. Dies ist ist Dies Dies ein ist zufaelliger zufaelliger Dies ein Dies ist Kommentar. ein Kommentar. ist ein ist ist Kommentar. Kommentar. ist Kommentar. zufaelliger ist zufaelliger Dies Dies Kommentar. ein zufaelliger Kommentar. ein zufaelliger zufaelliger zufaelliger ein Dies ist Kommentar. ein Dies Kommentar. Kommentar. zufaelliger Kommentar. ein zufaelliger zufaelliger Dies Kommentar. ein ist Dies Kommentar. zufaelliger Dies Kommentar. ein ein zufaelliger ein ist Kommentar. zufaelliger Dies ein Dies ist ist ist ist Dies Kommentar. ist ist Dies ist Dies Dies Kommentar. ein Dies ist zufaelliger Kommentar. ein ist ein ein ein ein Dies ist ist ein Dies ein Kommentar. ein ein ein Dies zufaelliger ist zufaelliger Kommentar. Kommentar. ist Kommentar. ein Kommentar. ein zufaelliger ein Dies zufaelliger ist zufaelliger ist ein ein Kommentar. Dies Dies Kommentar. zufaelliger zufaelliger ein Dies ist ein zufaelliger ein Dies ein Kommentar. Kommentar. ist ist Dies zufaelliger Dies ist ist ein Kommentar. Dies ein ein Kommentar. zufaelliger Dies ist zufaelliger zufaelliger Kommentar. Kommentar. Kommentar. ist ein ist ein ist Dies zufaelliger Kommentar. ein Dies Dies Kommentar. ist ist Dies ein Dies Dies ein zufaelliger zufaelliger Kommentar. ein ist zufaelliger ein zufaelliger Dies ein zufaelliger ein ein ein Dies Dies Dies ein zufaelliger ein Kommentar. Dies ein Kommentar. ein ist zufaelliger Kommentar. Kommentar. zufaelliger ist ist zufaelliger Dies zufaelliger Dies ein Kommentar. ein zufaelliger zufaelliger Dies Kommentar. Dies ist zufaelliger')
INSERT [dbo].[Abteilung] ([Abteilung_ID], [Abteilung], [Filial_ID], [Kommentar]) VALUES (4, N'Manufacturing', 2, N'Dies ein Kommentar. ist ein Kommentar. Kommentar. Dies zufaelliger zufaelliger ein ist Dies Kommentar. zufaelliger ist zufaelliger ein zufaelliger ist Dies ist ist zufaelliger zufaelliger Dies zufaelliger ein zufaelliger ein ist zufaelliger zufaelliger ein Dies ein Dies zufaelliger Dies ist ist ist zufaelliger ist Kommentar. ist Dies zufaelliger ist ist ein ist ein Kommentar. ist Dies ist zufaelliger Kommentar. ein zufaelliger ein ist Kommentar. ist ist ist ein Kommentar. Dies Dies Kommentar. ist ein zufaelliger zufaelliger zufaelliger zufaelliger ein Kommentar. ein Kommentar. ein Kommentar. Kommentar. ein zufaelliger zufaelliger ist zufaelliger ist Dies Kommentar. Kommentar. zufaelliger ist zufaelliger ein Dies zufaelliger Dies ein zufaelliger Dies Kommentar. Dies Dies zufaelliger zufaelliger zufaelliger zufaelliger Dies Kommentar. Kommentar. ist ein Dies Dies ist ein ein ist ist Dies Dies ein Kommentar. zufaelliger Kommentar. ist ist zufaelliger Kommentar. Dies ist zufaelliger Kommentar. zufaelliger Dies ein ist Dies Kommentar. ein zufaelliger ist ist Dies Kommentar. Kommentar. ist ist ist zufaelliger ist ist Kommentar. ein ein zufaelliger ein ein ein zufaelliger ein ist zufaelliger ein Kommentar. Dies ist Kommentar. ein zufaelliger ein Dies Dies ist ein zufaelliger Kommentar. Kommentar. Dies Dies Kommentar. Kommentar. Kommentar. ein Kommentar. Kommentar. ist ist ein Kommentar. zufaelliger Kommentar. ist Kommentar. zufaelliger zufaelliger Dies Kommentar. zufaelliger Dies Kommentar. ist Kommentar. Kommentar. Kommentar. ist zufaelliger Kommentar. zufaelliger Dies ist zufaelliger Kommentar. ein Kommentar. ein ist ist Kommentar. Kommentar. ist ein ein ein zufaelliger ist zufaelliger zufaelliger ist Kommentar. ist ist zufaelliger zufaelliger Kommentar. Kommentar. ein ein Kommentar. ein ist ist Kommentar. Dies ein ist zufaelliger Kommentar. ein Kommentar. Dies zufaelliger ein ein Kommentar. ein Kommentar. Kommentar. zufaelliger ein ist ist ein ist Kommentar. zufaelliger Kommentar. ein ist ein zufaelliger zufaelliger Dies ist ein ist ein ist Kommentar. ist ist ist ein ist ein ist ein Kommentar. zufaelliger Dies zufaelliger Kommentar. ist Dies ist Kommentar. Dies zufaelliger zufaelliger Kommentar. ist zufaelliger zufaelliger Dies zufaelliger Dies ein zufaelliger ist Dies ist Kommentar. ist Kommentar. Kommentar. ein zufaelliger zufaelliger zufaelliger Dies Kommentar. ein Dies ist ist zufaelliger ein ist ein ist ein Kommentar. Kommentar. ein ein Dies zufaelliger zufaelliger ist zufaelliger zufaelliger zufaelliger Dies Kommentar. Dies zufaelliger ist')
INSERT [dbo].[Abteilung] ([Abteilung_ID], [Abteilung], [Filial_ID], [Kommentar]) VALUES (5, N'Human Resources', 1, N'Kommentar. Kommentar. ein ein Kommentar. Dies ein ein zufaelliger zufaelliger zufaelliger ist Kommentar. Kommentar. Dies ein ist ein Dies Kommentar. Kommentar. Kommentar. ist zufaelliger zufaelliger ein Kommentar. ein ist zufaelliger Kommentar. ein zufaelliger ist ein Kommentar. Dies Kommentar. ist Kommentar. zufaelliger ein zufaelliger ein Dies ist Kommentar. Dies zufaelliger Dies Kommentar. ein ist zufaelliger Dies ein zufaelliger ein ist Dies ist ist ist ein Kommentar. ein ein Kommentar. ist Dies ist Dies zufaelliger Kommentar. Dies ein ein zufaelliger ein ist Kommentar. ein zufaelliger Dies Kommentar. ein Kommentar. ein Kommentar. Kommentar. ist zufaelliger ein ist ein zufaelliger zufaelliger Dies ist ein Dies ein ein ein zufaelliger Kommentar. Dies ein ein ein zufaelliger Kommentar. ist Kommentar. ist ein ist zufaelliger zufaelliger zufaelliger zufaelliger ist zufaelliger ist ist Kommentar. ein Kommentar. ein ein ein ist ist zufaelliger ist ist')
INSERT [dbo].[Abteilung] ([Abteilung_ID], [Abteilung], [Filial_ID], [Kommentar]) VALUES (6, N'Customer Support', 1, N'Dies ein ein ist Dies ist Kommentar. ein zufaelliger ist ist Kommentar. ist Dies Kommentar. ein zufaelliger Dies Kommentar. ein zufaelliger zufaelliger Kommentar. ist Dies ist ein zufaelliger Kommentar. ein ein ein ein ein zufaelliger zufaelliger ist ist ist Dies ein ist Kommentar. Kommentar. Kommentar. zufaelliger ist ein Kommentar. Kommentar. Kommentar. Dies Kommentar. ist ist Dies Dies ein Dies Dies ist ist ein ein zufaelliger zufaelliger ist Kommentar. ein Dies ein Dies Kommentar. ist Kommentar. Kommentar. Kommentar. Kommentar. Dies ist ein Kommentar. ist zufaelliger ist Kommentar. zufaelliger ein zufaelliger ein ist ein ein ein Dies zufaelliger Dies Dies ein Kommentar. Kommentar. ist ist zufaelliger ein zufaelliger zufaelliger')
INSERT [dbo].[Abteilung] ([Abteilung_ID], [Abteilung], [Filial_ID], [Kommentar]) VALUES (7, N'Executive', 1, N'')
INSERT [dbo].[Abteilung] ([Abteilung_ID], [Abteilung], [Filial_ID], [Kommentar]) VALUES (8, N'Facilities', 2, N'')
INSERT [dbo].[Abteilung] ([Abteilung_ID], [Abteilung], [Filial_ID], [Kommentar]) VALUES (9, N'Information Technology', 2, N'Dies ist Dies zufaelliger Kommentar. ein Dies ist Dies Dies zufaelliger ist ein ein ist zufaelliger ein zufaelliger Dies Dies ist ein ein ein zufaelliger ist Kommentar. Dies zufaelliger zufaelliger zufaelliger Kommentar. ist ist zufaelliger zufaelliger Kommentar. Dies ein Kommentar. ist Kommentar. Kommentar. ein Kommentar. ist ein Dies Kommentar. ist Kommentar. Kommentar. ein ein Dies zufaelliger ist Kommentar. zufaelliger ist ein Dies ist Dies ist Kommentar. ist Kommentar. Dies Kommentar. Kommentar. zufaelliger ein zufaelliger ist Kommentar. ist zufaelliger Dies ist ein Dies Kommentar. ist ein Kommentar. ein ist zufaelliger zufaelliger ist zufaelliger Kommentar. ist ein ist zufaelliger Dies Kommentar. zufaelliger zufaelliger Dies ein zufaelliger Kommentar. ist ein ist zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. zufaelliger ist ist ein Kommentar. ist ist ist ist ein ein Kommentar. zufaelliger Kommentar. zufaelliger ein zufaelliger Dies zufaelliger Dies ein zufaelliger zufaelliger Kommentar. Kommentar. Dies ein zufaelliger zufaelliger Kommentar. ist Dies ein Kommentar. Dies zufaelliger ein ist ein Kommentar. Dies ist ein ein Dies Kommentar. ein zufaelliger Kommentar. Kommentar. ist Kommentar. Kommentar. ein ist Kommentar. ist Kommentar. Kommentar. Kommentar. ist Kommentar. Dies zufaelliger Dies Dies Dies Dies zufaelliger Dies zufaelliger ein ist ein Dies Kommentar. zufaelliger zufaelliger zufaelliger ist Kommentar. ist Kommentar. zufaelliger zufaelliger zufaelliger Kommentar. ist Dies Kommentar. Dies zufaelliger Kommentar. ein Dies ist Kommentar. ein ist Dies zufaelliger')
INSERT [dbo].[Abteilung] ([Abteilung_ID], [Abteilung], [Filial_ID], [Kommentar]) VALUES (10, N'Operations', 2, N'ein Dies ein Dies Dies zufaelliger ein ist Dies ein Kommentar. ist zufaelliger ein ein Kommentar. zufaelliger Kommentar. Kommentar. ein ist ein ein ist Dies ist Dies zufaelliger zufaelliger Kommentar. Dies Kommentar. ein ist Dies Dies Dies ein Kommentar. zufaelliger ein Kommentar. zufaelliger zufaelliger Dies Kommentar. Kommentar. ein ein Kommentar. Kommentar. ist ein Kommentar. ein Kommentar. Dies Kommentar. Kommentar. ist Dies Kommentar. zufaelliger Dies Dies ein ist Kommentar. Dies Dies ist Kommentar. ein Dies zufaelliger Dies zufaelliger Dies zufaelliger zufaelliger ein zufaelliger zufaelliger ist ist Kommentar. ein zufaelliger ein ein Kommentar. Kommentar. Dies Kommentar. Kommentar. ein zufaelliger Kommentar. ein ist Kommentar. zufaelliger Kommentar. ein Dies Dies Dies ein ein ein ein zufaelliger ist zufaelliger Dies ist ein ist ist Dies zufaelliger Dies zufaelliger ein Dies ist Dies zufaelliger ein Dies Dies Kommentar. Kommentar. Kommentar. zufaelliger ist ist Kommentar. Dies Kommentar. Kommentar. zufaelliger zufaelliger Kommentar. ist Kommentar. ein ist Kommentar. Dies Kommentar. ein ein ein ist zufaelliger ein Dies Dies zufaelliger zufaelliger ein Kommentar. ist Kommentar. ein Kommentar. zufaelliger zufaelliger Kommentar. ein zufaelliger ein Kommentar. ein ist zufaelliger zufaelliger ein ist ein Dies ein Kommentar. Kommentar. ist zufaelliger zufaelliger ein ist Dies ist ein Kommentar. ein ist ein ein Kommentar. ist ist ist Dies Kommentar. zufaelliger zufaelliger zufaelliger Dies zufaelliger ist Kommentar. ist ein ist Dies ist Kommentar. Kommentar. ein Dies Kommentar. zufaelliger ist Kommentar. ein ist Dies ist ein zufaelliger Dies ein ist ist Dies ein Kommentar. Kommentar. Kommentar. Kommentar. Kommentar. zufaelliger ist Dies zufaelliger ist zufaelliger zufaelliger zufaelliger ein ist ist ein Kommentar. Kommentar. ist Kommentar. ist ist Kommentar. ist ein ist ein ein Kommentar. Kommentar. ein Kommentar. Dies ein ist Dies ein ein ein Dies Kommentar. ist Kommentar. ein Dies Dies zufaelliger ist ist ein zufaelliger Kommentar. Dies ein ist Kommentar. ein Kommentar. zufaelliger ein ist ist ist ist ist ist ein ist zufaelliger ist Kommentar. ein Kommentar. Kommentar. Kommentar. ist ist Kommentar. zufaelliger ein Dies Kommentar. ein ist ein ist ist zufaelliger zufaelliger ein zufaelliger ist zufaelliger ist ist ein Dies Dies ist zufaelliger zufaelliger zufaelliger ein ein ein Kommentar. Kommentar. Kommentar. Dies Kommentar. ein Kommentar. Kommentar. ist Dies ist zufaelliger Dies zufaelliger zufaelliger Dies zufaelliger ein ist Dies Dies ist ist Dies ein Kommentar. Dies ein zufaelliger zufaelliger Dies Dies ein Dies Kommentar. Kommentar. Kommentar. Kommentar. zufaelliger Dies zufaelliger ein Kommentar. zufaelliger ist ist Kommentar. Kommentar. Kommentar. Kommentar. ist zufaelliger Kommentar. Dies Kommentar. ist ist Kommentar. ist ein ist Dies ist Dies zufaelliger Dies ist ein ein Kommentar. ein ein zufaelliger ein ein Dies zufaelliger ist zufaelliger Dies Dies ein Dies ist Kommentar. zufaelliger zufaelliger zufaelliger ein ein Kommentar. Kommentar. Dies Dies Kommentar. Dies ein zufaelliger ist zufaelliger ein ist Kommentar. Dies ist Dies Dies ein ist Dies')
SET IDENTITY_INSERT [dbo].[Abteilung] OFF
GO
SET IDENTITY_INSERT [dbo].[Beruf] ON 

INSERT [dbo].[Beruf] ([Beruf_ID], [Beruf], [Kommentar]) VALUES (1, N'Director of Finance', NULL)
INSERT [dbo].[Beruf] ([Beruf_ID], [Beruf], [Kommentar]) VALUES (2, N'Reseller Manager', N'')
INSERT [dbo].[Beruf] ([Beruf_ID], [Beruf], [Kommentar]) VALUES (3, N'Director of Customer Support', N'ist Dies Dies ein ein ist Dies Kommentar. ein Dies Dies Kommentar. Kommentar. ein Kommentar. zufaelliger Kommentar. ist zufaelliger Dies ein Kommentar. ein Kommentar. ist zufaelliger ist Dies Dies Kommentar. zufaelliger ist zufaelliger zufaelliger zufaelliger Kommentar. Kommentar. zufaelliger ein Dies Kommentar. zufaelliger Dies ist zufaelliger Kommentar. Kommentar. ein Kommentar. Dies ein zufaelliger ist Dies ein ein zufaelliger zufaelliger ist zufaelliger Dies ist Kommentar. zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. ist Kommentar. ein ist zufaelliger ein Kommentar. Kommentar. ein ist ist ein ist Dies Dies Dies Dies ist Dies Kommentar. zufaelliger zufaelliger ist ist zufaelliger zufaelliger ist ist ist ein ein zufaelliger ein Kommentar. zufaelliger Dies Dies ist ein Kommentar. ist Kommentar. Dies Kommentar. ein Kommentar. Dies Dies ist ein ein ist Dies ein Kommentar. Kommentar. ist ein ein Dies ein Dies ist Dies Dies ein ist ein ist zufaelliger ist ein zufaelliger Kommentar. Dies Kommentar. ein ein Dies Dies ein ein Kommentar. zufaelliger Kommentar. Dies Dies Kommentar. ein ist Dies Dies zufaelliger Dies ist Dies Kommentar. Kommentar. ein ist zufaelliger ist Kommentar. Dies ist ist Dies Dies ein ist zufaelliger zufaelliger Dies ein Dies ist Kommentar. ein Kommentar. ist ein ist ist Kommentar. Kommentar. ist Kommentar. zufaelliger ist zufaelliger Dies Dies Kommentar. ein zufaelliger Kommentar. ein zufaelliger zufaelliger zufaelliger ein Dies ist Kommentar. ein Dies Kommentar. Kommentar. zufaelliger Kommentar. ein zufaelliger zufaelliger Dies Kommentar. ein ist Dies Kommentar. zufaelliger Dies Kommentar. ein ein zufaelliger ein ist Kommentar. zufaelliger Dies ein Dies ist ist ist ist Dies Kommentar. ist ist Dies ist Dies Dies Kommentar. ein Dies ist zufaelliger Kommentar. ein ist ein ein ein ein Dies ist ist ein Dies ein Kommentar. ein ein ein Dies zufaelliger ist zufaelliger Kommentar. Kommentar. ist Kommentar. ein Kommentar. ein zufaelliger ein Dies zufaelliger ist zufaelliger ist ein ein Kommentar. Dies Dies Kommentar. zufaelliger zufaelliger ein Dies ist ein zufaelliger ein Dies ein Kommentar. Kommentar. ist ist Dies zufaelliger Dies ist ist ein Kommentar. Dies ein ein Kommentar. zufaelliger Dies ist zufaelliger zufaelliger Kommentar. Kommentar. Kommentar. ist ein ist ein ist Dies zufaelliger Kommentar. ein Dies Dies Kommentar. ist ist Dies ein Dies Dies ein zufaelliger zufaelliger Kommentar. ein ist zufaelliger ein zufaelliger Dies ein zufaelliger ein ein ein Dies Dies Dies ein zufaelliger ein Kommentar. Dies ein Kommentar. ein ist zufaelliger Kommentar. Kommentar. zufaelliger ist ist zufaelliger Dies zufaelliger Dies ein Kommentar. ein zufaelliger zufaelliger Dies Kommentar. Dies ist zufaelliger')
INSERT [dbo].[Beruf] ([Beruf_ID], [Beruf], [Kommentar]) VALUES (4, N'Procurement Manager', N'Dies ein Kommentar. ist ein Kommentar. Kommentar. Dies zufaelliger zufaelliger ein ist Dies Kommentar. zufaelliger ist zufaelliger ein zufaelliger ist Dies ist ist zufaelliger zufaelliger Dies zufaelliger ein zufaelliger ein ist zufaelliger zufaelliger ein Dies ein Dies zufaelliger Dies ist ist ist zufaelliger ist Kommentar. ist Dies zufaelliger ist ist ein ist ein Kommentar. ist Dies ist zufaelliger Kommentar. ein zufaelliger ein ist Kommentar. ist ist ist ein Kommentar. Dies Dies Kommentar. ist ein zufaelliger zufaelliger zufaelliger zufaelliger ein Kommentar. ein Kommentar. ein Kommentar. Kommentar. ein zufaelliger zufaelliger ist zufaelliger ist Dies Kommentar. Kommentar. zufaelliger ist zufaelliger ein Dies zufaelliger Dies ein zufaelliger Dies Kommentar. Dies Dies zufaelliger zufaelliger zufaelliger zufaelliger Dies Kommentar. Kommentar. ist ein Dies Dies ist ein ein ist ist Dies Dies ein Kommentar. zufaelliger Kommentar. ist ist zufaelliger Kommentar. Dies ist zufaelliger Kommentar. zufaelliger Dies ein ist Dies Kommentar. ein zufaelliger ist ist Dies Kommentar. Kommentar. ist ist ist zufaelliger ist ist Kommentar. ein ein zufaelliger ein ein ein zufaelliger ein ist zufaelliger ein Kommentar. Dies ist Kommentar. ein zufaelliger ein Dies Dies ist ein zufaelliger Kommentar. Kommentar. Dies Dies Kommentar. Kommentar. Kommentar. ein Kommentar. Kommentar. ist ist ein Kommentar. zufaelliger Kommentar. ist Kommentar. zufaelliger zufaelliger Dies Kommentar. zufaelliger Dies Kommentar. ist Kommentar. Kommentar. Kommentar. ist zufaelliger Kommentar. zufaelliger Dies ist zufaelliger Kommentar. ein Kommentar. ein ist ist Kommentar. Kommentar. ist ein ein ein zufaelliger ist zufaelliger zufaelliger ist Kommentar. ist ist zufaelliger zufaelliger Kommentar. Kommentar. ein ein Kommentar. ein ist ist Kommentar. Dies ein ist zufaelliger Kommentar. ein Kommentar. Dies zufaelliger ein ein Kommentar. ein Kommentar. Kommentar. zufaelliger ein ist ist ein ist Kommentar. zufaelliger Kommentar. ein ist ein zufaelliger zufaelliger Dies ist ein ist ein ist Kommentar. ist ist ist ein ist ein ist ein Kommentar. zufaelliger Dies zufaelliger Kommentar. ist Dies ist Kommentar. Dies zufaelliger zufaelliger Kommentar. ist zufaelliger zufaelliger Dies zufaelliger Dies ein zufaelliger ist Dies ist Kommentar. ist Kommentar. Kommentar. ein zufaelliger zufaelliger zufaelliger Dies Kommentar. ein Dies ist ist zufaelliger ein ist ein ist ein Kommentar. Kommentar. ein ein Dies zufaelliger zufaelliger ist zufaelliger zufaelliger zufaelliger Dies Kommentar. Dies zufaelliger ist')
INSERT [dbo].[Beruf] ([Beruf_ID], [Beruf], [Kommentar]) VALUES (5, N'Communication Consultant', N'Kommentar. Kommentar. ein ein Kommentar. Dies ein ein zufaelliger zufaelliger zufaelliger ist Kommentar. Kommentar. Dies ein ist ein Dies Kommentar. Kommentar. Kommentar. ist zufaelliger zufaelliger ein Kommentar. ein ist zufaelliger Kommentar. ein zufaelliger ist ein Kommentar. Dies Kommentar. ist Kommentar. zufaelliger ein zufaelliger ein Dies ist Kommentar. Dies zufaelliger Dies Kommentar. ein ist zufaelliger Dies ein zufaelliger ein ist Dies ist ist ist ein Kommentar. ein ein Kommentar. ist Dies ist Dies zufaelliger Kommentar. Dies ein ein zufaelliger ein ist Kommentar. ein zufaelliger Dies Kommentar. ein Kommentar. ein Kommentar. Kommentar. ist zufaelliger ein ist ein zufaelliger zufaelliger Dies ist ein Dies ein ein ein zufaelliger Kommentar. Dies ein ein ein zufaelliger Kommentar. ist Kommentar. ist ein ist zufaelliger zufaelliger zufaelliger zufaelliger ist zufaelliger ist ist Kommentar. ein Kommentar. ein ein ein ist ist zufaelliger ist ist')
INSERT [dbo].[Beruf] ([Beruf_ID], [Beruf], [Kommentar]) VALUES (6, N'Software Engineer', N'Dies ein ein ist Dies ist Kommentar. ein zufaelliger ist ist Kommentar. ist Dies Kommentar. ein zufaelliger Dies Kommentar. ein zufaelliger zufaelliger Kommentar. ist Dies ist ein zufaelliger Kommentar. ein ein ein ein ein zufaelliger zufaelliger ist ist ist Dies ein ist Kommentar. Kommentar. Kommentar. zufaelliger ist ein Kommentar. Kommentar. Kommentar. Dies Kommentar. ist ist Dies Dies ein Dies Dies ist ist ein ein zufaelliger zufaelliger ist Kommentar. ein Dies ein Dies Kommentar. ist Kommentar. Kommentar. Kommentar. Kommentar. Dies ist ein Kommentar. ist zufaelliger ist Kommentar. zufaelliger ein zufaelliger ein ist ein ein ein Dies zufaelliger Dies Dies ein Kommentar. Kommentar. ist ist zufaelliger ein zufaelliger zufaelliger')
INSERT [dbo].[Beruf] ([Beruf_ID], [Beruf], [Kommentar]) VALUES (7, N'Assistant', N'')
INSERT [dbo].[Beruf] ([Beruf_ID], [Beruf], [Kommentar]) VALUES (8, N'Vice President', N'')
INSERT [dbo].[Beruf] ([Beruf_ID], [Beruf], [Kommentar]) VALUES (9, N'Design Engineer', N'Dies ist Dies zufaelliger Kommentar. ein Dies ist Dies Dies zufaelliger ist ein ein ist zufaelliger ein zufaelliger Dies Dies ist ein ein ein zufaelliger ist Kommentar. Dies zufaelliger zufaelliger zufaelliger Kommentar. ist ist zufaelliger zufaelliger Kommentar. Dies ein Kommentar. ist Kommentar. Kommentar. ein Kommentar. ist ein Dies Kommentar. ist Kommentar. Kommentar. ein ein Dies zufaelliger ist Kommentar. zufaelliger ist ein Dies ist Dies ist Kommentar. ist Kommentar. Dies Kommentar. Kommentar. zufaelliger ein zufaelliger ist Kommentar. ist zufaelliger Dies ist ein Dies Kommentar. ist ein Kommentar. ein ist zufaelliger zufaelliger ist zufaelliger Kommentar. ist ein ist zufaelliger Dies Kommentar. zufaelliger zufaelliger Dies ein zufaelliger Kommentar. ist ein ist zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. zufaelliger ist ist ein Kommentar. ist ist ist ist ein ein Kommentar. zufaelliger Kommentar. zufaelliger ein zufaelliger Dies zufaelliger Dies ein zufaelliger zufaelliger Kommentar. Kommentar. Dies ein zufaelliger zufaelliger Kommentar. ist Dies ein Kommentar. Dies zufaelliger ein ist ein Kommentar. Dies ist ein ein Dies Kommentar. ein zufaelliger Kommentar. Kommentar. ist Kommentar. Kommentar. ein ist Kommentar. ist Kommentar. Kommentar. Kommentar. ist Kommentar. Dies zufaelliger Dies Dies Dies Dies zufaelliger Dies zufaelliger ein ist ein Dies Kommentar. zufaelliger zufaelliger zufaelliger ist Kommentar. ist Kommentar. zufaelliger zufaelliger zufaelliger Kommentar. ist Dies Kommentar. Dies zufaelliger Kommentar. ein Dies ist Kommentar. ein ist Dies zufaelliger')
INSERT [dbo].[Beruf] ([Beruf_ID], [Beruf], [Kommentar]) VALUES (10, N'Network Administrator', N'ein Dies ein Dies Dies zufaelliger ein ist Dies ein Kommentar. ist zufaelliger ein ein Kommentar. zufaelliger Kommentar. Kommentar. ein ist ein ein ist Dies ist Dies zufaelliger zufaelliger Kommentar. Dies Kommentar. ein ist Dies Dies Dies ein Kommentar. zufaelliger ein Kommentar. zufaelliger zufaelliger Dies Kommentar. Kommentar. ein ein Kommentar. Kommentar. ist ein Kommentar. ein Kommentar. Dies Kommentar. Kommentar. ist Dies Kommentar. zufaelliger Dies Dies ein ist Kommentar. Dies Dies ist Kommentar. ein Dies zufaelliger Dies zufaelliger Dies zufaelliger zufaelliger ein zufaelliger zufaelliger ist ist Kommentar. ein zufaelliger ein ein Kommentar. Kommentar. Dies Kommentar. Kommentar. ein zufaelliger Kommentar. ein ist Kommentar. zufaelliger Kommentar. ein Dies Dies Dies ein ein ein ein zufaelliger ist zufaelliger Dies ist ein ist ist Dies zufaelliger Dies zufaelliger ein Dies ist Dies zufaelliger ein Dies Dies Kommentar. Kommentar. Kommentar. zufaelliger ist ist Kommentar. Dies Kommentar. Kommentar. zufaelliger zufaelliger Kommentar. ist Kommentar. ein ist Kommentar. Dies Kommentar. ein ein ein ist zufaelliger ein Dies Dies zufaelliger zufaelliger ein Kommentar. ist Kommentar. ein Kommentar. zufaelliger zufaelliger Kommentar. ein zufaelliger ein Kommentar. ein ist zufaelliger zufaelliger ein ist ein Dies ein Kommentar. Kommentar. ist zufaelliger zufaelliger ein ist Dies ist ein Kommentar. ein ist ein ein Kommentar. ist ist ist Dies Kommentar. zufaelliger zufaelliger zufaelliger Dies zufaelliger ist Kommentar. ist ein ist Dies ist Kommentar. Kommentar. ein Dies Kommentar. zufaelliger ist Kommentar. ein ist Dies ist ein zufaelliger Dies ein ist ist Dies ein Kommentar. Kommentar. Kommentar. Kommentar. Kommentar. zufaelliger ist Dies zufaelliger ist zufaelliger zufaelliger zufaelliger ein ist ist ein Kommentar. Kommentar. ist Kommentar. ist ist Kommentar. ist ein ist ein ein Kommentar. Kommentar. ein Kommentar. Dies ein ist Dies ein ein ein Dies Kommentar. ist Kommentar. ein Dies Dies zufaelliger ist ist ein zufaelliger Kommentar. Dies ein ist Kommentar. ein Kommentar. zufaelliger ein ist ist ist ist ist ist ein ist zufaelliger ist Kommentar. ein Kommentar. Kommentar. Kommentar. ist ist Kommentar. zufaelliger ein Dies Kommentar. ein ist ein ist ist zufaelliger zufaelliger ein zufaelliger ist zufaelliger ist ist ein Dies Dies ist zufaelliger zufaelliger zufaelliger ein ein ein Kommentar. Kommentar. Kommentar. Dies Kommentar. ein Kommentar. Kommentar. ist Dies ist zufaelliger Dies zufaelliger zufaelliger Dies zufaelliger ein ist Dies Dies ist ist Dies ein Kommentar. Dies ein zufaelliger zufaelliger Dies Dies ein Dies Kommentar. Kommentar. Kommentar. Kommentar. zufaelliger Dies zufaelliger ein Kommentar. zufaelliger ist ist Kommentar. Kommentar. Kommentar. Kommentar. ist zufaelliger Kommentar. Dies Kommentar. ist ist Kommentar. ist ein ist Dies ist Dies zufaelliger Dies ist ein ein Kommentar. ein ein zufaelliger ein ein Dies zufaelliger ist zufaelliger Dies Dies ein Dies ist Kommentar. zufaelliger zufaelliger zufaelliger ein ein Kommentar. Kommentar. Dies Dies Kommentar. Dies ein zufaelliger ist zufaelliger ein ist Kommentar. Dies ist Dies Dies ein ist Dies')
SET IDENTITY_INSERT [dbo].[Beruf] OFF
GO
SET IDENTITY_INSERT [dbo].[Bonitaet] ON 

INSERT [dbo].[Bonitaet] ([Bonitaet_ID], [Score], [Bezeichnung], [Kommentar]) VALUES (1, 97, N'Sehr geringes Risiko', NULL)
INSERT [dbo].[Bonitaet] ([Bonitaet_ID], [Score], [Bezeichnung], [Kommentar]) VALUES (2, 95, N'Geringes bis überschaubares Risiko', N'')
INSERT [dbo].[Bonitaet] ([Bonitaet_ID], [Score], [Bezeichnung], [Kommentar]) VALUES (3, 90, N'Zufriedenstellendes bis erhöhtes Risiko', N'ist Dies Dies ein ein ist Dies Kommentar. ein Dies Dies Kommentar. Kommentar. ein Kommentar. zufaelliger Kommentar. ist zufaelliger Dies ein Kommentar. ein Kommentar. ist zufaelliger ist Dies Dies Kommentar. zufaelliger ist zufaelliger zufaelliger zufaelliger Kommentar. Kommentar. zufaelliger ein Dies Kommentar. zufaelliger Dies ist zufaelliger Kommentar. Kommentar. ein Kommentar. Dies ein zufaelliger ist Dies ein ein zufaelliger zufaelliger ist zufaelliger Dies ist Kommentar. zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. ist Kommentar. ein ist zufaelliger ein Kommentar. Kommentar. ein ist ist ein ist Dies Dies Dies Dies ist Dies Kommentar. zufaelliger zufaelliger ist ist zufaelliger zufaelliger ist ist ist ein ein zufaelliger ein Kommentar. zufaelliger Dies Dies ist ein Kommentar. ist Kommentar. Dies Kommentar. ein Kommentar. Dies Dies ist ein ein ist Dies ein Kommentar. Kommentar. ist ein ein Dies ein Dies ist Dies Dies ein ist ein ist zufaelliger ist ein zufaelliger Kommentar. Dies Kommentar. ein ein Dies Dies ein ein Kommentar. zufaelliger Kommentar. Dies Dies Kommentar. ein ist Dies Dies zufaelliger Dies ist Dies Kommentar. Kommentar. ein ist zufaelliger ist Kommentar. Dies ist ist Dies Dies ein ist zufaelliger zufaelliger Dies ein Dies ist Kommentar. ein Kommentar. ist ein ist ist Kommentar. Kommentar. ist Kommentar. zufaelliger ist zufaelliger Dies Dies Kommentar. ein zufaelliger Kommentar. ein zufaelliger zufaelliger zufaelliger ein Dies ist Kommentar. ein Dies Kommentar. Kommentar. zufaelliger Kommentar. ein zufaelliger zufaelliger Dies Kommentar. ein ist Dies Kommentar. zufaelliger Dies Kommentar. ein ein zufaelliger ein ist Kommentar. zufaelliger Dies ein Dies ist ist ist ist Dies Kommentar. ist ist Dies ist Dies Dies Kommentar. ein Dies ist zufaelliger Kommentar. ein ist ein ein ein ein Dies ist ist ein Dies ein Kommentar. ein ein ein Dies zufaelliger ist zufaelliger Kommentar. Kommentar. ist Kommentar. ein Kommentar. ein zufaelliger ein Dies zufaelliger ist zufaelliger ist ein ein Kommentar. Dies Dies Kommentar. zufaelliger zufaelliger ein Dies ist ein zufaelliger ein Dies ein Kommentar. Kommentar. ist ist Dies zufaelliger Dies ist ist ein Kommentar. Dies ein ein Kommentar. zufaelliger Dies ist zufaelliger zufaelliger Kommentar. Kommentar. Kommentar. ist ein ist ein ist Dies zufaelliger Kommentar. ein Dies Dies Kommentar. ist ist Dies ein Dies Dies ein zufaelliger zufaelliger Kommentar. ein ist zufaelliger ein zufaelliger Dies ein zufaelliger ein ein ein Dies Dies Dies ein zufaelliger ein Kommentar. Dies ein Kommentar. ein ist zufaelliger Kommentar. Kommentar. zufaelliger ist ist zufaelliger Dies zufaelliger Dies ein Kommentar. ein zufaelliger zufaelliger Dies Kommentar. Dies ist zufaelliger')
INSERT [dbo].[Bonitaet] ([Bonitaet_ID], [Score], [Bezeichnung], [Kommentar]) VALUES (4, 80, N'Deutlich erhöhtes bis hohes Risiko', N'Dies ein Kommentar. ist ein Kommentar. Kommentar. Dies zufaelliger zufaelliger ein ist Dies Kommentar. zufaelliger ist zufaelliger ein zufaelliger ist Dies ist ist zufaelliger zufaelliger Dies zufaelliger ein zufaelliger ein ist zufaelliger zufaelliger ein Dies ein Dies zufaelliger Dies ist ist ist zufaelliger ist Kommentar. ist Dies zufaelliger ist ist ein ist ein Kommentar. ist Dies ist zufaelliger Kommentar. ein zufaelliger ein ist Kommentar. ist ist ist ein Kommentar. Dies Dies Kommentar. ist ein zufaelliger zufaelliger zufaelliger zufaelliger ein Kommentar. ein Kommentar. ein Kommentar. Kommentar. ein zufaelliger zufaelliger ist zufaelliger ist Dies Kommentar. Kommentar. zufaelliger ist zufaelliger ein Dies zufaelliger Dies ein zufaelliger Dies Kommentar. Dies Dies zufaelliger zufaelliger zufaelliger zufaelliger Dies Kommentar. Kommentar. ist ein Dies Dies ist ein ein ist ist Dies Dies ein Kommentar. zufaelliger Kommentar. ist ist zufaelliger Kommentar. Dies ist zufaelliger Kommentar. zufaelliger Dies ein ist Dies Kommentar. ein zufaelliger ist ist Dies Kommentar. Kommentar. ist ist ist zufaelliger ist ist Kommentar. ein ein zufaelliger ein ein ein zufaelliger ein ist zufaelliger ein Kommentar. Dies ist Kommentar. ein zufaelliger ein Dies Dies ist ein zufaelliger Kommentar. Kommentar. Dies Dies Kommentar. Kommentar. Kommentar. ein Kommentar. Kommentar. ist ist ein Kommentar. zufaelliger Kommentar. ist Kommentar. zufaelliger zufaelliger Dies Kommentar. zufaelliger Dies Kommentar. ist Kommentar. Kommentar. Kommentar. ist zufaelliger Kommentar. zufaelliger Dies ist zufaelliger Kommentar. ein Kommentar. ein ist ist Kommentar. Kommentar. ist ein ein ein zufaelliger ist zufaelliger zufaelliger ist Kommentar. ist ist zufaelliger zufaelliger Kommentar. Kommentar. ein ein Kommentar. ein ist ist Kommentar. Dies ein ist zufaelliger Kommentar. ein Kommentar. Dies zufaelliger ein ein Kommentar. ein Kommentar. Kommentar. zufaelliger ein ist ist ein ist Kommentar. zufaelliger Kommentar. ein ist ein zufaelliger zufaelliger Dies ist ein ist ein ist Kommentar. ist ist ist ein ist ein ist ein Kommentar. zufaelliger Dies zufaelliger Kommentar. ist Dies ist Kommentar. Dies zufaelliger zufaelliger Kommentar. ist zufaelliger zufaelliger Dies zufaelliger Dies ein zufaelliger ist Dies ist Kommentar. ist Kommentar. Kommentar. ein zufaelliger zufaelliger zufaelliger Dies Kommentar. ein Dies ist ist zufaelliger ein ist ein ist ein Kommentar. Kommentar. ein ein Dies zufaelliger zufaelliger ist zufaelliger zufaelliger zufaelliger Dies Kommentar. Dies zufaelliger ist')
INSERT [dbo].[Bonitaet] ([Bonitaet_ID], [Score], [Bezeichnung], [Kommentar]) VALUES (5, 50, N'Sehr hohes Risiko', N'Kommentar. Kommentar. ein ein Kommentar. Dies ein ein zufaelliger zufaelliger zufaelliger ist Kommentar. Kommentar. Dies ein ist ein Dies Kommentar. Kommentar. Kommentar. ist zufaelliger zufaelliger ein Kommentar. ein ist zufaelliger Kommentar. ein zufaelliger ist ein Kommentar. Dies Kommentar. ist Kommentar. zufaelliger ein zufaelliger ein Dies ist Kommentar. Dies zufaelliger Dies Kommentar. ein ist zufaelliger Dies ein zufaelliger ein ist Dies ist ist ist ein Kommentar. ein ein Kommentar. ist Dies ist Dies zufaelliger Kommentar. Dies ein ein zufaelliger ein ist Kommentar. ein zufaelliger Dies Kommentar. ein Kommentar. ein Kommentar. Kommentar. ist zufaelliger ein ist ein zufaelliger zufaelliger Dies ist ein Dies ein ein ein zufaelliger Kommentar. Dies ein ein ein zufaelliger Kommentar. ist Kommentar. ist ein ist zufaelliger zufaelliger zufaelliger zufaelliger ist zufaelliger ist ist Kommentar. ein Kommentar. ein ein ein ist ist zufaelliger ist ist')
INSERT [dbo].[Bonitaet] ([Bonitaet_ID], [Score], [Bezeichnung], [Kommentar]) VALUES (6, 49, N'Sehr kritisches Risiko', N'Dies ein ein ist Dies ist Kommentar. ein zufaelliger ist ist Kommentar. ist Dies Kommentar. ein zufaelliger Dies Kommentar. ein zufaelliger zufaelliger Kommentar. ist Dies ist ein zufaelliger Kommentar. ein ein ein ein ein zufaelliger zufaelliger ist ist ist Dies ein ist Kommentar. Kommentar. Kommentar. zufaelliger ist ein Kommentar. Kommentar. Kommentar. Dies Kommentar. ist ist Dies Dies ein Dies Dies ist ist ein ein zufaelliger zufaelliger ist Kommentar. ein Dies ein Dies Kommentar. ist Kommentar. Kommentar. Kommentar. Kommentar. Dies ist ein Kommentar. ist zufaelliger ist Kommentar. zufaelliger ein zufaelliger ein ist ein ein ein Dies zufaelliger Dies Dies ein Kommentar. Kommentar. ist ist zufaelliger ein zufaelliger zufaelliger')
SET IDENTITY_INSERT [dbo].[Bonitaet] OFF
GO
SET IDENTITY_INSERT [dbo].[Konto] ON 

INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (1, 9999999999, CAST(N'2017-02-27T15:20:16.630' AS DateTime), CAST(476.5569 AS Decimal(19, 4)), CAST(-750.0000 AS Decimal(19, 4)), 0, 2, 1, 4, NULL)
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (2, 6643554845, CAST(N'2020-03-24T23:07:41.740' AS DateTime), CAST(33.7424 AS Decimal(19, 4)), CAST(-1500.0000 AS Decimal(19, 4)), 0, 2, 2, 5, N'')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (3, 7543554846, CAST(N'2018-01-17T12:29:27.010' AS DateTime), CAST(0.0432 AS Decimal(19, 4)), CAST(-2250.0000 AS Decimal(19, 4)), 0, 2, 3, 2, N'ist Dies Dies ein ein ist Dies Kommentar. ein Dies Dies Kommentar. Kommentar. ein Kommentar. zufaelliger Kommentar. ist zufaelliger Dies ein Kommentar. ein Kommentar. ist zufaelliger ist Dies Dies Kommentar. zufaelliger ist zufaelliger zufaelliger zufaelliger Kommentar. Kommentar. zufaelliger ein Dies Kommentar. zufaelliger Dies ist zufaelliger Kommentar. Kommentar. ein Kommentar. Dies ein zufaelliger ist Dies ein ein zufaelliger zufaelliger ist zufaelliger Dies ist Kommentar. zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. ist Kommentar. ein ist zufaelliger ein Kommentar. Kommentar. ein ist ist ein ist Dies Dies Dies Dies ist Dies Kommentar. zufaelliger zufaelliger ist ist zufaelliger zufaelliger ist ist ist ein ein zufaelliger ein Kommentar. zufaelliger Dies Dies ist ein Kommentar. ist Kommentar. Dies Kommentar. ein Kommentar. Dies Dies ist ein ein ist Dies ein Kommentar. Kommentar. ist ein ein Dies ein Dies ist Dies Dies ein ist ein ist zufaelliger ist ein zufaelliger Kommentar. Dies Kommentar. ein ein Dies Dies ein ein Kommentar. zufaelliger Kommentar. Dies Dies Kommentar. ein ist Dies Dies zufaelliger Dies ist Dies Kommentar. Kommentar. ein ist zufaelliger ist Kommentar. Dies ist ist Dies Dies ein ist zufaelliger zufaelliger Dies ein Dies ist Kommentar. ein Kommentar. ist ein ist ist Kommentar. Kommentar. ist Kommentar. zufaelliger ist zufaelliger Dies Dies Kommentar. ein zufaelliger Kommentar. ein zufaelliger zufaelliger zufaelliger ein Dies ist Kommentar. ein Dies Kommentar. Kommentar. zufaelliger Kommentar. ein zufaelliger zufaelliger Dies Kommentar. ein ist Dies Kommentar. zufaelliger Dies Kommentar. ein ein zufaelliger ein ist Kommentar. zufaelliger Dies ein Dies ist ist ist ist Dies Kommentar. ist ist Dies ist Dies Dies Kommentar. ein Dies ist zufaelliger Kommentar. ein ist ein ein ein ein Dies ist ist ein Dies ein Kommentar. ein ein ein Dies zufaelliger ist zufaelliger Kommentar. Kommentar. ist Kommentar. ein Kommentar. ein zufaelliger ein Dies zufaelliger ist zufaelliger ist ein ein Kommentar. Dies Dies Kommentar. zufaelliger zufaelliger ein Dies ist ein zufaelliger ein Dies ein Kommentar. Kommentar. ist ist Dies zufaelliger Dies ist ist ein Kommentar. Dies ein ein Kommentar. zufaelliger Dies ist zufaelliger zufaelliger Kommentar. Kommentar. Kommentar. ist ein ist ein ist Dies zufaelliger Kommentar. ein Dies Dies Kommentar. ist ist Dies ein Dies Dies ein zufaelliger zufaelliger Kommentar. ein ist zufaelliger ein zufaelliger Dies ein zufaelliger ein ein ein Dies Dies Dies ein zufaelliger ein Kommentar. Dies ein Kommentar. ein ist zufaelliger Kommentar. Kommentar. zufaelliger ist ist zufaelliger Dies zufaelliger Dies ein Kommentar. ein zufaelliger zufaelliger Dies Kommentar. Dies ist zufaelliger')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (4, 2346877021, CAST(N'2019-04-20T11:53:28.330' AS DateTime), CAST(-154.9762 AS Decimal(19, 4)), CAST(-3000.0000 AS Decimal(19, 4)), 0, 1, 4, 6, N'Dies ein Kommentar. ist ein Kommentar. Kommentar. Dies zufaelliger zufaelliger ein ist Dies Kommentar. zufaelliger ist zufaelliger ein zufaelliger ist Dies ist ist zufaelliger zufaelliger Dies zufaelliger ein zufaelliger ein ist zufaelliger zufaelliger ein Dies ein Dies zufaelliger Dies ist ist ist zufaelliger ist Kommentar. ist Dies zufaelliger ist ist ein ist ein Kommentar. ist Dies ist zufaelliger Kommentar. ein zufaelliger ein ist Kommentar. ist ist ist ein Kommentar. Dies Dies Kommentar. ist ein zufaelliger zufaelliger zufaelliger zufaelliger ein Kommentar. ein Kommentar. ein Kommentar. Kommentar. ein zufaelliger zufaelliger ist zufaelliger ist Dies Kommentar. Kommentar. zufaelliger ist zufaelliger ein Dies zufaelliger Dies ein zufaelliger Dies Kommentar. Dies Dies zufaelliger zufaelliger zufaelliger zufaelliger Dies Kommentar. Kommentar. ist ein Dies Dies ist ein ein ist ist Dies Dies ein Kommentar. zufaelliger Kommentar. ist ist zufaelliger Kommentar. Dies ist zufaelliger Kommentar. zufaelliger Dies ein ist Dies Kommentar. ein zufaelliger ist ist Dies Kommentar. Kommentar. ist ist ist zufaelliger ist ist Kommentar. ein ein zufaelliger ein ein ein zufaelliger ein ist zufaelliger ein Kommentar. Dies ist Kommentar. ein zufaelliger ein Dies Dies ist ein zufaelliger Kommentar. Kommentar. Dies Dies Kommentar. Kommentar. Kommentar. ein Kommentar. Kommentar. ist ist ein Kommentar. zufaelliger Kommentar. ist Kommentar. zufaelliger zufaelliger Dies Kommentar. zufaelliger Dies Kommentar. ist Kommentar. Kommentar. Kommentar. ist zufaelliger Kommentar. zufaelliger Dies ist zufaelliger Kommentar. ein Kommentar. ein ist ist Kommentar. Kommentar. ist ein ein ein zufaelliger ist zufaelliger zufaelliger ist Kommentar. ist ist zufaelliger zufaelliger Kommentar. Kommentar. ein ein Kommentar. ein ist ist Kommentar. Dies ein ist zufaelliger Kommentar. ein Kommentar. Dies zufaelliger ein ein Kommentar. ein Kommentar. Kommentar. zufaelliger ein ist ist ein ist Kommentar. zufaelliger Kommentar. ein ist ein zufaelliger zufaelliger Dies ist ein ist ein ist Kommentar. ist ist ist ein ist ein ist ein Kommentar. zufaelliger Dies zufaelliger Kommentar. ist Dies ist Kommentar. Dies zufaelliger zufaelliger Kommentar. ist zufaelliger zufaelliger Dies zufaelliger Dies ein zufaelliger ist Dies ist Kommentar. ist Kommentar. Kommentar. ein zufaelliger zufaelliger zufaelliger Dies Kommentar. ein Dies ist ist zufaelliger ein ist ein ist ein Kommentar. Kommentar. ein ein Dies zufaelliger zufaelliger ist zufaelliger zufaelliger zufaelliger Dies Kommentar. Dies zufaelliger ist')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (5, 4976897168, CAST(N'2021-05-17T22:45:37.330' AS DateTime), CAST(33.0265 AS Decimal(19, 4)), CAST(-750.0000 AS Decimal(19, 4)), 0, 2, 1, 1, N'Kommentar. Kommentar. ein ein Kommentar. Dies ein ein zufaelliger zufaelliger zufaelliger ist Kommentar. Kommentar. Dies ein ist ein Dies Kommentar. Kommentar. Kommentar. ist zufaelliger zufaelliger ein Kommentar. ein ist zufaelliger Kommentar. ein zufaelliger ist ein Kommentar. Dies Kommentar. ist Kommentar. zufaelliger ein zufaelliger ein Dies ist Kommentar. Dies zufaelliger Dies Kommentar. ein ist zufaelliger Dies ein zufaelliger ein ist Dies ist ist ist ein Kommentar. ein ein Kommentar. ist Dies ist Dies zufaelliger Kommentar. Dies ein ein zufaelliger ein ist Kommentar. ein zufaelliger Dies Kommentar. ein Kommentar. ein Kommentar. Kommentar. ist zufaelliger ein ist ein zufaelliger zufaelliger Dies ist ein Dies ein ein ein zufaelliger Kommentar. Dies ein ein ein zufaelliger Kommentar. ist Kommentar. ist ein ist zufaelliger zufaelliger zufaelliger zufaelliger ist zufaelliger ist ist Kommentar. ein Kommentar. ein ein ein ist ist zufaelliger ist ist')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (6, 9920597164, CAST(N'2022-04-14T16:05:14.010' AS DateTime), CAST(5.2390 AS Decimal(19, 4)), CAST(-1500.0000 AS Decimal(19, 4)), 0, 1, 2, 2, NULL)
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (7, 5876897169, CAST(N'2017-02-25T00:19:51.050' AS DateTime), CAST(2189.3101 AS Decimal(19, 4)), CAST(-2250.0000 AS Decimal(19, 4)), 1, 1, 3, 6, NULL)
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (8, 4976897169, CAST(N'2020-01-13T05:29:20.960' AS DateTime), CAST(-14.0504 AS Decimal(19, 4)), CAST(-750.0000 AS Decimal(19, 4)), 0, 1, 1, 4, N'Dies ein ein ist Dies ist Kommentar. ein zufaelliger ist ist Kommentar. ist Dies Kommentar. ein zufaelliger Dies Kommentar. ein zufaelliger zufaelliger Kommentar. ist Dies ist ein zufaelliger Kommentar. ein ein ein ein ein zufaelliger zufaelliger ist ist ist Dies ein ist Kommentar. Kommentar. Kommentar. zufaelliger ist ein Kommentar. Kommentar. Kommentar. Dies Kommentar. ist ist Dies Dies ein Dies Dies ist ist ein ein zufaelliger zufaelliger ist Kommentar. ein Dies ein Dies Kommentar. ist Kommentar. Kommentar. Kommentar. Kommentar. Dies ist ein Kommentar. ist zufaelliger ist Kommentar. zufaelliger ein zufaelliger ein ist ein ein ein Dies zufaelliger Dies Dies ein Kommentar. Kommentar. ist ist zufaelliger ein zufaelliger zufaelliger')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (9, 1446877021, CAST(N'2017-10-18T23:34:25.790' AS DateTime), CAST(2532.7115 AS Decimal(19, 4)), CAST(-1500.0000 AS Decimal(19, 4)), 0, 2, 2, 2, NULL)
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (10, 4556985398, CAST(N'2016-03-24T19:18:09.910' AS DateTime), CAST(-723.7289 AS Decimal(19, 4)), CAST(-2250.0000 AS Decimal(19, 4)), 0, 2, 3, 4, NULL)
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (11, 9020597167, CAST(N'2015-03-18T08:48:42.570' AS DateTime), CAST(2472.2721 AS Decimal(19, 4)), CAST(-986390339023668.5094 AS Decimal(19, 4)), 0, 1, 4, 3, N'')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (12, 5876897170, CAST(N'2018-05-14T17:04:07.130' AS DateTime), CAST(4760.1461 AS Decimal(19, 4)), CAST(-61.5128 AS Decimal(19, 4)), 0, 1, 6, 6, N'')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (13, 4976897170, CAST(N'2015-02-15T22:27:31.610' AS DateTime), CAST(632.3993 AS Decimal(19, 4)), CAST(468427291457565.2326 AS Decimal(19, 4)), 0, 2, 3, 2, N'Dies ist Dies zufaelliger Kommentar. ein Dies ist Dies Dies zufaelliger ist ein ein ist zufaelliger ein zufaelliger Dies Dies ist ein ein ein zufaelliger ist Kommentar. Dies zufaelliger zufaelliger zufaelliger Kommentar. ist ist zufaelliger zufaelliger Kommentar. Dies ein Kommentar. ist Kommentar. Kommentar. ein Kommentar. ist ein Dies Kommentar. ist Kommentar. Kommentar. ein ein Dies zufaelliger ist Kommentar. zufaelliger ist ein Dies ist Dies ist Kommentar. ist Kommentar. Dies Kommentar. Kommentar. zufaelliger ein zufaelliger ist Kommentar. ist zufaelliger Dies ist ein Dies Kommentar. ist ein Kommentar. ein ist zufaelliger zufaelliger ist zufaelliger Kommentar. ist ein ist zufaelliger Dies Kommentar. zufaelliger zufaelliger Dies ein zufaelliger Kommentar. ist ein ist zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. zufaelliger ist ist ein Kommentar. ist ist ist ist ein ein Kommentar. zufaelliger Kommentar. zufaelliger ein zufaelliger Dies zufaelliger Dies ein zufaelliger zufaelliger Kommentar. Kommentar. Dies ein zufaelliger zufaelliger Kommentar. ist Dies ein Kommentar. Dies zufaelliger ein ist ein Kommentar. Dies ist ein ein Dies Kommentar. ein zufaelliger Kommentar. Kommentar. ist Kommentar. Kommentar. ein ist Kommentar. ist Kommentar. Kommentar. Kommentar. ist Kommentar. Dies zufaelliger Dies Dies Dies Dies zufaelliger Dies zufaelliger ein ist ein Dies Kommentar. zufaelliger zufaelliger zufaelliger ist Kommentar. ist Kommentar. zufaelliger zufaelliger zufaelliger Kommentar. ist Dies Kommentar. Dies zufaelliger Kommentar. ein Dies ist Kommentar. ein ist Dies zufaelliger')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (14, 5876897171, CAST(N'2021-06-17T17:31:47.440' AS DateTime), CAST(-589.1076 AS Decimal(19, 4)), CAST(-741952078053960.5022 AS Decimal(19, 4)), 0, 2, 6, 1, N'')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (15, 6643554846, CAST(N'2021-08-16T11:05:54.980' AS DateTime), CAST(34.7021 AS Decimal(19, 4)), CAST(19784357214810.3226 AS Decimal(19, 4)), 0, 1, 2, 3, N'')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (16, 9920597165, CAST(N'2015-10-31T20:52:35.380' AS DateTime), CAST(4126.1688 AS Decimal(19, 4)), CAST(0.4594 AS Decimal(19, 4)), 0, 1, 3, 5, N'ein Dies ein Dies Dies zufaelliger ein ist Dies ein Kommentar. ist zufaelliger ein ein Kommentar. zufaelliger Kommentar. Kommentar. ein ist ein ein ist Dies ist Dies zufaelliger zufaelliger Kommentar. Dies Kommentar. ein ist Dies Dies Dies ein Kommentar. zufaelliger ein Kommentar. zufaelliger zufaelliger Dies Kommentar. Kommentar. ein ein Kommentar. Kommentar. ist ein Kommentar. ein Kommentar. Dies Kommentar. Kommentar. ist Dies Kommentar. zufaelliger Dies Dies ein ist Kommentar. Dies Dies ist Kommentar. ein Dies zufaelliger Dies zufaelliger Dies zufaelliger zufaelliger ein zufaelliger zufaelliger ist ist Kommentar. ein zufaelliger ein ein Kommentar. Kommentar. Dies Kommentar. Kommentar. ein zufaelliger Kommentar. ein ist Kommentar. zufaelliger Kommentar. ein Dies Dies Dies ein ein ein ein zufaelliger ist zufaelliger Dies ist ein ist ist Dies zufaelliger Dies zufaelliger ein Dies ist Dies zufaelliger ein Dies Dies Kommentar. Kommentar. Kommentar. zufaelliger ist ist Kommentar. Dies Kommentar. Kommentar. zufaelliger zufaelliger Kommentar. ist Kommentar. ein ist Kommentar. Dies Kommentar. ein ein ein ist zufaelliger ein Dies Dies zufaelliger zufaelliger ein Kommentar. ist Kommentar. ein Kommentar. zufaelliger zufaelliger Kommentar. ein zufaelliger ein Kommentar. ein ist zufaelliger zufaelliger ein ist ein Dies ein Kommentar. Kommentar. ist zufaelliger zufaelliger ein ist Dies ist ein Kommentar. ein ist ein ein Kommentar. ist ist ist Dies Kommentar. zufaelliger zufaelliger zufaelliger Dies zufaelliger ist Kommentar. ist ein ist Dies ist Kommentar. Kommentar. ein Dies Kommentar. zufaelliger ist Kommentar. ein ist Dies ist ein zufaelliger Dies ein ist ist Dies ein Kommentar. Kommentar. Kommentar. Kommentar. Kommentar. zufaelliger ist Dies zufaelliger ist zufaelliger zufaelliger zufaelliger ein ist ist ein Kommentar. Kommentar. ist Kommentar. ist ist Kommentar. ist ein ist ein ein Kommentar. Kommentar. ein Kommentar. Dies ein ist Dies ein ein ein Dies Kommentar. ist Kommentar. ein Dies Dies zufaelliger ist ist ein zufaelliger Kommentar. Dies ein ist Kommentar. ein Kommentar. zufaelliger ein ist ist ist ist ist ist ein ist zufaelliger ist Kommentar. ein Kommentar. Kommentar. Kommentar. ist ist Kommentar. zufaelliger ein Dies Kommentar. ein ist ein ist ist zufaelliger zufaelliger ein zufaelliger ist zufaelliger ist ist ein Dies Dies ist zufaelliger zufaelliger zufaelliger ein ein ein Kommentar. Kommentar. Kommentar. Dies Kommentar. ein Kommentar. Kommentar. ist Dies ist zufaelliger Dies zufaelliger zufaelliger Dies zufaelliger ein ist Dies Dies ist ist Dies ein Kommentar. Dies ein zufaelliger zufaelliger Dies Dies ein Dies Kommentar. Kommentar. Kommentar. Kommentar. zufaelliger Dies zufaelliger ein Kommentar. zufaelliger ist ist Kommentar. Kommentar. Kommentar. Kommentar. ist zufaelliger Kommentar. Dies Kommentar. ist ist Kommentar. ist ein ist Dies ist Dies zufaelliger Dies ist ein ein Kommentar. ein ein zufaelliger ein ein Dies zufaelliger ist zufaelliger Dies Dies ein Dies ist Kommentar. zufaelliger zufaelliger zufaelliger ein ein Kommentar. Kommentar. Dies Dies Kommentar. Dies ein zufaelliger ist zufaelliger ein ist Kommentar. Dies ist Dies Dies ein ist Dies')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (17, 4976897171, CAST(N'2019-01-31T17:35:02.280' AS DateTime), CAST(1983.6839 AS Decimal(19, 4)), CAST(863765007160870.1181 AS Decimal(19, 4)), 0, 1, 5, 2, N'ein zufaelliger Dies ein Kommentar. Kommentar. ein ist ein Dies ist zufaelliger Kommentar. ist zufaelliger zufaelliger ist Dies Dies Dies Kommentar. ist ist zufaelliger zufaelliger Kommentar. Dies ein zufaelliger ist zufaelliger Kommentar. ist Kommentar. Dies ein ein ein ist ist Dies zufaelliger ein ein Kommentar. ein ist zufaelliger ein Dies Kommentar. ist ein ist ist zufaelliger Kommentar. ist Dies Kommentar. ein ein Dies ein ein Kommentar. Dies Dies Dies ein Kommentar. ist Dies ist ein ein zufaelliger Kommentar. ein Kommentar. ein ein ist ist zufaelliger Dies ist Dies Kommentar. Kommentar. zufaelliger zufaelliger ein ein zufaelliger Kommentar. ein ein Kommentar. Kommentar. zufaelliger ein zufaelliger ein zufaelliger zufaelliger ein Dies ein ein zufaelliger Dies zufaelliger ein Dies Kommentar. ein ein ein Kommentar. Kommentar. ist ist Dies zufaelliger Kommentar. Kommentar. Dies Kommentar. zufaelliger ein Dies Kommentar. Kommentar. ist Kommentar. ist zufaelliger Dies Kommentar. ein Dies Dies ist Kommentar. ein Dies zufaelliger zufaelliger ein ein ein Kommentar. ist ist ist zufaelliger Dies Kommentar. zufaelliger Kommentar. ist ist zufaelliger ein Dies ist ist ist ein Kommentar. zufaelliger Kommentar. Dies Dies Dies Dies Kommentar. ein ist Dies ein zufaelliger ist zufaelliger Dies Kommentar. ist ein ist Dies Dies ein ein ist zufaelliger ist Dies zufaelliger Dies Kommentar. zufaelliger Kommentar. Dies ist Kommentar. Dies ein Kommentar. zufaelliger Kommentar. ein zufaelliger Dies ein Kommentar. ein ein Dies zufaelliger ist ein Dies Kommentar. ist Dies ein zufaelliger Kommentar. Kommentar. Dies ein Kommentar. ist ist Kommentar. ein ein Dies ein Dies ein Kommentar. Kommentar. Dies zufaelliger zufaelliger ein ist Kommentar. ist ein ein zufaelliger zufaelliger ist ist Dies Dies zufaelliger zufaelliger ist Dies ein Dies Dies ist ist ein ist ein zufaelliger ein Dies ein Dies Dies Kommentar. ein ist zufaelliger ist Kommentar. ist ein zufaelliger Kommentar. ist ist zufaelliger ist Kommentar. zufaelliger ist Dies ist Kommentar. Kommentar. Dies ist ein Dies ein zufaelliger ein Kommentar. Kommentar. zufaelliger Dies ist ist ein ist ist zufaelliger ist ein Kommentar. Dies Dies ein ist Kommentar. ein zufaelliger ein Kommentar. ist ist ist ein zufaelliger Kommentar. Dies Kommentar. ist Dies ein ist ein ist ein Dies Kommentar. ist zufaelliger zufaelliger ein ein ein ein ein Kommentar. ist ist Dies ist ist Dies zufaelliger Dies zufaelliger Dies ein zufaelliger ein ein zufaelliger Kommentar. Kommentar. Dies Kommentar. Kommentar. zufaelliger ist Dies')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (18, 7543554847, CAST(N'2020-03-16T00:58:59.060' AS DateTime), CAST(2873.7320 AS Decimal(19, 4)), CAST(799581009927752.2591 AS Decimal(19, 4)), 0, 2, 2, 2, N'ist Kommentar. Kommentar. Dies ist ein Kommentar. Kommentar. ist Dies zufaelliger zufaelliger Kommentar. ein Kommentar. ist Dies ist Kommentar. Dies ist zufaelliger zufaelliger ist Dies ist ist zufaelliger Dies Dies zufaelliger Dies ist zufaelliger ein Dies ist zufaelliger Dies zufaelliger Dies Kommentar. ist Kommentar. zufaelliger ist Dies Dies Kommentar. Dies Kommentar. zufaelliger ein Dies Kommentar. ist ein ist Kommentar. zufaelliger ist zufaelliger ein zufaelliger Dies Dies ein ein zufaelliger ist zufaelliger ist Dies ist Kommentar. Dies Dies ist Dies ein Kommentar. zufaelliger zufaelliger zufaelliger Dies Kommentar. ist ein zufaelliger Kommentar. Dies zufaelliger Kommentar. zufaelliger zufaelliger Dies ein Kommentar. zufaelliger zufaelliger ein zufaelliger ist ist Kommentar. Kommentar. Kommentar. ein Kommentar. ist Dies zufaelliger Dies zufaelliger zufaelliger Kommentar. Kommentar. Dies zufaelliger ist ein zufaelliger ein Dies zufaelliger ist ist Dies zufaelliger Dies Dies ein ist Dies Dies Dies Kommentar. ein ein Kommentar. ein ist ein Dies ist ist Dies Kommentar. Kommentar. zufaelliger Dies zufaelliger ein ist Dies ein ist zufaelliger zufaelliger zufaelliger ein ein Kommentar. ein ist Kommentar. ein Kommentar. zufaelliger ist Kommentar. Kommentar. Dies Kommentar. zufaelliger Kommentar. Kommentar. Kommentar. Dies Kommentar. ist Kommentar. zufaelliger Dies ein zufaelliger Dies zufaelliger Kommentar. Dies Dies ist ein Kommentar. ist zufaelliger Kommentar. Dies ist zufaelliger zufaelliger Kommentar. Kommentar. zufaelliger zufaelliger Dies zufaelliger Dies Kommentar. ein Dies Kommentar. ein zufaelliger zufaelliger Kommentar. Kommentar. ist ein Dies Dies Kommentar. Dies ist Dies zufaelliger Dies ein ist zufaelliger Dies zufaelliger Kommentar. Dies ist zufaelliger Kommentar. ist Dies zufaelliger Kommentar. ist ist ist ist Dies ist Dies ist ist ein ein zufaelliger Kommentar. Kommentar. zufaelliger ein Dies Kommentar. Dies Kommentar. Dies ist ein ein Kommentar. zufaelliger Dies ist ist ist ein Dies ist ein zufaelliger Dies Dies zufaelliger Dies ist zufaelliger ist Dies zufaelliger ein ein ist zufaelliger Kommentar. Kommentar. Kommentar. zufaelliger ein zufaelliger ist ist ein ein Kommentar. ein ist Dies zufaelliger zufaelliger Dies zufaelliger ist ein zufaelliger Kommentar. ein zufaelliger zufaelliger zufaelliger Kommentar. ist ein ist Dies ist Dies ist zufaelliger Kommentar. ein Kommentar. ein Dies zufaelliger Kommentar. ein zufaelliger ein ein ist ist ist zufaelliger Kommentar. Dies zufaelliger zufaelliger ein ist ist Dies Kommentar. ein Kommentar. Kommentar. zufaelliger Dies ein ist ist zufaelliger ein ein ist Kommentar. ist ein Kommentar. ein ist Dies Dies Dies Dies Kommentar. Kommentar. ein Kommentar. Dies Dies ist ein Kommentar. ein ein Dies zufaelliger zufaelliger Kommentar. ein Kommentar. Kommentar. Kommentar. ist ist zufaelliger zufaelliger Kommentar. ist ist Dies zufaelliger ein Dies Kommentar. Dies ein ein Dies Kommentar. ein Kommentar. Dies Kommentar. Kommentar. ein ein Kommentar. Kommentar. Dies ist Kommentar. ist ein Kommentar. Kommentar. Kommentar. Dies Dies Dies ein ist zufaelliger zufaelliger ist ein zufaelliger ist Kommentar. Kommentar. ist Dies zufaelliger Kommentar. Kommentar. ein ist ein Kommentar. Dies Dies ein ist ein zufaelliger Dies zufaelliger ist Kommentar. zufaelliger Dies Dies ist ein ist Kommentar. ein Dies zufaelliger ein zufaelliger zufaelliger ist zufaelliger zufaelliger Kommentar.')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (19, 2346877022, CAST(N'2016-06-23T10:06:38.840' AS DateTime), CAST(1078.0847 AS Decimal(19, 4)), CAST(-585758061107920.4420 AS Decimal(19, 4)), 0, 2, 3, 2, N'')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (20, 5876897172, CAST(N'2015-05-19T23:29:03.770' AS DateTime), CAST(1128.3201 AS Decimal(19, 4)), CAST(-234445838519057.3464 AS Decimal(19, 4)), 1, 2, 6, 5, N'ist ein Dies ein ist Kommentar. Kommentar. ist Dies ist Dies zufaelliger ist Dies Dies ist Kommentar. Kommentar. Kommentar. zufaelliger zufaelliger Dies Kommentar. ist Kommentar. zufaelliger Kommentar. Kommentar. Dies ist ein Dies Kommentar. zufaelliger zufaelliger Kommentar. Dies zufaelliger Dies Kommentar. ist ein ist ein Dies zufaelliger ist Dies Dies ein Dies Kommentar. Dies Kommentar. zufaelliger Kommentar. Kommentar. ist Dies Kommentar. Kommentar. zufaelliger zufaelliger zufaelliger Dies ist zufaelliger zufaelliger zufaelliger ist Kommentar. zufaelliger zufaelliger ein ein ein zufaelliger zufaelliger ein Dies Dies Dies Dies Dies ist ein zufaelliger Dies ein zufaelliger ist Dies Dies ist ein ist Kommentar. Dies ist ist Kommentar. Kommentar. Kommentar. Kommentar. Dies Dies Dies Kommentar. zufaelliger ein Dies zufaelliger Dies zufaelliger Dies zufaelliger Kommentar. zufaelliger ein zufaelliger Dies ist ist Kommentar. ist Dies ist zufaelliger ist zufaelliger Kommentar. ein Dies ein ein ist ist ist Dies Dies ein ein zufaelliger zufaelliger ist ein ist Dies zufaelliger Kommentar. Dies ist Dies ein Kommentar. Dies zufaelliger Kommentar. zufaelliger zufaelliger Kommentar. Dies Kommentar. Dies ist zufaelliger ein ein zufaelliger ist Kommentar. zufaelliger zufaelliger Kommentar. ein Dies ein Dies ist ist Dies ist zufaelliger ein zufaelliger Dies ein ein Kommentar. ist zufaelliger Dies ist Kommentar. zufaelliger Kommentar. ist ist ist ein Dies Dies Dies zufaelliger Dies ist Dies zufaelliger zufaelliger Kommentar. ein Dies ist Dies ein Kommentar. Kommentar. Kommentar. zufaelliger Dies Dies ist Dies Kommentar. Dies ist zufaelliger zufaelliger Kommentar. zufaelliger Kommentar. zufaelliger Dies zufaelliger ist Kommentar. Kommentar. ist ist ein Kommentar. Dies ein ein zufaelliger ein ein Dies ein zufaelliger ein Kommentar. ist Dies Kommentar. Dies ein ein Kommentar. ein ein ein ein Dies zufaelliger zufaelliger ist Dies ist Kommentar. Kommentar. ein ist Dies zufaelliger ein ein Kommentar. zufaelliger ist Dies Kommentar. ein Dies zufaelliger ein ist Kommentar. zufaelliger ist Kommentar. Dies ist ein zufaelliger ein Kommentar. Dies Kommentar. Dies ist Dies Dies ein zufaelliger Kommentar. zufaelliger ein Dies ist Dies ist ein ist ein Dies zufaelliger ein Kommentar. ist ist Kommentar. zufaelliger ist ein Kommentar. Dies Dies Kommentar. zufaelliger ein ist zufaelliger ein ist Kommentar. Dies zufaelliger ist Kommentar. zufaelliger ist Dies zufaelliger Dies ein Kommentar. Dies zufaelliger Kommentar. Dies ein zufaelliger ein ein Dies Kommentar. Dies Kommentar. Dies Kommentar. ist Dies Kommentar. Kommentar. ein Dies ein zufaelliger Kommentar. ist Kommentar. ist ein Kommentar. zufaelliger Kommentar. ein Kommentar. zufaelliger ein zufaelliger ist Dies ist ein Kommentar. ein ist ist zufaelliger zufaelliger zufaelliger Dies zufaelliger Kommentar. ist Kommentar. Kommentar. Dies Dies ein Kommentar. Dies ein ist Kommentar. Dies ein Kommentar. ist zufaelliger Dies ist Dies zufaelliger Kommentar. Kommentar. ist Dies zufaelliger Dies Kommentar. Kommentar. ist ist Dies Kommentar. Kommentar. Dies Kommentar. zufaelliger zufaelliger ein Kommentar.')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (21, 6643554847, CAST(N'2018-07-17T13:15:24.610' AS DateTime), CAST(288.1201 AS Decimal(19, 4)), CAST(808625429562774.7748 AS Decimal(19, 4)), 0, 1, 1, 3, N'')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (22, 3656985398, CAST(N'2022-06-02T21:19:44.140' AS DateTime), CAST(1.8225 AS Decimal(19, 4)), CAST(-582593355988406.1652 AS Decimal(19, 4)), 0, 2, 5, 2, N'Kommentar. ist Kommentar. Kommentar. ein ist Kommentar. zufaelliger Dies ein zufaelliger ein Kommentar. Dies Dies Kommentar. Kommentar. ist Dies ist Dies ein ein Kommentar. ein ist Dies Kommentar. ist zufaelliger ein ein ein ein Kommentar. zufaelliger zufaelliger zufaelliger Dies ein Kommentar. ist ein ein ist Dies Dies ein Kommentar. ist zufaelliger zufaelliger ein zufaelliger Dies ein ist ein ist ein Dies zufaelliger zufaelliger zufaelliger Kommentar. Kommentar. ein Kommentar. zufaelliger Kommentar. ist ist ist ist zufaelliger ist Kommentar. ein ein ein zufaelliger Dies Dies ein Dies ist zufaelliger zufaelliger ist ein ein Kommentar. ein ist Kommentar. Dies Kommentar. ein Dies Kommentar. Kommentar. ist zufaelliger ist Dies Dies ist Dies Kommentar. Dies Kommentar. Dies ist ein Kommentar. ist ein Kommentar. ein ein Kommentar. zufaelliger Dies ein ist ist Dies Dies ein Kommentar. ist ein Dies Dies Dies Kommentar. Kommentar. Kommentar. ist ist ein ein ist ein ist ein ist ein Dies')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (23, 1446877022, CAST(N'2022-07-01T15:02:48.850' AS DateTime), CAST(3023.8483 AS Decimal(19, 4)), CAST(8.4480 AS Decimal(19, 4)), 0, 1, 5, 1, N'Kommentar. zufaelliger Dies Kommentar. ist Kommentar. Dies Dies')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (24, 2346877023, CAST(N'2019-02-15T04:13:04.990' AS DateTime), CAST(3267.6576 AS Decimal(19, 4)), CAST(-150438128570336.1157 AS Decimal(19, 4)), 0, 1, 4, 1, N'ist Kommentar. zufaelliger Kommentar. ist Kommentar. Kommentar. ist zufaelliger ist Kommentar. Dies Dies Dies Dies ein ein Kommentar. ist ein Dies ein zufaelliger zufaelliger zufaelliger ist zufaelliger Kommentar. ein ist Kommentar. ist Kommentar. ein Kommentar. zufaelliger Kommentar. Kommentar. Kommentar. Kommentar. Kommentar. ein ist ist ist Dies zufaelliger zufaelliger Dies Dies zufaelliger Kommentar. ist zufaelliger ein Dies ein ist ist ein ist ist zufaelliger ist Kommentar. ist ist zufaelliger Dies zufaelliger Kommentar. Dies Kommentar. ein zufaelliger zufaelliger ein Kommentar. ist Dies zufaelliger Dies zufaelliger ein ein ist ist Dies ein Dies ein ein ist zufaelliger zufaelliger')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (25, 4976897172, CAST(N'2020-08-24T08:09:43.800' AS DateTime), CAST(697.8354 AS Decimal(19, 4)), CAST(98210845679928.5180 AS Decimal(19, 4)), 0, 2, 6, 1, N'Dies Kommentar.')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (26, 1446877023, CAST(N'2016-09-15T05:07:50.510' AS DateTime), CAST(3180.2415 AS Decimal(19, 4)), CAST(990957727848625.6819 AS Decimal(19, 4)), 1, 1, 1, 3, N'Dies Kommentar. Dies ist ein Dies Dies ist ein Dies Dies ein Kommentar. zufaelliger Dies zufaelliger Kommentar. zufaelliger Dies ein ist Dies Kommentar. ein zufaelliger ist ein ist ein Kommentar. Dies Dies ein zufaelliger Kommentar. ein zufaelliger ist ein ist Dies Kommentar. ein Kommentar. zufaelliger zufaelliger ist Dies ein ein zufaelliger ein zufaelliger ein Kommentar. ist Dies ist zufaelliger zufaelliger ist ist Kommentar. Dies ist ist Dies Dies ein zufaelliger ein ist Dies ein Dies Kommentar. ist Kommentar. ein Dies ein ein ist Kommentar. ist ein zufaelliger ist Dies Kommentar. Kommentar. ein zufaelliger Kommentar. zufaelliger ein zufaelliger ist ist zufaelliger ein ein ein ist ein Kommentar. zufaelliger ist ein Dies ein ein Kommentar. ist zufaelliger Kommentar. ein ein zufaelliger zufaelliger ein ein ist ist ein zufaelliger ist Dies Kommentar. zufaelliger zufaelliger ist ein Kommentar. zufaelliger Kommentar. ein Kommentar. ein zufaelliger ein Kommentar. ist ein Kommentar. zufaelliger ist Dies Kommentar. zufaelliger ist Kommentar. Dies ein Kommentar. Kommentar. Dies Dies Kommentar. Kommentar. ein Dies ist ist ist ein zufaelliger zufaelliger zufaelliger Dies Kommentar. ein Dies zufaelliger Dies ein ist ein ein ist Dies ist zufaelliger Dies ein ist Dies Kommentar. ist ist ein ist ist Dies Dies Kommentar. Kommentar. ein ist ist zufaelliger ein zufaelliger Dies zufaelliger Dies ein ein zufaelliger Dies ist zufaelliger Dies ein Kommentar. ein Dies zufaelliger zufaelliger Dies ein Dies zufaelliger ein ein ein Kommentar. ein zufaelliger zufaelliger Dies ist Kommentar. ist Dies zufaelliger ein zufaelliger Kommentar. ist zufaelliger Dies Dies zufaelliger Dies zufaelliger Dies zufaelliger Kommentar. ist Dies Kommentar. Dies zufaelliger ein Dies ist Dies Dies Kommentar. zufaelliger Kommentar. ein ein ist ein ein Dies zufaelliger Kommentar. Kommentar. ist Kommentar. Dies ein ein zufaelliger ein Dies Dies ist zufaelliger Kommentar. Dies ist ist ist zufaelliger ein ist Dies Dies Kommentar. Kommentar. Dies Kommentar. Kommentar. ein ist Dies zufaelliger zufaelliger ein Dies Kommentar. ein Dies Kommentar. zufaelliger ist zufaelliger zufaelliger ein zufaelliger Dies Dies Dies zufaelliger zufaelliger ein Kommentar. zufaelliger Dies ist ist Dies Kommentar. Dies Kommentar. Dies Kommentar. zufaelliger zufaelliger Dies ist Dies Dies ein Dies ein ist Kommentar. ein ein ein Kommentar. ist zufaelliger Dies ein ein Kommentar. Dies ist ein Kommentar. Dies ein ein ist Kommentar. ein Dies ein zufaelliger ein zufaelliger ist zufaelliger ist zufaelliger zufaelliger ein Dies Kommentar. zufaelliger zufaelliger zufaelliger ist Dies ein Dies ein ist Dies ist Dies Dies Kommentar. Dies Dies ein Kommentar. Dies Kommentar. Kommentar. Kommentar. zufaelliger Dies zufaelliger zufaelliger Dies zufaelliger ein ist ein ein Kommentar. Kommentar. Kommentar. ein ein zufaelliger Kommentar. Kommentar.')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (27, 7543554848, CAST(N'2020-08-20T12:07:56.520' AS DateTime), CAST(1385.6549 AS Decimal(19, 4)), CAST(6415.5321 AS Decimal(19, 4)), 0, 1, 6, 6, N'zufaelliger Dies Kommentar.')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (28, 9020597168, CAST(N'2017-11-18T08:45:36.820' AS DateTime), CAST(1227.7712 AS Decimal(19, 4)), CAST(20.1828 AS Decimal(19, 4)), 1, 2, 6, 1, N'')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (29, 9920597166, CAST(N'2017-10-25T18:57:21.590' AS DateTime), CAST(4320.9113 AS Decimal(19, 4)), CAST(-6309.2894 AS Decimal(19, 4)), 0, 2, 5, 2, N'ist ein ein Dies ein ein ein ist zufaelliger zufaelliger ist ein Dies ein Kommentar. ein Dies Dies Dies zufaelliger Dies zufaelliger ein Kommentar. Kommentar. ein ein Dies ist Kommentar. ist zufaelliger zufaelliger zufaelliger zufaelliger zufaelliger ist zufaelliger ein Dies zufaelliger Kommentar. ist ist zufaelliger Dies Kommentar. ein ein ist Dies zufaelliger ein ein Kommentar. zufaelliger ist zufaelliger Kommentar. Kommentar. Kommentar. Dies ein zufaelliger ein zufaelliger Dies zufaelliger ein Dies ein Kommentar. Kommentar. zufaelliger Kommentar. ist Dies Dies Kommentar. ein Dies ein Kommentar. zufaelliger Dies ist Dies Kommentar. Dies zufaelliger ein ist Dies Dies Dies Kommentar. zufaelliger ist Dies ein ein ist ist ein Kommentar. zufaelliger Kommentar. Kommentar. ein Kommentar. zufaelliger ist ist zufaelliger zufaelliger ist ist zufaelliger zufaelliger ein Dies Kommentar. Kommentar. ist Kommentar. ein ein zufaelliger Dies Dies zufaelliger Dies Kommentar. ist ist Kommentar. ein zufaelliger ein ist ist ist Kommentar. ist zufaelliger ein Dies Dies Dies Kommentar. Dies zufaelliger Dies Dies Kommentar. Kommentar. zufaelliger Dies Dies ist Dies zufaelliger Kommentar. Kommentar. Dies Dies Kommentar. ein Kommentar. Kommentar. Kommentar. ein zufaelliger Dies ein Dies ein zufaelliger Dies Kommentar. ist zufaelliger ein ein zufaelliger ein ein ein ein ist ist ein ist ist zufaelliger ein Kommentar. zufaelliger ist Dies zufaelliger ist Dies zufaelliger ein Dies ein ist zufaelliger Kommentar. ein zufaelliger zufaelliger ist Dies ein Dies zufaelliger Kommentar. Dies zufaelliger ist Dies ist ein zufaelliger zufaelliger Kommentar. zufaelliger ein ein zufaelliger Kommentar. Dies ein ein ist Kommentar. Dies Dies zufaelliger zufaelliger ein zufaelliger ein ein zufaelliger zufaelliger ist zufaelliger zufaelliger ein Dies Dies Dies ein zufaelliger zufaelliger Kommentar. Dies ein Dies zufaelliger Kommentar. zufaelliger Kommentar. ein ein Dies zufaelliger ist Dies zufaelliger Dies Kommentar. Dies ein zufaelliger ist Kommentar. Dies ist ist ist zufaelliger Kommentar. zufaelliger ein ist Dies ist ein Kommentar. zufaelliger Dies Dies Kommentar. Dies Kommentar. zufaelliger ein zufaelliger Dies Dies Dies Dies Kommentar. ein ist ist Kommentar. zufaelliger zufaelliger Dies ist Kommentar. Kommentar. Dies zufaelliger ein ein zufaelliger Kommentar. ist Kommentar. zufaelliger ein Dies zufaelliger Dies Dies Kommentar. ist zufaelliger zufaelliger ist ein zufaelliger Dies ist ein ist ein Kommentar. Kommentar. ein ist ein Kommentar. ist Kommentar. Kommentar. zufaelliger zufaelliger Dies ein Dies Kommentar. ein ein zufaelliger zufaelliger zufaelliger zufaelliger Kommentar. Kommentar. zufaelliger ist ein Dies ein Dies zufaelliger ist Dies Kommentar. Kommentar. Kommentar. zufaelliger Dies Kommentar. Kommentar. ein ein Kommentar. ist ist Kommentar. zufaelliger')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (30, 4556985399, CAST(N'2017-06-06T01:11:14.570' AS DateTime), CAST(4706.5666 AS Decimal(19, 4)), CAST(-597621322284724.3798 AS Decimal(19, 4)), 0, 2, 6, 5, N'')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (31, 6643554848, CAST(N'2021-07-17T08:30:44.950' AS DateTime), CAST(-283.5721 AS Decimal(19, 4)), CAST(972.5464 AS Decimal(19, 4)), 0, 2, 6, 1, N'ein zufaelliger Kommentar. zufaelliger Dies Dies ein ist ein zufaelliger zufaelliger ist Dies Kommentar. Kommentar. ein Dies Kommentar. Kommentar. ist Kommentar. zufaelliger Dies zufaelliger Dies ist Dies Dies ein ein ist Dies ein ein zufaelliger Kommentar. ein Dies Kommentar. ein ist zufaelliger Dies Dies Dies ein Kommentar. ein Dies ist zufaelliger ein Kommentar. ein Dies ein ist zufaelliger Kommentar. Dies zufaelliger Dies ist ist Dies ist Dies')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (32, 7543554849, CAST(N'2018-06-29T15:03:09.700' AS DateTime), CAST(4864.2132 AS Decimal(19, 4)), CAST(-876400778153955.7425 AS Decimal(19, 4)), 0, 1, 1, 2, N'Dies ist Kommentar. Dies ein Kommentar. zufaelliger ein Kommentar. ist ist zufaelliger ein ein ein Kommentar. ist Dies zufaelliger Dies zufaelliger ist zufaelliger Kommentar. ein zufaelliger Dies Kommentar. ist Kommentar. zufaelliger ein ein Dies ist ein Dies ist ein ein ist Dies ist zufaelliger Kommentar. zufaelliger zufaelliger ein ist Kommentar. ein Dies Dies zufaelliger zufaelliger ein Dies ist Dies zufaelliger ist Dies ein Kommentar. Kommentar. zufaelliger ein ist ein Kommentar. ein Dies Kommentar. zufaelliger zufaelliger zufaelliger Dies ist ist ist zufaelliger Dies Kommentar. Dies ein Kommentar. zufaelliger ist ist Dies zufaelliger ein ist zufaelliger Kommentar. Dies Dies zufaelliger ist zufaelliger Kommentar. zufaelliger ist Dies ein ist ein Dies zufaelliger ein ein ein ein Kommentar. ist ist zufaelliger ein Kommentar. Kommentar. ist zufaelliger Kommentar. Kommentar. Kommentar. ist zufaelliger ist zufaelliger ist zufaelliger Dies Kommentar. ist zufaelliger zufaelliger ein ein zufaelliger zufaelliger zufaelliger ein Kommentar. Dies ist ein Kommentar. ein Dies zufaelliger zufaelliger zufaelliger Dies ein Dies ist zufaelliger zufaelliger ist Kommentar. ein Dies zufaelliger Dies ist zufaelliger Kommentar. ist Dies Dies Kommentar. ist ist zufaelliger ein Kommentar. zufaelliger ein zufaelliger Dies Kommentar. Dies zufaelliger ein Dies zufaelliger ist ein zufaelliger Kommentar. Kommentar. zufaelliger zufaelliger ein Kommentar. Dies ein ein ist zufaelliger Dies ist Dies Dies zufaelliger Kommentar. ein Kommentar. ist Kommentar. Kommentar. Dies ist ist Kommentar. ist ein Kommentar. Dies Kommentar. Dies ist ein ein Kommentar. Dies Kommentar. zufaelliger Kommentar. ist Dies ein Dies Dies Kommentar. Kommentar. zufaelliger Dies ist ist Dies Dies Kommentar. Kommentar. zufaelliger ein Kommentar. ein Dies zufaelliger Kommentar. ist zufaelliger ist ist ist Kommentar. zufaelliger Kommentar. ein Dies ist Dies zufaelliger ist Kommentar. ein ein ein Kommentar. ein Kommentar. ist ein ist ein Kommentar. zufaelliger Kommentar. ist zufaelliger ein ist Kommentar. ist Kommentar. Dies Dies ein Kommentar. Dies Dies zufaelliger ist Kommentar. Dies ein Kommentar. Kommentar. Kommentar. ist ein ein zufaelliger ein ein zufaelliger ist ein Dies ist ein ist Kommentar. ein Kommentar. ein ist Dies zufaelliger zufaelliger Dies ist ist zufaelliger ein zufaelliger ist Kommentar. Kommentar. zufaelliger Dies Kommentar. ein ein zufaelliger Dies zufaelliger zufaelliger Kommentar. Dies zufaelliger zufaelliger')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (33, 5876897173, CAST(N'2021-01-14T19:05:49.620' AS DateTime), CAST(1570.6250 AS Decimal(19, 4)), CAST(-852044038465797.5338 AS Decimal(19, 4)), 0, 2, 3, 6, N'ein Dies Dies zufaelliger Dies Kommentar. ein ein zufaelliger zufaelliger Dies ein Dies ein Dies ist Dies ein ein ein Kommentar. ist zufaelliger zufaelliger ist ein Dies zufaelliger ist Kommentar. Dies zufaelliger ein zufaelliger zufaelliger Dies ist Dies ein Dies zufaelliger Dies ein ist Dies ein Kommentar. ist Kommentar. ist Dies ein ein zufaelliger ist ein ist Dies ein Kommentar. Dies ist ist ein zufaelliger Dies ein Kommentar. ein zufaelliger ein Kommentar. ein ein Dies Dies ist Kommentar. ist ist Kommentar. zufaelliger Kommentar. ist ein zufaelliger ein zufaelliger ein Kommentar. ist zufaelliger ein Kommentar. ist ein zufaelliger zufaelliger ist Kommentar. ist Kommentar. Kommentar. ist zufaelliger zufaelliger Dies Dies ist Kommentar. Kommentar. ein Dies ist zufaelliger Dies Dies Dies ist Dies ein Kommentar. Dies ein ein Dies ist zufaelliger ein zufaelliger Dies Dies ein Kommentar. ist Kommentar. ein ist ein zufaelliger Kommentar. zufaelliger Dies ein ein Kommentar. Dies zufaelliger ist ist Dies Kommentar. ist ist Kommentar. Kommentar. ein Dies ein ein ist ist ist Kommentar. Kommentar. Dies ist zufaelliger ein ein Dies zufaelliger Kommentar. zufaelliger zufaelliger Kommentar. ein ein zufaelliger Kommentar. Kommentar. ist zufaelliger ein Kommentar. Kommentar. Kommentar. Dies Kommentar. ist Kommentar. Dies Dies ist Dies ein zufaelliger ist ein zufaelliger ist ein zufaelliger Kommentar. zufaelliger Dies Kommentar. zufaelliger Dies ein zufaelliger ein ist ein ein ist Dies Dies Dies ein Dies Dies zufaelliger Kommentar. Dies zufaelliger Dies Dies Kommentar. ein zufaelliger ist ist zufaelliger Kommentar. zufaelliger Kommentar. Dies ist Dies ein ist ist ist ist ein Kommentar. zufaelliger zufaelliger Kommentar. Dies ist Dies Kommentar. Dies zufaelliger ist zufaelliger Dies Kommentar. ist ein ist Dies Dies ist ein ein ein zufaelliger ein ein ist Kommentar. ist ein zufaelliger Dies Kommentar. Dies Dies ist ein Dies zufaelliger zufaelliger Dies ein Dies ein ein zufaelliger Kommentar. Dies ist ein zufaelliger zufaelliger ein Dies zufaelliger Dies Kommentar. zufaelliger Dies Dies Dies Kommentar. zufaelliger ist Kommentar. zufaelliger ist Dies Dies ein ein Kommentar. Dies Dies Kommentar. Dies zufaelliger Dies Dies zufaelliger ist zufaelliger Kommentar. zufaelliger ein Dies Kommentar. Kommentar. zufaelliger ein Dies Kommentar. ist ein zufaelliger Kommentar. Dies zufaelliger ein Kommentar. zufaelliger zufaelliger Kommentar. ein ein ein Kommentar. Kommentar.')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (34, 3656985399, CAST(N'2021-08-27T23:54:17.030' AS DateTime), CAST(510.6100 AS Decimal(19, 4)), CAST(-615304677070464.8844 AS Decimal(19, 4)), 0, 2, 6, 5, N'Dies Dies ein ist Kommentar. Kommentar. Dies Dies ist Dies Kommentar. ein ein Dies ist ist zufaelliger ist zufaelliger ein zufaelliger ein zufaelliger ist ein Dies ein Kommentar. ist zufaelliger zufaelliger ist Dies zufaelliger Dies Dies Dies ist Dies ist ist zufaelliger ist ist ist ist Dies zufaelliger ist Kommentar. zufaelliger Dies Kommentar. zufaelliger zufaelliger zufaelliger Kommentar. ein Kommentar. Dies ist Dies ein ist ein zufaelliger Dies zufaelliger zufaelliger zufaelliger Dies Dies ist ein ist ist ein ist Kommentar. Dies Dies zufaelliger Dies ein ist ist Kommentar. ein zufaelliger ein Kommentar. ist ist ist ein ein zufaelliger zufaelliger ein')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (35, 9020597169, CAST(N'2019-08-13T09:08:17.090' AS DateTime), CAST(773.9107 AS Decimal(19, 4)), CAST(723554948050894.3693 AS Decimal(19, 4)), 0, 2, 6, 4, N'ist ein Kommentar. zufaelliger ein Kommentar. ist ist Kommentar. Kommentar. ein ist zufaelliger zufaelliger ist ein zufaelliger ist ist ist ein Dies Dies Dies Kommentar. ist ist zufaelliger ein ein ist Dies Kommentar. zufaelliger ist Dies Kommentar. Kommentar. zufaelliger Dies ein Dies zufaelliger Kommentar. ist Dies zufaelliger Dies zufaelliger zufaelliger zufaelliger ein zufaelliger Dies ein Dies Kommentar. ein zufaelliger zufaelliger ein ist Kommentar. zufaelliger zufaelliger Dies Kommentar. Kommentar. ein Dies Kommentar. ist ist Kommentar. Dies Dies Kommentar. ein Dies Kommentar. Kommentar. Kommentar. Dies ist Kommentar. Dies Dies Dies Dies ist Kommentar. ein ein ein ist zufaelliger ist ist zufaelliger Dies Dies zufaelliger Dies ist ein Kommentar. Dies Kommentar. Dies Dies Dies ein ein ein ein Dies zufaelliger ist Dies ein Dies ein ist Kommentar. Kommentar. Dies Dies Kommentar. Dies Dies Kommentar. Dies ein Kommentar. ein ist Kommentar. ist Kommentar. Dies ist ist zufaelliger ein Kommentar. Dies Dies Dies ein zufaelliger Dies ein zufaelliger zufaelliger zufaelliger Dies Dies Dies Dies zufaelliger Kommentar. zufaelliger ein zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. Dies ist ist Dies Kommentar. zufaelliger ist ist ist Kommentar. zufaelliger Dies ist ist zufaelliger zufaelliger ein ist Dies ist zufaelliger ein zufaelliger ist ein zufaelliger ein ein Dies zufaelliger ist ist ist Dies Kommentar. zufaelliger Dies Dies Kommentar. Kommentar. Kommentar. Kommentar. ein Kommentar. Kommentar. zufaelliger Kommentar. Kommentar. ist ist zufaelliger ist zufaelliger Kommentar. ein Dies Dies ist Kommentar. Dies Dies ist ist ist ist Kommentar. Dies ein ein zufaelliger Dies ist zufaelliger Kommentar. Kommentar. Kommentar. zufaelliger zufaelliger Dies zufaelliger Kommentar. Dies zufaelliger Kommentar. ein ein Kommentar. ist Dies Kommentar. ein zufaelliger ein ein Kommentar. Kommentar. Kommentar. ein zufaelliger ist ist Kommentar. Dies zufaelliger Dies zufaelliger ein ein zufaelliger ist ein ist zufaelliger zufaelliger ist ein Kommentar.')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (36, 4556985400, CAST(N'2020-12-26T00:03:44.730' AS DateTime), CAST(2278.2311 AS Decimal(19, 4)), CAST(-530162565109691.3754 AS Decimal(19, 4)), 0, 1, 6, 3, N'ein Kommentar. ein Kommentar. Dies zufaelliger Dies zufaelliger zufaelliger Dies ist zufaelliger ist Kommentar. ist Kommentar. Kommentar. ist ein Kommentar. ein ein ein zufaelliger Dies ist ein Dies ein Dies ist Kommentar. ein Dies Dies Dies Dies zufaelliger Dies zufaelliger ist zufaelliger zufaelliger Dies Dies ist Kommentar. ist ist Dies Kommentar. Dies ein Kommentar. ein Dies ein ein ist Kommentar. ist ist Dies zufaelliger ist Dies Dies Dies zufaelliger ist ist ein zufaelliger Dies Dies Kommentar. ein ist ist ein Kommentar. ist Dies ein ein zufaelliger ist Kommentar. zufaelliger zufaelliger Kommentar. Dies zufaelliger ein Dies ein zufaelliger zufaelliger Dies Kommentar. Dies zufaelliger Kommentar. ein Dies Kommentar. ist Kommentar. zufaelliger Kommentar. zufaelliger zufaelliger ein ist Kommentar. ist ist Dies zufaelliger zufaelliger ein Kommentar. zufaelliger zufaelliger Dies ein zufaelliger ist ein Kommentar. ein ein zufaelliger Kommentar. ist Kommentar. ein zufaelliger Kommentar. ein Dies zufaelliger zufaelliger ein zufaelliger zufaelliger zufaelliger ist Kommentar. Kommentar. Kommentar. zufaelliger zufaelliger ist ist ein zufaelliger Dies ein Dies ein ein Kommentar. Dies ein Kommentar. zufaelliger ein Kommentar. zufaelliger ist ist Dies ist Dies ist ein Kommentar. Kommentar. ist Dies Kommentar. zufaelliger ist ist Kommentar. ein Dies Dies ist ist Dies zufaelliger Dies zufaelliger ein Kommentar. Dies ist Dies ein ein zufaelliger Dies ein zufaelliger Kommentar. ein ein ein ein ein zufaelliger ein zufaelliger ein zufaelliger Dies zufaelliger Kommentar. Kommentar. zufaelliger ist Dies zufaelliger Kommentar. ein ein ein ein zufaelliger ist ist Kommentar. Kommentar. ist ein zufaelliger zufaelliger Dies zufaelliger zufaelliger ist Kommentar. ist Kommentar. Dies ist ist Kommentar. ein ist Kommentar. Dies zufaelliger ein ist ein Kommentar. ein ein zufaelliger Kommentar. Kommentar. Dies Kommentar. ein Kommentar. Kommentar. Kommentar. ein Kommentar. ein zufaelliger Dies zufaelliger Kommentar. ist ist Dies ist Dies zufaelliger Kommentar. Dies ist Kommentar. zufaelliger Kommentar. ist ein Dies Dies Kommentar. Kommentar. Kommentar. Dies ein Dies Dies zufaelliger ein Kommentar. Kommentar. Kommentar. ist Kommentar. ist ein Dies zufaelliger Kommentar. zufaelliger Dies Dies Kommentar. Dies zufaelliger ist Dies')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (37, 9920597167, CAST(N'2015-10-05T06:37:53.520' AS DateTime), CAST(3304.6960 AS Decimal(19, 4)), CAST(-257998026940547.9547 AS Decimal(19, 4)), 0, 1, 5, 3, N'')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (38, 4976897173, CAST(N'2016-11-22T10:03:58.350' AS DateTime), CAST(-468.1172 AS Decimal(19, 4)), CAST(-7023.9526 AS Decimal(19, 4)), 0, 2, 5, 2, N'ist ein zufaelliger zufaelliger zufaelliger Dies zufaelliger Kommentar. ein Kommentar. zufaelliger ein ein Kommentar. ist zufaelliger Dies Kommentar. zufaelliger ein Kommentar. ist Kommentar. ist Kommentar. ein Kommentar. ist Dies Dies zufaelliger ist Dies Kommentar. Dies zufaelliger Dies ist zufaelliger Dies Kommentar. Dies zufaelliger ein Kommentar. ist ist Kommentar. Kommentar. zufaelliger ein ein Kommentar. zufaelliger zufaelliger Kommentar. zufaelliger ein ist zufaelliger ist Dies ist ist ist ist Kommentar. zufaelliger ist zufaelliger Dies ist Kommentar. zufaelliger Kommentar. Kommentar. zufaelliger ein Dies Dies Kommentar. Dies zufaelliger zufaelliger Dies Dies zufaelliger ein ein Kommentar. Dies Dies Dies ist Kommentar. ein ist ein ist zufaelliger Dies Kommentar. ist zufaelliger Dies ein Dies ist Dies Kommentar. ein ein ein ist Kommentar. zufaelliger Dies ein ein ein ist ist zufaelliger ein zufaelliger ist zufaelliger Dies ist ist ein Dies ein ist ist ein ist Kommentar. Kommentar. ist Kommentar. ein zufaelliger Dies zufaelliger Dies zufaelliger zufaelliger Kommentar. zufaelliger zufaelliger zufaelliger zufaelliger ist zufaelliger zufaelliger zufaelliger zufaelliger ein zufaelliger zufaelliger zufaelliger ein Kommentar. zufaelliger Dies Dies zufaelliger ein ist ein Kommentar. zufaelliger ist ein Dies zufaelliger ein ist ein Kommentar. Dies ein zufaelliger Dies ist ist Kommentar. zufaelliger ein ein ein zufaelliger Dies ein ein ein Kommentar. zufaelliger ist ist Kommentar. Kommentar. ein zufaelliger ist ein Dies ein Dies Kommentar. zufaelliger ist ein ist Kommentar. ein zufaelliger Kommentar. ein ist Kommentar. ein Dies ist zufaelliger zufaelliger zufaelliger Kommentar. Dies Dies ist ein Kommentar. zufaelliger ein ein zufaelliger Dies Dies ein Kommentar. Dies Dies zufaelliger ein Kommentar. Dies zufaelliger ist Kommentar. zufaelliger Dies Kommentar. Dies Kommentar. ein ist zufaelliger ist ein Kommentar. zufaelliger Kommentar. zufaelliger Kommentar. Dies ist ist zufaelliger ist Dies ist zufaelliger zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. zufaelliger ein zufaelliger ist Dies zufaelliger ein ist ein ein ist Kommentar. ein zufaelliger ein ist Kommentar. ist Dies ist Kommentar. Kommentar.')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (39, 3656985400, CAST(N'2018-01-04T04:06:43.440' AS DateTime), CAST(10.1781 AS Decimal(19, 4)), CAST(-827773250281294.2157 AS Decimal(19, 4)), 0, 1, 1, 1, N'')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (40, 6643554849, CAST(N'2018-05-09T15:59:26.920' AS DateTime), CAST(1766.9729 AS Decimal(19, 4)), CAST(-220.8433 AS Decimal(19, 4)), 0, 2, 3, 4, N'')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (41, 2346877024, CAST(N'2021-12-03T12:27:38.810' AS DateTime), CAST(-56.2459 AS Decimal(19, 4)), CAST(-317109642675025.5658 AS Decimal(19, 4)), 0, 2, 3, 1, N'')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (42, 1446877024, CAST(N'2021-07-26T16:09:59.040' AS DateTime), CAST(1358.8531 AS Decimal(19, 4)), CAST(6.8804 AS Decimal(19, 4)), 0, 1, 5, 4, N'')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (43, 2346877025, CAST(N'2017-04-06T20:45:14.360' AS DateTime), CAST(3082.7305 AS Decimal(19, 4)), CAST(-86727247236921.7176 AS Decimal(19, 4)), 0, 1, 6, 4, N'')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (44, 7543554850, CAST(N'2020-08-09T06:27:13.330' AS DateTime), CAST(3336.1068 AS Decimal(19, 4)), CAST(-5.9056 AS Decimal(19, 4)), 0, 2, 3, 4, N'ist Dies Dies Dies Dies Dies Dies ein ein ist ein ein Dies Kommentar. Dies zufaelliger ein Kommentar. ist ist Kommentar. Kommentar. ist Dies zufaelliger ist ist ein Kommentar. Kommentar. ein Kommentar. Dies ist ist ist Kommentar. ist ist Dies Dies zufaelliger ein zufaelliger ein zufaelliger Kommentar. Kommentar. Kommentar. ist Dies ist ist ist zufaelliger zufaelliger zufaelliger Dies ein ist ein zufaelliger ist ein Dies ist zufaelliger Kommentar. Dies Kommentar. Kommentar. zufaelliger ein Dies zufaelliger zufaelliger ist ein ist Dies Kommentar. zufaelliger ist ein ein Kommentar. ein Dies Kommentar. Dies zufaelliger zufaelliger ist Kommentar. Kommentar. Dies Dies Kommentar. zufaelliger Dies Kommentar. ist Kommentar. Kommentar. ein Kommentar. Kommentar. ein ist ist zufaelliger Dies Kommentar. Dies Dies ein ist zufaelliger zufaelliger Kommentar. ist ein zufaelliger zufaelliger ist ein ein ist zufaelliger Kommentar. ein zufaelliger ein ein ist ein ist ein zufaelliger Dies zufaelliger zufaelliger ist ist Kommentar. zufaelliger Kommentar. Kommentar. ist ist Dies ist Dies Kommentar. Dies ist zufaelliger ein Dies ist Kommentar. zufaelliger zufaelliger Dies zufaelliger ein zufaelliger ein Kommentar. Kommentar. zufaelliger zufaelliger Dies ein zufaelliger Dies ist ist ein Dies ein Dies Dies Dies zufaelliger ein ist Dies ist ein Kommentar. ein Dies ist ein Kommentar. zufaelliger Dies zufaelliger Kommentar. Kommentar. Dies Dies ein ist zufaelliger Kommentar. ist Dies Dies Dies ist Dies ist ist Dies Kommentar. Dies ein Kommentar. ist zufaelliger ist Kommentar. ist zufaelliger Kommentar. ist zufaelliger ist ein Kommentar. Dies ein ist Dies Kommentar. ein ist zufaelliger Kommentar. Kommentar. ist zufaelliger Dies ein Kommentar. Kommentar. ist ist ein zufaelliger ein ist ein ist ein zufaelliger Kommentar. zufaelliger ist Kommentar. ist Dies ist Dies ist Dies Kommentar. ist Dies Dies Dies ein ein ist Dies Kommentar. Dies Dies ist Kommentar. Dies ist ein Kommentar. ist ist Kommentar. zufaelliger ein zufaelliger Kommentar. Dies ein ist Dies ein ein ist zufaelliger zufaelliger zufaelliger zufaelliger Dies zufaelliger Dies Dies Dies ein ist Kommentar. Dies Kommentar. ist ist Dies zufaelliger zufaelliger zufaelliger zufaelliger zufaelliger zufaelliger ist zufaelliger Dies ist Kommentar. ein Kommentar. ein Dies Dies Dies ist ist zufaelliger ist Dies ist zufaelliger Dies Kommentar. Dies Dies zufaelliger Kommentar. zufaelliger zufaelliger ist ein ist Dies Kommentar. zufaelliger zufaelliger ist ein ein zufaelliger ein ist ist Dies zufaelliger Kommentar. Dies Dies ein zufaelliger zufaelliger Dies ein ein ist Kommentar. Kommentar. Dies ein ein ein ist Dies ein Kommentar. ein Dies Kommentar. Dies Kommentar. Dies ein ein Dies Kommentar. ein zufaelliger ist ein Dies ist ein Dies ist zufaelliger Kommentar. zufaelliger zufaelliger ein ist Dies Kommentar. ist Dies Dies Dies zufaelliger zufaelliger ist ist zufaelliger ein zufaelliger zufaelliger ein zufaelliger Kommentar. ein Dies ist zufaelliger Dies Kommentar. ein Dies Kommentar. ein ein zufaelliger Kommentar. ist Kommentar. Dies ist zufaelliger zufaelliger zufaelliger ein Dies ist Dies Dies Dies Kommentar. ein Dies Kommentar. Dies ein ein ein ein ein ist Dies ist ist ein zufaelliger ist Dies Kommentar. Kommentar. ist ein Kommentar.')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (45, 6643554850, CAST(N'2016-04-23T09:02:53.410' AS DateTime), CAST(1430.2007 AS Decimal(19, 4)), CAST(4.8690 AS Decimal(19, 4)), 0, 1, 6, 3, N'ein ein Kommentar. Dies ist Kommentar. Kommentar. ein Kommentar. Dies ein Kommentar. zufaelliger Dies Dies zufaelliger Kommentar. Kommentar. ist ist Dies ein ist ist Kommentar. Kommentar. ist zufaelliger zufaelliger Dies zufaelliger ist Dies Dies zufaelliger ist ein zufaelliger zufaelliger ist ein Kommentar. Kommentar. Dies ist Dies Kommentar. ein Dies ist Dies ist ist ein ist zufaelliger Dies zufaelliger Dies ist Kommentar. Kommentar. ein ist ist zufaelliger Dies ist Dies ein zufaelliger ist Dies zufaelliger ein Kommentar. Dies zufaelliger Kommentar. ist ein ist zufaelliger ein zufaelliger ein zufaelliger Kommentar. ein Dies Dies Dies ein zufaelliger Kommentar. ist Dies zufaelliger zufaelliger ist zufaelliger Dies zufaelliger zufaelliger ein ein zufaelliger Kommentar. zufaelliger zufaelliger Dies zufaelliger zufaelliger ist ist zufaelliger zufaelliger ein ein ein zufaelliger Dies Dies ein Dies ist ist Dies ein ein Kommentar. Dies ist zufaelliger Dies ein ein ein ist ist ist ein ein Dies ist Kommentar. zufaelliger ein Dies ein ein Dies Kommentar. Kommentar. ist ist zufaelliger ist Dies ein ist zufaelliger zufaelliger zufaelliger Kommentar. Dies ist ein ist ein ein zufaelliger Kommentar. Dies Kommentar. Kommentar. ein ein Kommentar. ist Dies ein zufaelliger ein zufaelliger Kommentar. Kommentar. ein Kommentar. zufaelliger ein ist ist ein Kommentar. Kommentar. ist ist Kommentar. zufaelliger ist zufaelliger ist ein Dies ist zufaelliger Kommentar. Dies zufaelliger Dies ist zufaelliger ist ist ist ein ist ist ein Dies ist ein ist ist Kommentar. Dies zufaelliger ein ein zufaelliger Kommentar. Kommentar. zufaelliger zufaelliger Dies ist Kommentar. ist Kommentar. Dies zufaelliger Dies ist ein Kommentar. Dies zufaelliger ist Dies ist ein zufaelliger ein zufaelliger zufaelliger Dies Kommentar. ein ist zufaelliger Dies zufaelliger Dies zufaelliger ist ein zufaelliger ein ist ist zufaelliger Kommentar. Kommentar. ist Kommentar. zufaelliger Kommentar. Dies zufaelliger zufaelliger ist Dies ein ist Dies ein Dies ist ein Kommentar. ein Kommentar. zufaelliger Kommentar. zufaelliger ein zufaelliger Dies Dies ist Kommentar. zufaelliger zufaelliger')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (46, 4556985401, CAST(N'2020-07-08T03:06:07.720' AS DateTime), CAST(768.8494 AS Decimal(19, 4)), CAST(4094.9347 AS Decimal(19, 4)), 0, 1, 3, 1, N'ein ist Dies Kommentar. zufaelliger Dies Dies Kommentar. ein ist ein Dies Dies ist ist Dies zufaelliger zufaelliger zufaelliger Dies ist Dies ist ist Kommentar. Dies ein ist Dies Dies Dies Kommentar. Kommentar. zufaelliger ein Kommentar. zufaelliger Kommentar. ein ein Dies ist ein Dies ist zufaelliger ein ist ist ein ein zufaelliger Dies Dies Dies ein zufaelliger ein zufaelliger Kommentar. Kommentar. zufaelliger ein Dies ist ein Dies Dies ein Kommentar. Kommentar. Dies Dies ist ein zufaelliger Dies Dies ein zufaelliger ein Kommentar. Dies ist ist Dies Kommentar. Dies Kommentar. Kommentar. zufaelliger zufaelliger Dies ist ein Kommentar. Kommentar. ein Dies Kommentar. Dies Dies ein Dies Dies Kommentar. ein zufaelliger zufaelliger ist Kommentar. ein ist zufaelliger Kommentar. zufaelliger Dies ist zufaelliger ist zufaelliger Kommentar. Dies ist zufaelliger ist Dies ist zufaelliger Dies zufaelliger Kommentar. Dies zufaelliger Dies ein ein Kommentar. zufaelliger ein Dies zufaelliger ein ist Kommentar. ein ein zufaelliger zufaelliger ein ein Kommentar. Dies Kommentar. ist zufaelliger Dies zufaelliger Kommentar. ein zufaelliger Dies zufaelliger ein Kommentar. ein Kommentar. Dies Dies ein ist Kommentar. Dies Dies Kommentar. Kommentar. ist Dies ist Dies ist zufaelliger zufaelliger zufaelliger zufaelliger ein Kommentar. ist Kommentar. zufaelliger zufaelliger Dies Kommentar. Dies Kommentar. Kommentar. zufaelliger Dies zufaelliger Dies zufaelliger ist ein ist Kommentar. zufaelliger zufaelliger Kommentar. ein zufaelliger Dies ein ein zufaelliger Kommentar. ist Kommentar. zufaelliger Kommentar. Dies ist ein Dies Kommentar. ist Dies ist ist ein zufaelliger zufaelliger ein zufaelliger ein ist Dies ein ist zufaelliger Kommentar. Kommentar. Kommentar. zufaelliger Dies Kommentar. Dies ist ist Dies zufaelliger Kommentar. zufaelliger Kommentar. zufaelliger ist ein ein Kommentar. ein ein ist Dies ist ist Dies Dies zufaelliger Dies ist Dies Kommentar. Kommentar. Dies Kommentar. ein ein ist zufaelliger zufaelliger ein ein ist zufaelliger Dies ist Dies Kommentar. Kommentar. Kommentar. ist ist Dies ist ein ist zufaelliger zufaelliger Kommentar. Dies Kommentar. ein Dies Dies ist ist Dies Kommentar. ein ein Dies Kommentar. Dies zufaelliger Kommentar. Dies ein ein zufaelliger Kommentar. zufaelliger ein ist zufaelliger ein ist ist Kommentar. Dies ist Dies ist ist ist zufaelliger ist zufaelliger ist Kommentar. ist Kommentar. Dies zufaelliger zufaelliger ist Dies ist zufaelliger zufaelliger ein ein zufaelliger ist Kommentar. Dies ist ein ein ist Dies Kommentar. Dies ein Kommentar. Dies ein zufaelliger ein Kommentar. ist zufaelliger Kommentar. zufaelliger zufaelliger ein Kommentar. Dies ist ist Kommentar. Dies zufaelliger ein Dies zufaelliger ein ein ist Kommentar. Kommentar. Kommentar. Dies Kommentar. ein zufaelliger Kommentar. Dies ist Kommentar. Dies Kommentar. ein ein ist zufaelliger ein ein ist ist ein zufaelliger ein zufaelliger Dies ist')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (47, 9020597170, CAST(N'2018-10-03T08:58:23.020' AS DateTime), CAST(-26.6861 AS Decimal(19, 4)), CAST(380673774492232.9759 AS Decimal(19, 4)), 0, 1, 2, 1, N'Dies ein Dies Kommentar. Kommentar. ist ein ist ist ein Dies Dies zufaelliger zufaelliger ist Kommentar. Dies ein Dies ist ein ein ein Kommentar. ist zufaelliger Kommentar. ist ein Dies Kommentar. Kommentar. zufaelliger ist ist zufaelliger ein Kommentar. Kommentar. Kommentar. Dies zufaelliger Dies zufaelliger ist Kommentar. ist Dies zufaelliger zufaelliger Kommentar. ist zufaelliger Kommentar. Dies Kommentar. ein Dies Kommentar. Kommentar. Kommentar. zufaelliger ist Dies ein Kommentar. Kommentar. Dies Kommentar. ein ist zufaelliger ist Dies ein zufaelliger Kommentar. ist ist zufaelliger zufaelliger Kommentar. zufaelliger Kommentar. Dies ein ist ein zufaelliger Kommentar. Kommentar. Kommentar. ist Dies ein ist zufaelliger Kommentar. zufaelliger ist ein ist Dies zufaelliger Kommentar. Kommentar. Dies Kommentar. zufaelliger ein Kommentar. Kommentar. ist Kommentar. ein Kommentar. ein Kommentar. zufaelliger Dies Dies Dies ein ist zufaelliger ein ein Kommentar. Kommentar. Kommentar. ist zufaelliger Kommentar. zufaelliger Dies zufaelliger ein ist zufaelliger ein Dies Kommentar. Kommentar. Dies zufaelliger ein ein ein Dies ist ist ist zufaelliger Dies ein ein Kommentar. ein Dies Dies Kommentar. Dies ein ist Dies Kommentar. ist Kommentar. Dies Kommentar. ist Kommentar. Kommentar. ein zufaelliger ist Kommentar. ein ist Kommentar. zufaelliger Kommentar. Dies Kommentar. zufaelliger ist Kommentar. ist Kommentar. zufaelliger ist ein ein Dies Dies zufaelliger Dies ein Kommentar. zufaelliger Kommentar. Dies zufaelliger ein ein ein Dies zufaelliger ist ist ein ist ist Dies Dies Kommentar. Kommentar. ein ist zufaelliger ein ein ist Dies Kommentar. ist Kommentar. Kommentar. zufaelliger zufaelliger ein zufaelliger zufaelliger ein ist Kommentar. Kommentar. ist Kommentar. Kommentar. Kommentar. Dies ist ein Dies zufaelliger Kommentar. Dies Kommentar. ein Kommentar. ist ist Dies zufaelliger Dies ein ein Dies zufaelliger zufaelliger Dies Dies zufaelliger ein Kommentar. Dies zufaelliger Kommentar. ist zufaelliger ein Dies Kommentar. ist ein Dies zufaelliger Dies zufaelliger ein zufaelliger Kommentar. zufaelliger ein ein ein Dies ist zufaelliger zufaelliger ist ein ein ist Kommentar. ein Dies Kommentar. Dies Dies zufaelliger ist Dies Dies ist Kommentar. ein ein ist ist ist ist ein ein ein ist Dies ist zufaelliger zufaelliger ist zufaelliger ein zufaelliger ist Dies zufaelliger ist Dies zufaelliger Dies Dies ist ist zufaelliger Dies ist ist zufaelliger zufaelliger ist zufaelliger Dies ist ein ein zufaelliger Dies zufaelliger zufaelliger ein ein Kommentar. zufaelliger ein Kommentar. Dies Kommentar. Dies Kommentar. zufaelliger ein zufaelliger Dies ist ist ein ein ist Dies Kommentar. Dies Kommentar. ist zufaelliger ein Dies Kommentar. Dies ist')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (48, 3656985401, CAST(N'2019-06-20T21:22:51.630' AS DateTime), CAST(734.0278 AS Decimal(19, 4)), CAST(978597873808774.3245 AS Decimal(19, 4)), 0, 2, 6, 1, N'ein Kommentar. zufaelliger ein Kommentar. ein zufaelliger Dies zufaelliger ein zufaelliger Kommentar. ist Dies zufaelliger ein Kommentar. Kommentar. zufaelliger zufaelliger Kommentar. zufaelliger Kommentar. ist zufaelliger ein ein ein Dies ein Kommentar. zufaelliger Kommentar. ist zufaelliger Dies ein Kommentar. zufaelliger ein zufaelliger Dies ist Kommentar. ein ist zufaelliger Kommentar. Dies ein Dies Dies ein Kommentar. Kommentar. zufaelliger Kommentar. ist Dies zufaelliger Dies ist Dies ein Kommentar. Kommentar. ist Kommentar. ein Kommentar. ist ist Dies Dies ein Dies zufaelliger zufaelliger Dies Dies ein Dies Kommentar. Dies ist zufaelliger zufaelliger ist Dies zufaelliger Dies Kommentar. zufaelliger Dies Kommentar. Kommentar. Dies ist Dies zufaelliger Kommentar. ein Kommentar. Kommentar. zufaelliger ist ist zufaelliger ist Dies zufaelliger zufaelliger Kommentar. zufaelliger ist zufaelliger zufaelliger ist ist zufaelliger Kommentar. zufaelliger Dies ist Dies Dies Kommentar. zufaelliger ein ist ein Dies zufaelliger ist Dies ein ist ist Kommentar. Kommentar. Kommentar. ist Kommentar. Dies Kommentar. ist Kommentar. Kommentar. ein zufaelliger Dies Dies ein ein ist Dies ein ist ein ein Dies ein Dies Kommentar. Kommentar. Kommentar. zufaelliger ist ein zufaelliger ein zufaelliger ein ist Kommentar. ein ist Kommentar. ein Dies ist ein ist Dies ein zufaelliger Kommentar. ein ein Dies ist ein Kommentar. Dies Kommentar. ein zufaelliger zufaelliger ist ein ist zufaelliger zufaelliger zufaelliger Dies ein zufaelliger Dies ist ist zufaelliger Kommentar. ein Dies ist ein Kommentar. Dies ein Dies ein Kommentar. ist Kommentar. Dies ist ein zufaelliger Dies Kommentar. ist zufaelliger zufaelliger ist ein ist zufaelliger ein Kommentar. zufaelliger zufaelliger Dies Kommentar. zufaelliger ein Dies ein ist Kommentar. Kommentar. ist zufaelliger Kommentar. ein ist Kommentar. Kommentar. Kommentar. ist ist Kommentar. ein ein ist Kommentar. zufaelliger ein zufaelliger ein zufaelliger ein ist Kommentar. ist Dies Kommentar. ein Kommentar. ein ist zufaelliger ein Kommentar. ist ist ist ein ist zufaelliger zufaelliger ist ein ist ist Dies Kommentar. ein ein Kommentar. ein ein Kommentar. ist zufaelliger Dies Kommentar. ein Kommentar. ist Dies ein ein ein Kommentar. Dies zufaelliger Kommentar. ein Kommentar. Dies ein Kommentar. Kommentar. ist zufaelliger ist Dies Kommentar. zufaelliger Kommentar. zufaelliger Kommentar. Kommentar. Kommentar. Kommentar. zufaelliger Kommentar. Dies ein ein zufaelliger ein ist ist Kommentar. zufaelliger Dies Kommentar. Dies Kommentar. ein Dies Kommentar. ist Dies zufaelliger ist ist Kommentar. zufaelliger Dies Dies zufaelliger Kommentar. ein zufaelliger Dies zufaelliger ist ein ist ein Dies zufaelliger zufaelliger Dies Dies ein ein ist ist ist ein zufaelliger Dies Dies Kommentar. ein Kommentar. ist zufaelliger zufaelliger Dies zufaelliger Dies zufaelliger zufaelliger Kommentar. Kommentar. ein Kommentar. zufaelliger zufaelliger zufaelliger Dies ist Kommentar. ein Kommentar. ist ein Kommentar. ist ein Dies Dies ist ein zufaelliger Kommentar. ein zufaelliger zufaelliger Kommentar. zufaelliger ein ist zufaelliger Dies zufaelliger zufaelliger Dies ist ist Kommentar. ein Kommentar. Dies ist ein ist Dies zufaelliger ein Dies Kommentar. Dies Dies Dies ist Kommentar. Dies ist zufaelliger ein ist ein ist ist zufaelliger zufaelliger')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (49, 5876897174, CAST(N'2021-07-22T13:36:49.140' AS DateTime), CAST(2150.8738 AS Decimal(19, 4)), CAST(-617849087284247.6901 AS Decimal(19, 4)), 0, 2, 3, 3, N'ist Kommentar. ein zufaelliger ist ein zufaelliger zufaelliger zufaelliger Kommentar. ist ist zufaelliger Kommentar. Dies zufaelliger zufaelliger Kommentar. ist Dies ist zufaelliger ist ist ein Kommentar. ein ein zufaelliger zufaelliger ein ein Dies ein Kommentar. Dies Dies ein Kommentar. ein Dies Kommentar. ist ist ist ist ist ein ist zufaelliger ist ein Dies Kommentar. Kommentar. ein ist Dies ist ein ein ein Dies zufaelliger ein ist ist ist ein Dies Dies Kommentar. zufaelliger ist ein ein ist zufaelliger zufaelliger ist ein zufaelliger Kommentar. ein Kommentar. ein zufaelliger Kommentar. Kommentar. Kommentar. ein ein Kommentar. Dies ist Dies Dies ist Kommentar. Dies ist Kommentar. Kommentar. ein zufaelliger Kommentar. ist ist Kommentar. Kommentar. Dies zufaelliger Kommentar. ist ein zufaelliger zufaelliger ist ist ein Kommentar. ein Dies ist zufaelliger Kommentar. Dies Dies Dies zufaelliger ist zufaelliger ist Kommentar. Kommentar. zufaelliger ist ein ist Kommentar. ein Dies zufaelliger zufaelliger ein ist zufaelliger Dies Kommentar. zufaelliger ein Kommentar. Kommentar. Kommentar. Kommentar. zufaelliger ein Dies zufaelliger ein Kommentar. Kommentar. Dies Dies zufaelliger Kommentar. zufaelliger ein ist zufaelliger Dies Kommentar. ein Dies zufaelliger ein ist Dies ist zufaelliger zufaelliger Dies Dies Kommentar. zufaelliger Dies ein ein zufaelliger ist zufaelliger')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (50, 1446877025, CAST(N'2018-03-30T18:02:25.890' AS DateTime), CAST(-6.0735 AS Decimal(19, 4)), CAST(215173803109387.6902 AS Decimal(19, 4)), 0, 2, 4, 1, N'ist Dies Dies Kommentar. ist Dies zufaelliger ein zufaelliger ein ist zufaelliger zufaelliger zufaelliger zufaelliger Kommentar. Dies ist zufaelliger ein Dies ein zufaelliger ist zufaelliger ist Dies ist ein ein zufaelliger Dies ein Dies zufaelliger ein ist ist ein zufaelliger Dies Dies Dies Kommentar. Dies Dies Dies zufaelliger ein zufaelliger Kommentar. zufaelliger Dies Dies zufaelliger ein Dies zufaelliger Dies Kommentar. ist Dies zufaelliger ein Dies Kommentar. ist ist ein ein ein zufaelliger ein ist Kommentar. ein Dies ist Dies zufaelliger Kommentar. Kommentar. Kommentar. Dies Kommentar. ein Dies ein zufaelliger Dies Kommentar. ist ist ein ist ein ist ein ein Dies Dies zufaelliger ein ein Kommentar. ein zufaelliger Dies zufaelliger Dies Dies zufaelliger ist ein zufaelliger Kommentar. Kommentar. Kommentar. ist zufaelliger ein ein Dies ist ein Dies Kommentar. zufaelliger zufaelliger Kommentar. Kommentar. zufaelliger ist ein zufaelliger ist zufaelliger zufaelliger zufaelliger ein ein ist zufaelliger Kommentar. ein zufaelliger Dies ein ist Dies ein zufaelliger Dies ein zufaelliger ein zufaelliger zufaelliger ein ist Dies ein Kommentar. ist ist Dies ein ein ein ist ein ist Dies ein Kommentar. ist Dies ein Kommentar. Kommentar. ein Dies ist Kommentar. Kommentar. zufaelliger ein ein Kommentar. Kommentar. ist Dies ist ein Kommentar. zufaelliger ist ist Kommentar. ein Kommentar. ein ein Dies ist ein ist ein Dies zufaelliger Kommentar. ist Dies ein ist ein ist ist zufaelliger Kommentar. ein zufaelliger Dies Dies Kommentar. Dies ein ein Dies ist ist zufaelliger Dies ein Dies Dies zufaelliger zufaelliger ist Dies Dies ein Kommentar. Dies zufaelliger ist ist zufaelliger ist ein Dies ein Dies ist Dies Dies Dies zufaelliger ein Kommentar. Kommentar. zufaelliger Dies zufaelliger Kommentar. Kommentar. ist Dies ein Kommentar. ist zufaelliger Kommentar. Dies ist ein Kommentar. Kommentar. ein zufaelliger Kommentar. Kommentar. Dies Kommentar. ist ist Dies Dies ist ist Kommentar. Kommentar. Dies zufaelliger ist ein Dies zufaelliger Kommentar. Kommentar. Dies ein ein Kommentar. ein Dies Dies zufaelliger Dies zufaelliger Dies Kommentar. Kommentar. ein Kommentar. ein ist zufaelliger Kommentar. Dies Kommentar. zufaelliger zufaelliger Dies ein ein ein Dies zufaelliger zufaelliger zufaelliger Kommentar. ist ein ist ist ist ein Kommentar. Kommentar. Dies ist ein ein ist Kommentar. ein Kommentar. Dies Dies ein zufaelliger Dies ein zufaelliger ein ein zufaelliger Kommentar. zufaelliger zufaelliger zufaelliger Dies Dies Dies Dies Dies ein Dies zufaelliger Kommentar. ein ist ein ein Kommentar. Dies zufaelliger Kommentar. Dies Dies ist zufaelliger ein ein ein ist ein ist ein ein Kommentar. Dies ein ein ein zufaelliger ein ist ist zufaelliger ist ein ein Dies Dies Kommentar. Kommentar. zufaelliger Dies zufaelliger zufaelliger Kommentar. zufaelliger Kommentar. zufaelliger Dies ein Dies ist ist ein ist ist Dies Kommentar. ist Kommentar. Dies Dies ist Kommentar. ein ein zufaelliger Kommentar. Kommentar. ist ein ist ist Kommentar. ist ein ein ist Dies Dies ist Kommentar. zufaelliger zufaelliger ist ist ist ist Kommentar. Dies')
INSERT [dbo].[Konto] ([Konto_ID], [Kontonummer], [EingerichtetAm], [KontoStand], [KontoStandErlaubt], [Gesperrt], [Filial_ID], [KontoArt_ID], [Bonitaet_ID], [Kommentar]) VALUES (51, 1000000001, CAST(N'2022-08-31T00:00:00.000' AS DateTime), CAST(941.2523 AS Decimal(19, 4)), CAST(-5000000.0000 AS Decimal(19, 4)), 0, 1, 1, 1, N'MiniBankFiliale eigenes Konto')
SET IDENTITY_INSERT [dbo].[Konto] OFF
GO
SET IDENTITY_INSERT [dbo].[KontoArt] ON 

INSERT [dbo].[KontoArt] ([KontoArt_ID], [Bezeichnung], [Einheit], [Kosten], [Interval], [Kommentar]) VALUES (1, N'Girokonto', 1, CAST(3.5000 AS Decimal(19, 4)), 1, N'')
INSERT [dbo].[KontoArt] ([KontoArt_ID], [Bezeichnung], [Einheit], [Kosten], [Interval], [Kommentar]) VALUES (2, N'Sparkonto', 0, CAST(0.0200 AS Decimal(19, 4)), 3, N'ist Dies Dies ein ein ist Dies Kommentar. ein Dies Dies Kommentar. Kommentar. ein Kommentar. zufaelliger Kommentar. ist zufaelliger Dies ein Kommentar. ein Kommentar. ist zufaelliger ist Dies Dies Kommentar. zufaelliger ist zufaelliger zufaelliger zufaelliger Kommentar. Kommentar. zufaelliger ein Dies Kommentar. zufaelliger Dies ist zufaelliger Kommentar. Kommentar. ein Kommentar. Dies ein zufaelliger ist Dies ein ein zufaelliger zufaelliger ist zufaelliger Dies ist Kommentar. zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. ist Kommentar. ein ist zufaelliger ein Kommentar. Kommentar. ein ist ist ein ist Dies Dies Dies Dies ist Dies Kommentar. zufaelliger zufaelliger ist ist zufaelliger zufaelliger ist ist ist ein ein zufaelliger ein Kommentar. zufaelliger Dies Dies ist ein Kommentar. ist Kommentar. Dies Kommentar. ein Kommentar. Dies Dies ist ein ein ist Dies ein Kommentar. Kommentar. ist ein ein Dies ein Dies ist Dies Dies ein ist ein ist zufaelliger ist ein zufaelliger Kommentar. Dies Kommentar. ein ein Dies Dies ein ein Kommentar. zufaelliger Kommentar. Dies Dies Kommentar. ein ist Dies Dies zufaelliger Dies ist Dies Kommentar. Kommentar. ein ist zufaelliger ist Kommentar. Dies ist ist Dies Dies ein ist zufaelliger zufaelliger Dies ein Dies ist Kommentar. ein Kommentar. ist ein ist ist Kommentar. Kommentar. ist Kommentar. zufaelliger ist zufaelliger Dies Dies Kommentar. ein zufaelliger Kommentar. ein zufaelliger zufaelliger zufaelliger ein Dies ist Kommentar. ein Dies Kommentar. Kommentar. zufaelliger Kommentar. ein zufaelliger zufaelliger Dies Kommentar. ein ist Dies Kommentar. zufaelliger Dies Kommentar. ein ein zufaelliger ein ist Kommentar. zufaelliger Dies ein Dies ist ist ist ist Dies Kommentar. ist ist Dies ist Dies Dies Kommentar. ein Dies ist zufaelliger Kommentar. ein ist ein ein ein ein Dies ist ist ein Dies ein Kommentar. ein ein ein Dies zufaelliger ist zufaelliger Kommentar. Kommentar. ist Kommentar. ein Kommentar. ein zufaelliger ein Dies zufaelliger ist zufaelliger ist ein ein Kommentar. Dies Dies Kommentar. zufaelliger zufaelliger ein Dies ist ein zufaelliger ein Dies ein Kommentar. Kommentar. ist ist Dies zufaelliger Dies ist ist ein Kommentar. Dies ein ein Kommentar. zufaelliger Dies ist zufaelliger zufaelliger Kommentar. Kommentar. Kommentar. ist ein ist ein ist Dies zufaelliger Kommentar. ein Dies Dies Kommentar. ist ist Dies ein Dies Dies ein zufaelliger zufaelliger Kommentar. ein ist zufaelliger ein zufaelliger Dies ein zufaelliger ein ein ein Dies Dies Dies ein zufaelliger ein Kommentar. Dies ein Kommentar. ein ist zufaelliger Kommentar. Kommentar. zufaelliger ist ist zufaelliger Dies zufaelliger Dies ein Kommentar. ein zufaelliger zufaelliger Dies Kommentar. Dies ist zufaelliger')
INSERT [dbo].[KontoArt] ([KontoArt_ID], [Bezeichnung], [Einheit], [Kosten], [Interval], [Kommentar]) VALUES (3, N'Kreditkartenkonto', 0, CAST(0.0700 AS Decimal(19, 4)), 6, N'Dies ein Kommentar. ist ein Kommentar. Kommentar. Dies zufaelliger zufaelliger ein ist Dies Kommentar. zufaelliger ist zufaelliger ein zufaelliger ist Dies ist ist zufaelliger zufaelliger Dies zufaelliger ein zufaelliger ein ist zufaelliger zufaelliger ein Dies ein Dies zufaelliger Dies ist ist ist zufaelliger ist Kommentar. ist Dies zufaelliger ist ist ein ist ein Kommentar. ist Dies ist zufaelliger Kommentar. ein zufaelliger ein ist Kommentar. ist ist ist ein Kommentar. Dies Dies Kommentar. ist ein zufaelliger zufaelliger zufaelliger zufaelliger ein Kommentar. ein Kommentar. ein Kommentar. Kommentar. ein zufaelliger zufaelliger ist zufaelliger ist Dies Kommentar. Kommentar. zufaelliger ist zufaelliger ein Dies zufaelliger Dies ein zufaelliger Dies Kommentar. Dies Dies zufaelliger zufaelliger zufaelliger zufaelliger Dies Kommentar. Kommentar. ist ein Dies Dies ist ein ein ist ist Dies Dies ein Kommentar. zufaelliger Kommentar. ist ist zufaelliger Kommentar. Dies ist zufaelliger Kommentar. zufaelliger Dies ein ist Dies Kommentar. ein zufaelliger ist ist Dies Kommentar. Kommentar. ist ist ist zufaelliger ist ist Kommentar. ein ein zufaelliger ein ein ein zufaelliger ein ist zufaelliger ein Kommentar. Dies ist Kommentar. ein zufaelliger ein Dies Dies ist ein zufaelliger Kommentar. Kommentar. Dies Dies Kommentar. Kommentar. Kommentar. ein Kommentar. Kommentar. ist ist ein Kommentar. zufaelliger Kommentar. ist Kommentar. zufaelliger zufaelliger Dies Kommentar. zufaelliger Dies Kommentar. ist Kommentar. Kommentar. Kommentar. ist zufaelliger Kommentar. zufaelliger Dies ist zufaelliger Kommentar. ein Kommentar. ein ist ist Kommentar. Kommentar. ist ein ein ein zufaelliger ist zufaelliger zufaelliger ist Kommentar. ist ist zufaelliger zufaelliger Kommentar. Kommentar. ein ein Kommentar. ein ist ist Kommentar. Dies ein ist zufaelliger Kommentar. ein Kommentar. Dies zufaelliger ein ein Kommentar. ein Kommentar. Kommentar. zufaelliger ein ist ist ein ist Kommentar. zufaelliger Kommentar. ein ist ein zufaelliger zufaelliger Dies ist ein ist ein ist Kommentar. ist ist ist ein ist ein ist ein Kommentar. zufaelliger Dies zufaelliger Kommentar. ist Dies ist Kommentar. Dies zufaelliger zufaelliger Kommentar. ist zufaelliger zufaelliger Dies zufaelliger Dies ein zufaelliger ist Dies ist Kommentar. ist Kommentar. Kommentar. ein zufaelliger zufaelliger zufaelliger Dies Kommentar. ein Dies ist ist zufaelliger ein ist ein ist ein Kommentar. Kommentar. ein ein Dies zufaelliger zufaelliger ist zufaelliger zufaelliger zufaelliger Dies Kommentar. Dies zufaelliger ist')
INSERT [dbo].[KontoArt] ([KontoArt_ID], [Bezeichnung], [Einheit], [Kosten], [Interval], [Kommentar]) VALUES (4, N'Depotkonto', 0, CAST(0.0300 AS Decimal(19, 4)), 12, N'Kommentar. Kommentar. ein ein Kommentar. Dies ein ein zufaelliger zufaelliger zufaelliger ist Kommentar. Kommentar. Dies ein ist ein Dies Kommentar. Kommentar. Kommentar. ist zufaelliger zufaelliger ein Kommentar. ein ist zufaelliger Kommentar. ein zufaelliger ist ein Kommentar. Dies Kommentar. ist Kommentar. zufaelliger ein zufaelliger ein Dies ist Kommentar. Dies zufaelliger Dies Kommentar. ein ist zufaelliger Dies ein zufaelliger ein ist Dies ist ist ist ein Kommentar. ein ein Kommentar. ist Dies ist Dies zufaelliger Kommentar. Dies ein ein zufaelliger ein ist Kommentar. ein zufaelliger Dies Kommentar. ein Kommentar. ein Kommentar. Kommentar. ist zufaelliger ein ist ein zufaelliger zufaelliger Dies ist ein Dies ein ein ein zufaelliger Kommentar. Dies ein ein ein zufaelliger Kommentar. ist Kommentar. ist ein ist zufaelliger zufaelliger zufaelliger zufaelliger ist zufaelliger ist ist Kommentar. ein Kommentar. ein ein ein ist ist zufaelliger ist ist')
INSERT [dbo].[KontoArt] ([KontoArt_ID], [Bezeichnung], [Einheit], [Kosten], [Interval], [Kommentar]) VALUES (5, N'Festgeldkonto', 0, CAST(0.0180 AS Decimal(19, 4)), 12, N'')
INSERT [dbo].[KontoArt] ([KontoArt_ID], [Bezeichnung], [Einheit], [Kosten], [Interval], [Kommentar]) VALUES (6, N'Tagesgeldkonto', 0, CAST(0.0010 AS Decimal(19, 4)), 12, N'Dies ein ein ist Dies ist Kommentar. ein zufaelliger ist ist Kommentar. ist Dies Kommentar. ein zufaelliger Dies Kommentar. ein zufaelliger zufaelliger Kommentar. ist Dies ist ein zufaelliger Kommentar. ein ein ein ein ein zufaelliger zufaelliger ist ist ist Dies ein ist Kommentar. Kommentar. Kommentar. zufaelliger ist ein Kommentar. Kommentar. Kommentar. Dies Kommentar. ist ist Dies Dies ein Dies Dies ist ist ein ein zufaelliger zufaelliger ist Kommentar. ein Dies ein Dies Kommentar. ist Kommentar. Kommentar. Kommentar. Kommentar. Dies ist ein Kommentar. ist zufaelliger ist Kommentar. zufaelliger ein zufaelliger ein ist ein ein ein Dies zufaelliger Dies Dies ein Kommentar. Kommentar. ist ist zufaelliger ein zufaelliger zufaelliger')
SET IDENTITY_INSERT [dbo].[KontoArt] OFF
GO
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (1, 1)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (2, 2)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (3, 3)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (4, 4)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (5, 5)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (6, 6)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (7, 7)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (8, 8)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (9, 9)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (10, 10)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (11, 11)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (12, 12)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (13, 13)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (14, 14)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (15, 15)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (16, 16)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (17, 17)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (18, 18)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (19, 19)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (20, 20)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (21, 21)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (22, 22)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (23, 23)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (24, 24)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (25, 25)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (26, 26)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (27, 27)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (28, 28)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (29, 29)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (30, 30)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (31, 31)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (32, 32)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (33, 33)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (34, 34)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (35, 35)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (36, 36)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (37, 37)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (38, 38)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (39, 39)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (40, 40)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (41, 41)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (42, 42)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (43, 43)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (44, 44)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (45, 45)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (46, 46)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (47, 47)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (48, 48)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (49, 49)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (50, 50)
INSERT [dbo].[KontoBesitzer] ([Kunden_ID], [Konto_ID]) VALUES (53, 51)
GO
SET IDENTITY_INSERT [dbo].[Kunden] ON 

INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (1, N'1615308545', N'Melzer', N'Erwin', CAST(N'1944-07-31' AS Date), N'Deutschland', N'Oeschebüttel', N'67221', N'Kathi-Kobus-Straße', N'27c', N'(810) 636-5001', N'07529594161', NULL)
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (2, N'0756417759', N'Maler', N'Merina', CAST(N'2005-04-22' AS Date), N'Deutschland', N'Cossengrün', N'94723', N'Hedwigstraße', N'9', N'(670) 844-7028', N'07998497331', N'')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (3, N'3835754611', N'Schuhmacher', N'Faralt', CAST(N'1994-09-09' AS Date), N'Deutschland', N'Rügkamp', N'48972', N'Oberländerstraße', N'2', N'(912) 818-6927', N'07786891921', N'ist Dies Dies ein ein ist Dies Kommentar. ein Dies Dies Kommentar. Kommentar. ein Kommentar. zufaelliger Kommentar. ist zufaelliger Dies ein Kommentar. ein Kommentar. ist zufaelliger ist Dies Dies Kommentar. zufaelliger ist zufaelliger zufaelliger zufaelliger Kommentar. Kommentar. zufaelliger ein Dies Kommentar. zufaelliger Dies ist zufaelliger Kommentar. Kommentar. ein Kommentar. Dies ein zufaelliger ist Dies ein ein zufaelliger zufaelliger ist zufaelliger Dies ist Kommentar. zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. ist Kommentar. ein ist zufaelliger ein Kommentar. Kommentar. ein ist ist ein ist Dies Dies Dies Dies ist Dies Kommentar. zufaelliger zufaelliger ist ist zufaelliger zufaelliger ist ist ist ein ein zufaelliger ein Kommentar. zufaelliger Dies Dies ist ein Kommentar. ist Kommentar. Dies Kommentar. ein Kommentar. Dies Dies ist ein ein ist Dies ein Kommentar. Kommentar. ist ein ein Dies ein Dies ist Dies Dies ein ist ein ist zufaelliger ist ein zufaelliger Kommentar. Dies Kommentar. ein ein Dies Dies ein ein Kommentar. zufaelliger Kommentar. Dies Dies Kommentar. ein ist Dies Dies zufaelliger Dies ist Dies Kommentar. Kommentar. ein ist zufaelliger ist Kommentar. Dies ist ist Dies Dies ein ist zufaelliger zufaelliger Dies ein Dies ist Kommentar. ein Kommentar. ist ein ist ist Kommentar. Kommentar. ist Kommentar. zufaelliger ist zufaelliger Dies Dies Kommentar. ein zufaelliger Kommentar. ein zufaelliger zufaelliger zufaelliger ein Dies ist Kommentar. ein Dies Kommentar. Kommentar. zufaelliger Kommentar. ein zufaelliger zufaelliger Dies Kommentar. ein ist Dies Kommentar. zufaelliger Dies Kommentar. ein ein zufaelliger ein ist Kommentar. zufaelliger Dies ein Dies ist ist ist ist Dies Kommentar. ist ist Dies ist Dies Dies Kommentar. ein Dies ist zufaelliger Kommentar. ein ist ein ein ein ein Dies ist ist ein Dies ein Kommentar. ein ein ein Dies zufaelliger ist zufaelliger Kommentar. Kommentar. ist Kommentar. ein Kommentar. ein zufaelliger ein Dies zufaelliger ist zufaelliger ist ein ein Kommentar. Dies Dies Kommentar. zufaelliger zufaelliger ein Dies ist ein zufaelliger ein Dies ein Kommentar. Kommentar. ist ist Dies zufaelliger Dies ist ist ein Kommentar. Dies ein ein Kommentar. zufaelliger Dies ist zufaelliger zufaelliger Kommentar. Kommentar. Kommentar. ist ein ist ein ist Dies zufaelliger Kommentar. ein Dies Dies Kommentar. ist ist Dies ein Dies Dies ein zufaelliger zufaelliger Kommentar. ein ist zufaelliger ein zufaelliger Dies ein zufaelliger ein ein ein Dies Dies Dies ein zufaelliger ein Kommentar. Dies ein Kommentar. ein ist zufaelliger Kommentar. Kommentar. zufaelliger ist ist zufaelliger Dies zufaelliger Dies ein Kommentar. ein zufaelliger zufaelliger Dies Kommentar. Dies ist zufaelliger')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (4, N'4340889927', N'Drescher', N'Rubertus', CAST(N'1982-09-05' AS Date), N'Deutschland', N'Bad König', N'73230', N'Ampfingstraße', N'24c', NULL, N'07624268590', N'Dies ein Kommentar. ist ein Kommentar. Kommentar. Dies zufaelliger zufaelliger ein ist Dies Kommentar. zufaelliger ist zufaelliger ein zufaelliger ist Dies ist ist zufaelliger zufaelliger Dies zufaelliger ein zufaelliger ein ist zufaelliger zufaelliger ein Dies ein Dies zufaelliger Dies ist ist ist zufaelliger ist Kommentar. ist Dies zufaelliger ist ist ein ist ein Kommentar. ist Dies ist zufaelliger Kommentar. ein zufaelliger ein ist Kommentar. ist ist ist ein Kommentar. Dies Dies Kommentar. ist ein zufaelliger zufaelliger zufaelliger zufaelliger ein Kommentar. ein Kommentar. ein Kommentar. Kommentar. ein zufaelliger zufaelliger ist zufaelliger ist Dies Kommentar. Kommentar. zufaelliger ist zufaelliger ein Dies zufaelliger Dies ein zufaelliger Dies Kommentar. Dies Dies zufaelliger zufaelliger zufaelliger zufaelliger Dies Kommentar. Kommentar. ist ein Dies Dies ist ein ein ist ist Dies Dies ein Kommentar. zufaelliger Kommentar. ist ist zufaelliger Kommentar. Dies ist zufaelliger Kommentar. zufaelliger Dies ein ist Dies Kommentar. ein zufaelliger ist ist Dies Kommentar. Kommentar. ist ist ist zufaelliger ist ist Kommentar. ein ein zufaelliger ein ein ein zufaelliger ein ist zufaelliger ein Kommentar. Dies ist Kommentar. ein zufaelliger ein Dies Dies ist ein zufaelliger Kommentar. Kommentar. Dies Dies Kommentar. Kommentar. Kommentar. ein Kommentar. Kommentar. ist ist ein Kommentar. zufaelliger Kommentar. ist Kommentar. zufaelliger zufaelliger Dies Kommentar. zufaelliger Dies Kommentar. ist Kommentar. Kommentar. Kommentar. ist zufaelliger Kommentar. zufaelliger Dies ist zufaelliger Kommentar. ein Kommentar. ein ist ist Kommentar. Kommentar. ist ein ein ein zufaelliger ist zufaelliger zufaelliger ist Kommentar. ist ist zufaelliger zufaelliger Kommentar. Kommentar. ein ein Kommentar. ein ist ist Kommentar. Dies ein ist zufaelliger Kommentar. ein Kommentar. Dies zufaelliger ein ein Kommentar. ein Kommentar. Kommentar. zufaelliger ein ist ist ein ist Kommentar. zufaelliger Kommentar. ein ist ein zufaelliger zufaelliger Dies ist ein ist ein ist Kommentar. ist ist ist ein ist ein ist ein Kommentar. zufaelliger Dies zufaelliger Kommentar. ist Dies ist Kommentar. Dies zufaelliger zufaelliger Kommentar. ist zufaelliger zufaelliger Dies zufaelliger Dies ein zufaelliger ist Dies ist Kommentar. ist Kommentar. Kommentar. ein zufaelliger zufaelliger zufaelliger Dies Kommentar. ein Dies ist ist zufaelliger ein ist ein ist ein Kommentar. Kommentar. ein ein Dies zufaelliger zufaelliger ist zufaelliger zufaelliger zufaelliger Dies Kommentar. Dies zufaelliger ist')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (5, N'3451027379', N'Kramer', N'Ilai', CAST(N'1976-03-21' AS Date), N'Deutschland', N'Kappeln', N'86031', N'Beichstraße', N'2', N'(196) 694-9244', N'07624640490', N'Kommentar. Kommentar. ein ein Kommentar. Dies ein ein zufaelliger zufaelliger zufaelliger ist Kommentar. Kommentar. Dies ein ist ein Dies Kommentar. Kommentar. Kommentar. ist zufaelliger zufaelliger ein Kommentar. ein ist zufaelliger Kommentar. ein zufaelliger ist ein Kommentar. Dies Kommentar. ist Kommentar. zufaelliger ein zufaelliger ein Dies ist Kommentar. Dies zufaelliger Dies Kommentar. ein ist zufaelliger Dies ein zufaelliger ein ist Dies ist ist ist ein Kommentar. ein ein Kommentar. ist Dies ist Dies zufaelliger Kommentar. Dies ein ein zufaelliger ein ist Kommentar. ein zufaelliger Dies Kommentar. ein Kommentar. ein Kommentar. Kommentar. ist zufaelliger ein ist ein zufaelliger zufaelliger Dies ist ein Dies ein ein ein zufaelliger Kommentar. Dies ein ein ein zufaelliger Kommentar. ist Kommentar. ist ein ist zufaelliger zufaelliger zufaelliger zufaelliger ist zufaelliger ist ist Kommentar. ein Kommentar. ein ein ein ist ist zufaelliger ist ist')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (6, N'0593208756', N'Grabbe', N'Eberhard', CAST(N'1998-05-01' AS Date), N'Deutschland', N'Zwota', N'23870', N'Richelstraße', N'2', N'(224) 338-3524', N'07624509047', NULL)
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (7, N'5324647420', N'Vogt', N'Achime ', CAST(N'1932-12-16' AS Date), N'Deutschland', N'Lohen', N'57225', N'Adelheidstraße', N'11', N'(409) 791-7324', N'07624337176', NULL)
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (8, N'1458591266', N'Mann', N'Adine ', CAST(N'1983-07-01' AS Date), N'Deutschland', N'Coswig', N'71398', N'Am Nockherberg', N'2c', N'(313) 721-9488', N'07428426615', N'Dies ein ein ist Dies ist Kommentar. ein zufaelliger ist ist Kommentar. ist Dies Kommentar. ein zufaelliger Dies Kommentar. ein zufaelliger zufaelliger Kommentar. ist Dies ist ein zufaelliger Kommentar. ein ein ein ein ein zufaelliger zufaelliger ist ist ist Dies ein ist Kommentar. Kommentar. Kommentar. zufaelliger ist ein Kommentar. Kommentar. Kommentar. Dies Kommentar. ist ist Dies Dies ein Dies Dies ist ist ein ein zufaelliger zufaelliger ist Kommentar. ein Dies ein Dies Kommentar. ist Kommentar. Kommentar. Kommentar. Kommentar. Dies ist ein Kommentar. ist zufaelliger ist Kommentar. zufaelliger ein zufaelliger ein ist ein ein ein Dies zufaelliger Dies Dies ein Kommentar. Kommentar. ist ist zufaelliger ein zufaelliger zufaelliger')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (9, N'0373239158', N'Berend', N'Manoa', CAST(N'1995-07-24' AS Date), N'Deutschland', N'Fischweier', N'54328', N'Pöppelstraße', N'27', N'(458) 721-4626', N'07624219802', NULL)
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (10, N'7996073960', N'Pflüger', N'Nelda', CAST(N'1958-12-03' AS Date), N'Deutschland', N'Oesterdeichstrich', N'83987', N'Bauerstraße', N'1', N'(734) 250-1472', N'07624743037', NULL)
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (11, N'7789112971', N'Zurbriggen', N'Adelisa ', CAST(N'1995-05-11' AS Date), N'Deutschland', N'Kappelrodeck', N'57687', N'Ansbacher Straße', N'25', N'(696) 299-2856', NULL, N'')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (12, N'8147084567', N'Schulmann', N'Conradin', CAST(N'1965-10-12' AS Date), N'Deutschland', N'Bad Königshofen', N'32062', N'Soldnerweg', N'26', N'(558) 446-4105', N'07624335888', N'')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (13, N'2842143101', N'Kraus', N'Piroschka', CAST(N'1967-07-04' AS Date), N'Deutschland', N'Rügland', N'73293', N'Baldeplatz', N'28f', N'(336) 978-4555', N'07976338203', N'Dies ist Dies zufaelliger Kommentar. ein Dies ist Dies Dies zufaelliger ist ein ein ist zufaelliger ein zufaelliger Dies Dies ist ein ein ein zufaelliger ist Kommentar. Dies zufaelliger zufaelliger zufaelliger Kommentar. ist ist zufaelliger zufaelliger Kommentar. Dies ein Kommentar. ist Kommentar. Kommentar. ein Kommentar. ist ein Dies Kommentar. ist Kommentar. Kommentar. ein ein Dies zufaelliger ist Kommentar. zufaelliger ist ein Dies ist Dies ist Kommentar. ist Kommentar. Dies Kommentar. Kommentar. zufaelliger ein zufaelliger ist Kommentar. ist zufaelliger Dies ist ein Dies Kommentar. ist ein Kommentar. ein ist zufaelliger zufaelliger ist zufaelliger Kommentar. ist ein ist zufaelliger Dies Kommentar. zufaelliger zufaelliger Dies ein zufaelliger Kommentar. ist ein ist zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. zufaelliger ist ist ein Kommentar. ist ist ist ist ein ein Kommentar. zufaelliger Kommentar. zufaelliger ein zufaelliger Dies zufaelliger Dies ein zufaelliger zufaelliger Kommentar. Kommentar. Dies ein zufaelliger zufaelliger Kommentar. ist Dies ein Kommentar. Dies zufaelliger ein ist ein Kommentar. Dies ist ein ein Dies Kommentar. ein zufaelliger Kommentar. Kommentar. ist Kommentar. Kommentar. ein ist Kommentar. ist Kommentar. Kommentar. Kommentar. ist Kommentar. Dies zufaelliger Dies Dies Dies Dies zufaelliger Dies zufaelliger ein ist ein Dies Kommentar. zufaelliger zufaelliger zufaelliger ist Kommentar. ist Kommentar. zufaelliger zufaelliger zufaelliger Kommentar. ist Dies Kommentar. Dies zufaelliger Kommentar. ein Dies ist Kommentar. ein ist Dies zufaelliger')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (14, N'6752268850', N'Voigt', N'Bringfried', CAST(N'1994-05-21' AS Date), N'Deutschland', N'Hallerndorf', N'73275', N'Saarstraße', N'10d', N'(238) 208-2407', NULL, N'')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (15, N'0136643314', N'Drews', N'Getraud', CAST(N'1993-10-15' AS Date), N'Deutschland', N'Fißmühle', N'85407', N'August-Kühn-Straße', N'2a', N'(652) 073-5996', N'07624357597', N'')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (16, N'0662106849', N'Berens', N'Adelisa ', CAST(N'2001-02-22' AS Date), N'Deutschland', N'Oesterwurth', N'22167', N'Helmholtzstraße', N'2', N'(376) 587-3111', N'07954576948', N'ein Dies ein Dies Dies zufaelliger ein ist Dies ein Kommentar. ist zufaelliger ein ein Kommentar. zufaelliger Kommentar. Kommentar. ein ist ein ein ist Dies ist Dies zufaelliger zufaelliger Kommentar. Dies Kommentar. ein ist Dies Dies Dies ein Kommentar. zufaelliger ein Kommentar. zufaelliger zufaelliger Dies Kommentar. Kommentar. ein ein Kommentar. Kommentar. ist ein Kommentar. ein Kommentar. Dies Kommentar. Kommentar. ist Dies Kommentar. zufaelliger Dies Dies ein ist Kommentar. Dies Dies ist Kommentar. ein Dies zufaelliger Dies zufaelliger Dies zufaelliger zufaelliger ein zufaelliger zufaelliger ist ist Kommentar. ein zufaelliger ein ein Kommentar. Kommentar. Dies Kommentar. Kommentar. ein zufaelliger Kommentar. ein ist Kommentar. zufaelliger Kommentar. ein Dies Dies Dies ein ein ein ein zufaelliger ist zufaelliger Dies ist ein ist ist Dies zufaelliger Dies zufaelliger ein Dies ist Dies zufaelliger ein Dies Dies Kommentar. Kommentar. Kommentar. zufaelliger ist ist Kommentar. Dies Kommentar. Kommentar. zufaelliger zufaelliger Kommentar. ist Kommentar. ein ist Kommentar. Dies Kommentar. ein ein ein ist zufaelliger ein Dies Dies zufaelliger zufaelliger ein Kommentar. ist Kommentar. ein Kommentar. zufaelliger zufaelliger Kommentar. ein zufaelliger ein Kommentar. ein ist zufaelliger zufaelliger ein ist ein Dies ein Kommentar. Kommentar. ist zufaelliger zufaelliger ein ist Dies ist ein Kommentar. ein ist ein ein Kommentar. ist ist ist Dies Kommentar. zufaelliger zufaelliger zufaelliger Dies zufaelliger ist Kommentar. ist ein ist Dies ist Kommentar. Kommentar. ein Dies Kommentar. zufaelliger ist Kommentar. ein ist Dies ist ein zufaelliger Dies ein ist ist Dies ein Kommentar. Kommentar. Kommentar. Kommentar. Kommentar. zufaelliger ist Dies zufaelliger ist zufaelliger zufaelliger zufaelliger ein ist ist ein Kommentar. Kommentar. ist Kommentar. ist ist Kommentar. ist ein ist ein ein Kommentar. Kommentar. ein Kommentar. Dies ein ist Dies ein ein ein Dies Kommentar. ist Kommentar. ein Dies Dies zufaelliger ist ist ein zufaelliger Kommentar. Dies ein ist Kommentar. ein Kommentar. zufaelliger ein ist ist ist ist ist ist ein ist zufaelliger ist Kommentar. ein Kommentar. Kommentar. Kommentar. ist ist Kommentar. zufaelliger ein Dies Kommentar. ein ist ein ist ist zufaelliger zufaelliger ein zufaelliger ist zufaelliger ist ist ein Dies Dies ist zufaelliger zufaelliger zufaelliger ein ein ein Kommentar. Kommentar. Kommentar. Dies Kommentar. ein Kommentar. Kommentar. ist Dies ist zufaelliger Dies zufaelliger zufaelliger Dies zufaelliger ein ist Dies Dies ist ist Dies ein Kommentar. Dies ein zufaelliger zufaelliger Dies Dies ein Dies Kommentar. Kommentar. Kommentar. Kommentar. zufaelliger Dies zufaelliger ein Kommentar. zufaelliger ist ist Kommentar. Kommentar. Kommentar. Kommentar. ist zufaelliger Kommentar. Dies Kommentar. ist ist Kommentar. ist ein ist Dies ist Dies zufaelliger Dies ist ein ein Kommentar. ein ein zufaelliger ein ein Dies zufaelliger ist zufaelliger Dies Dies ein Dies ist Kommentar. zufaelliger zufaelliger zufaelliger ein ein Kommentar. Kommentar. Dies Dies Kommentar. Dies ein zufaelliger ist zufaelliger ein ist Kommentar. Dies ist Dies Dies ein ist Dies')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (17, N'6337002933', N'Dümmler', N'Lunis', CAST(N'1952-01-05' AS Date), N'Deutschland', N'Hallgarten', N'32285', N'Schluderstraße', N'5', N'(838) 529-0541', N'07432245885', N'ein zufaelliger Dies ein Kommentar. Kommentar. ein ist ein Dies ist zufaelliger Kommentar. ist zufaelliger zufaelliger ist Dies Dies Dies Kommentar. ist ist zufaelliger zufaelliger Kommentar. Dies ein zufaelliger ist zufaelliger Kommentar. ist Kommentar. Dies ein ein ein ist ist Dies zufaelliger ein ein Kommentar. ein ist zufaelliger ein Dies Kommentar. ist ein ist ist zufaelliger Kommentar. ist Dies Kommentar. ein ein Dies ein ein Kommentar. Dies Dies Dies ein Kommentar. ist Dies ist ein ein zufaelliger Kommentar. ein Kommentar. ein ein ist ist zufaelliger Dies ist Dies Kommentar. Kommentar. zufaelliger zufaelliger ein ein zufaelliger Kommentar. ein ein Kommentar. Kommentar. zufaelliger ein zufaelliger ein zufaelliger zufaelliger ein Dies ein ein zufaelliger Dies zufaelliger ein Dies Kommentar. ein ein ein Kommentar. Kommentar. ist ist Dies zufaelliger Kommentar. Kommentar. Dies Kommentar. zufaelliger ein Dies Kommentar. Kommentar. ist Kommentar. ist zufaelliger Dies Kommentar. ein Dies Dies ist Kommentar. ein Dies zufaelliger zufaelliger ein ein ein Kommentar. ist ist ist zufaelliger Dies Kommentar. zufaelliger Kommentar. ist ist zufaelliger ein Dies ist ist ist ein Kommentar. zufaelliger Kommentar. Dies Dies Dies Dies Kommentar. ein ist Dies ein zufaelliger ist zufaelliger Dies Kommentar. ist ein ist Dies Dies ein ein ist zufaelliger ist Dies zufaelliger Dies Kommentar. zufaelliger Kommentar. Dies ist Kommentar. Dies ein Kommentar. zufaelliger Kommentar. ein zufaelliger Dies ein Kommentar. ein ein Dies zufaelliger ist ein Dies Kommentar. ist Dies ein zufaelliger Kommentar. Kommentar. Dies ein Kommentar. ist ist Kommentar. ein ein Dies ein Dies ein Kommentar. Kommentar. Dies zufaelliger zufaelliger ein ist Kommentar. ist ein ein zufaelliger zufaelliger ist ist Dies Dies zufaelliger zufaelliger ist Dies ein Dies Dies ist ist ein ist ein zufaelliger ein Dies ein Dies Dies Kommentar. ein ist zufaelliger ist Kommentar. ist ein zufaelliger Kommentar. ist ist zufaelliger ist Kommentar. zufaelliger ist Dies ist Kommentar. Kommentar. Dies ist ein Dies ein zufaelliger ein Kommentar. Kommentar. zufaelliger Dies ist ist ein ist ist zufaelliger ist ein Kommentar. Dies Dies ein ist Kommentar. ein zufaelliger ein Kommentar. ist ist ist ein zufaelliger Kommentar. Dies Kommentar. ist Dies ein ist ein ist ein Dies Kommentar. ist zufaelliger zufaelliger ein ein ein ein ein Kommentar. ist ist Dies ist ist Dies zufaelliger Dies zufaelliger Dies ein zufaelliger ein ein zufaelliger Kommentar. Kommentar. Dies Kommentar. Kommentar. zufaelliger ist Dies')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (18, N'6919242679', N'Schulmeister', N'Joelline', CAST(N'2000-07-09' AS Date), N'Deutschland', N'Sehlem', N'93620', N'Grimmstraße', N'8', N'(141) 969-5565', NULL, N'ist Kommentar. Kommentar. Dies ist ein Kommentar. Kommentar. ist Dies zufaelliger zufaelliger Kommentar. ein Kommentar. ist Dies ist Kommentar. Dies ist zufaelliger zufaelliger ist Dies ist ist zufaelliger Dies Dies zufaelliger Dies ist zufaelliger ein Dies ist zufaelliger Dies zufaelliger Dies Kommentar. ist Kommentar. zufaelliger ist Dies Dies Kommentar. Dies Kommentar. zufaelliger ein Dies Kommentar. ist ein ist Kommentar. zufaelliger ist zufaelliger ein zufaelliger Dies Dies ein ein zufaelliger ist zufaelliger ist Dies ist Kommentar. Dies Dies ist Dies ein Kommentar. zufaelliger zufaelliger zufaelliger Dies Kommentar. ist ein zufaelliger Kommentar. Dies zufaelliger Kommentar. zufaelliger zufaelliger Dies ein Kommentar. zufaelliger zufaelliger ein zufaelliger ist ist Kommentar. Kommentar. Kommentar. ein Kommentar. ist Dies zufaelliger Dies zufaelliger zufaelliger Kommentar. Kommentar. Dies zufaelliger ist ein zufaelliger ein Dies zufaelliger ist ist Dies zufaelliger Dies Dies ein ist Dies Dies Dies Kommentar. ein ein Kommentar. ein ist ein Dies ist ist Dies Kommentar. Kommentar. zufaelliger Dies zufaelliger ein ist Dies ein ist zufaelliger zufaelliger zufaelliger ein ein Kommentar. ein ist Kommentar. ein Kommentar. zufaelliger ist Kommentar. Kommentar. Dies Kommentar. zufaelliger Kommentar. Kommentar. Kommentar. Dies Kommentar. ist Kommentar. zufaelliger Dies ein zufaelliger Dies zufaelliger Kommentar. Dies Dies ist ein Kommentar. ist zufaelliger Kommentar. Dies ist zufaelliger zufaelliger Kommentar. Kommentar. zufaelliger zufaelliger Dies zufaelliger Dies Kommentar. ein Dies Kommentar. ein zufaelliger zufaelliger Kommentar. Kommentar. ist ein Dies Dies Kommentar. Dies ist Dies zufaelliger Dies ein ist zufaelliger Dies zufaelliger Kommentar. Dies ist zufaelliger Kommentar. ist Dies zufaelliger Kommentar. ist ist ist ist Dies ist Dies ist ist ein ein zufaelliger Kommentar. Kommentar. zufaelliger ein Dies Kommentar. Dies Kommentar. Dies ist ein ein Kommentar. zufaelliger Dies ist ist ist ein Dies ist ein zufaelliger Dies Dies zufaelliger Dies ist zufaelliger ist Dies zufaelliger ein ein ist zufaelliger Kommentar. Kommentar. Kommentar. zufaelliger ein zufaelliger ist ist ein ein Kommentar. ein ist Dies zufaelliger zufaelliger Dies zufaelliger ist ein zufaelliger Kommentar. ein zufaelliger zufaelliger zufaelliger Kommentar. ist ein ist Dies ist Dies ist zufaelliger Kommentar. ein Kommentar. ein Dies zufaelliger Kommentar. ein zufaelliger ein ein ist ist ist zufaelliger Kommentar. Dies zufaelliger zufaelliger ein ist ist Dies Kommentar. ein Kommentar. Kommentar. zufaelliger Dies ein ist ist zufaelliger ein ein ist Kommentar. ist ein Kommentar. ein ist Dies Dies Dies Dies Kommentar. Kommentar. ein Kommentar. Dies Dies ist ein Kommentar. ein ein Dies zufaelliger zufaelliger Kommentar. ein Kommentar. Kommentar. Kommentar. ist ist zufaelliger zufaelliger Kommentar. ist ist Dies zufaelliger ein Dies Kommentar. Dies ein ein Dies Kommentar. ein Kommentar. Dies Kommentar. Kommentar. ein ein Kommentar. Kommentar. Dies ist Kommentar. ist ein Kommentar. Kommentar. Kommentar. Dies Dies Dies ein ist zufaelliger zufaelliger ist ein zufaelliger ist Kommentar. Kommentar. ist Dies zufaelliger Kommentar. Kommentar. ein ist ein Kommentar. Dies Dies ein ist ein zufaelliger Dies zufaelliger ist Kommentar. zufaelliger Dies Dies ist ein ist Kommentar. ein Dies zufaelliger ein zufaelliger zufaelliger ist zufaelliger zufaelliger Kommentar.')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (19, N'0785101685', N'Mencke', N'Zyprian', CAST(N'1944-02-16' AS Date), N'Deutschland', N'Vitense', N'91895', N'Senefelderstraße', N'2', N'(569) 150-2930', N'07624201703', N'')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (20, N'5989071572', N'von Feierbach', N'Dominikus', CAST(N'1977-10-14' AS Date), N'Deutschland', N'Fitzbek', N'83148', N'Adi-Maislinger-Straße', N'2', NULL, N'07624428008', N'ist ein Dies ein ist Kommentar. Kommentar. ist Dies ist Dies zufaelliger ist Dies Dies ist Kommentar. Kommentar. Kommentar. zufaelliger zufaelliger Dies Kommentar. ist Kommentar. zufaelliger Kommentar. Kommentar. Dies ist ein Dies Kommentar. zufaelliger zufaelliger Kommentar. Dies zufaelliger Dies Kommentar. ist ein ist ein Dies zufaelliger ist Dies Dies ein Dies Kommentar. Dies Kommentar. zufaelliger Kommentar. Kommentar. ist Dies Kommentar. Kommentar. zufaelliger zufaelliger zufaelliger Dies ist zufaelliger zufaelliger zufaelliger ist Kommentar. zufaelliger zufaelliger ein ein ein zufaelliger zufaelliger ein Dies Dies Dies Dies Dies ist ein zufaelliger Dies ein zufaelliger ist Dies Dies ist ein ist Kommentar. Dies ist ist Kommentar. Kommentar. Kommentar. Kommentar. Dies Dies Dies Kommentar. zufaelliger ein Dies zufaelliger Dies zufaelliger Dies zufaelliger Kommentar. zufaelliger ein zufaelliger Dies ist ist Kommentar. ist Dies ist zufaelliger ist zufaelliger Kommentar. ein Dies ein ein ist ist ist Dies Dies ein ein zufaelliger zufaelliger ist ein ist Dies zufaelliger Kommentar. Dies ist Dies ein Kommentar. Dies zufaelliger Kommentar. zufaelliger zufaelliger Kommentar. Dies Kommentar. Dies ist zufaelliger ein ein zufaelliger ist Kommentar. zufaelliger zufaelliger Kommentar. ein Dies ein Dies ist ist Dies ist zufaelliger ein zufaelliger Dies ein ein Kommentar. ist zufaelliger Dies ist Kommentar. zufaelliger Kommentar. ist ist ist ein Dies Dies Dies zufaelliger Dies ist Dies zufaelliger zufaelliger Kommentar. ein Dies ist Dies ein Kommentar. Kommentar. Kommentar. zufaelliger Dies Dies ist Dies Kommentar. Dies ist zufaelliger zufaelliger Kommentar. zufaelliger Kommentar. zufaelliger Dies zufaelliger ist Kommentar. Kommentar. ist ist ein Kommentar. Dies ein ein zufaelliger ein ein Dies ein zufaelliger ein Kommentar. ist Dies Kommentar. Dies ein ein Kommentar. ein ein ein ein Dies zufaelliger zufaelliger ist Dies ist Kommentar. Kommentar. ein ist Dies zufaelliger ein ein Kommentar. zufaelliger ist Dies Kommentar. ein Dies zufaelliger ein ist Kommentar. zufaelliger ist Kommentar. Dies ist ein zufaelliger ein Kommentar. Dies Kommentar. Dies ist Dies Dies ein zufaelliger Kommentar. zufaelliger ein Dies ist Dies ist ein ist ein Dies zufaelliger ein Kommentar. ist ist Kommentar. zufaelliger ist ein Kommentar. Dies Dies Kommentar. zufaelliger ein ist zufaelliger ein ist Kommentar. Dies zufaelliger ist Kommentar. zufaelliger ist Dies zufaelliger Dies ein Kommentar. Dies zufaelliger Kommentar. Dies ein zufaelliger ein ein Dies Kommentar. Dies Kommentar. Dies Kommentar. ist Dies Kommentar. Kommentar. ein Dies ein zufaelliger Kommentar. ist Kommentar. ist ein Kommentar. zufaelliger Kommentar. ein Kommentar. zufaelliger ein zufaelliger ist Dies ist ein Kommentar. ein ist ist zufaelliger zufaelliger zufaelliger Dies zufaelliger Kommentar. ist Kommentar. Kommentar. Dies Dies ein Kommentar. Dies ein ist Kommentar. Dies ein Kommentar. ist zufaelliger Dies ist Dies zufaelliger Kommentar. Kommentar. ist Dies zufaelliger Dies Kommentar. Kommentar. ist ist Dies Kommentar. Kommentar. Dies Kommentar. zufaelliger zufaelliger ein Kommentar.')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (21, N'5584830158', N'Kallisen', N'Herwin', CAST(N'1996-07-22' AS Date), N'Deutschland', N'Lohe-Rickelshof', N'24286', N'Hackerbrücke', N'1', N'(741) 261-0983', N'07911985817', N'')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (22, N'7355118648', N'Krause', N'Bernolf', CAST(N'1952-07-01' AS Date), N'Deutschland', N'Rühen', N'22449', N'Lessingstraße', N'29', N'(408) 449-2230', N'07872919643', N'Kommentar. ist Kommentar. Kommentar. ein ist Kommentar. zufaelliger Dies ein zufaelliger ein Kommentar. Dies Dies Kommentar. Kommentar. ist Dies ist Dies ein ein Kommentar. ein ist Dies Kommentar. ist zufaelliger ein ein ein ein Kommentar. zufaelliger zufaelliger zufaelliger Dies ein Kommentar. ist ein ein ist Dies Dies ein Kommentar. ist zufaelliger zufaelliger ein zufaelliger Dies ein ist ein ist ein Dies zufaelliger zufaelliger zufaelliger Kommentar. Kommentar. ein Kommentar. zufaelliger Kommentar. ist ist ist ist zufaelliger ist Kommentar. ein ein ein zufaelliger Dies Dies ein Dies ist zufaelliger zufaelliger ist ein ein Kommentar. ein ist Kommentar. Dies Kommentar. ein Dies Kommentar. Kommentar. ist zufaelliger ist Dies Dies ist Dies Kommentar. Dies Kommentar. Dies ist ein Kommentar. ist ein Kommentar. ein ein Kommentar. zufaelliger Dies ein ist ist Dies Dies ein Kommentar. ist ein Dies Dies Dies Kommentar. Kommentar. Kommentar. ist ist ein ein ist ein ist ein ist ein Dies')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (23, N'3980430248', N'Kalm', N'Lambertus', CAST(N'1999-06-26' AS Date), N'Deutschland', N'Cöthen', N'55253', N'Hohenstaufenstraße', N'88f', N'(262) 337-9667', N'07595204299', N'Kommentar. zufaelliger Dies Kommentar. ist Kommentar. Dies Dies')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (24, N'3013494055', N'Pichler', N'Filla', CAST(N'2008-05-19' AS Date), N'Deutschland', N'Sehlen', N'63145', N'Häberlstraße', N'8', N'(579) 450-6682', NULL, N'ist Kommentar. zufaelliger Kommentar. ist Kommentar. Kommentar. ist zufaelliger ist Kommentar. Dies Dies Dies Dies ein ein Kommentar. ist ein Dies ein zufaelliger zufaelliger zufaelliger ist zufaelliger Kommentar. ein ist Kommentar. ist Kommentar. ein Kommentar. zufaelliger Kommentar. Kommentar. Kommentar. Kommentar. Kommentar. ein ist ist ist Dies zufaelliger zufaelliger Dies Dies zufaelliger Kommentar. ist zufaelliger ein Dies ein ist ist ein ist ist zufaelliger ist Kommentar. ist ist zufaelliger Dies zufaelliger Kommentar. Dies Kommentar. ein zufaelliger zufaelliger ein Kommentar. ist Dies zufaelliger Dies zufaelliger ein ein ist ist Dies ein Dies ein ein ist zufaelliger zufaelliger')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (25, N'7244058278', N'Schultz', N'Oktavian', CAST(N'1935-09-13' AS Date), N'Deutschland', N'Oestrich-Winkel', N'99390', N'Marstallplatz', N'3d', N'(297) 957-6005', N'07801852368', N'Dies Kommentar.')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (26, N'1207814012', N'Krebs', N'Nava', CAST(N'1953-07-19' AS Date), N'Deutschland', N'Bad Kösen', N'58399', N'Uhlandstraße', N'16', N'(501) 678-3429', N'07947122280', N'Dies Kommentar. Dies ist ein Dies Dies ist ein Dies Dies ein Kommentar. zufaelliger Dies zufaelliger Kommentar. zufaelliger Dies ein ist Dies Kommentar. ein zufaelliger ist ein ist ein Kommentar. Dies Dies ein zufaelliger Kommentar. ein zufaelliger ist ein ist Dies Kommentar. ein Kommentar. zufaelliger zufaelliger ist Dies ein ein zufaelliger ein zufaelliger ein Kommentar. ist Dies ist zufaelliger zufaelliger ist ist Kommentar. Dies ist ist Dies Dies ein zufaelliger ein ist Dies ein Dies Kommentar. ist Kommentar. ein Dies ein ein ist Kommentar. ist ein zufaelliger ist Dies Kommentar. Kommentar. ein zufaelliger Kommentar. zufaelliger ein zufaelliger ist ist zufaelliger ein ein ein ist ein Kommentar. zufaelliger ist ein Dies ein ein Kommentar. ist zufaelliger Kommentar. ein ein zufaelliger zufaelliger ein ein ist ist ein zufaelliger ist Dies Kommentar. zufaelliger zufaelliger ist ein Kommentar. zufaelliger Kommentar. ein Kommentar. ein zufaelliger ein Kommentar. ist ein Kommentar. zufaelliger ist Dies Kommentar. zufaelliger ist Kommentar. Dies ein Kommentar. Kommentar. Dies Dies Kommentar. Kommentar. ein Dies ist ist ist ein zufaelliger zufaelliger zufaelliger Dies Kommentar. ein Dies zufaelliger Dies ein ist ein ein ist Dies ist zufaelliger Dies ein ist Dies Kommentar. ist ist ein ist ist Dies Dies Kommentar. Kommentar. ein ist ist zufaelliger ein zufaelliger Dies zufaelliger Dies ein ein zufaelliger Dies ist zufaelliger Dies ein Kommentar. ein Dies zufaelliger zufaelliger Dies ein Dies zufaelliger ein ein ein Kommentar. ein zufaelliger zufaelliger Dies ist Kommentar. ist Dies zufaelliger ein zufaelliger Kommentar. ist zufaelliger Dies Dies zufaelliger Dies zufaelliger Dies zufaelliger Kommentar. ist Dies Kommentar. Dies zufaelliger ein Dies ist Dies Dies Kommentar. zufaelliger Kommentar. ein ein ist ein ein Dies zufaelliger Kommentar. Kommentar. ist Kommentar. Dies ein ein zufaelliger ein Dies Dies ist zufaelliger Kommentar. Dies ist ist ist zufaelliger ein ist Dies Dies Kommentar. Kommentar. Dies Kommentar. Kommentar. ein ist Dies zufaelliger zufaelliger ein Dies Kommentar. ein Dies Kommentar. zufaelliger ist zufaelliger zufaelliger ein zufaelliger Dies Dies Dies zufaelliger zufaelliger ein Kommentar. zufaelliger Dies ist ist Dies Kommentar. Dies Kommentar. Dies Kommentar. zufaelliger zufaelliger Dies ist Dies Dies ein Dies ein ist Kommentar. ein ein ein Kommentar. ist zufaelliger Dies ein ein Kommentar. Dies ist ein Kommentar. Dies ein ein ist Kommentar. ein Dies ein zufaelliger ein zufaelliger ist zufaelliger ist zufaelliger zufaelliger ein Dies Kommentar. zufaelliger zufaelliger zufaelliger ist Dies ein Dies ein ist Dies ist Dies Dies Kommentar. Dies Dies ein Kommentar. Dies Kommentar. Kommentar. Kommentar. zufaelliger Dies zufaelliger zufaelliger Dies zufaelliger ein ist ein ein Kommentar. Kommentar. Kommentar. ein ein zufaelliger Kommentar. Kommentar.')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (27, N'4502185183', N'Kaltenbrunner', N'Cilli', CAST(N'1961-05-02' AS Date), N'Deutschland', N'Kaps', N'85344', N'Ettstraße', N'4', N'(991) 431-8689', NULL, N'zufaelliger Dies Kommentar.')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (28, N'8099529732', N'Berg', N'Zebedäus', CAST(N'1972-01-09' AS Date), N'Deutschland', N'Hallschlag', N'57362', N'Aberlestraße', N'2', N'(834) 146-1492', N'07624531757', N'')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (29, N'0464346271', N'Menger', N'Boas', CAST(N'1997-04-12' AS Date), N'Deutschland', N'Ruhethal', N'04260', N'Innere Wiener Straße', N'9', N'(499) 082-7604', N'07904711173', N'ist ein ein Dies ein ein ein ist zufaelliger zufaelliger ist ein Dies ein Kommentar. ein Dies Dies Dies zufaelliger Dies zufaelliger ein Kommentar. Kommentar. ein ein Dies ist Kommentar. ist zufaelliger zufaelliger zufaelliger zufaelliger zufaelliger ist zufaelliger ein Dies zufaelliger Kommentar. ist ist zufaelliger Dies Kommentar. ein ein ist Dies zufaelliger ein ein Kommentar. zufaelliger ist zufaelliger Kommentar. Kommentar. Kommentar. Dies ein zufaelliger ein zufaelliger Dies zufaelliger ein Dies ein Kommentar. Kommentar. zufaelliger Kommentar. ist Dies Dies Kommentar. ein Dies ein Kommentar. zufaelliger Dies ist Dies Kommentar. Dies zufaelliger ein ist Dies Dies Dies Kommentar. zufaelliger ist Dies ein ein ist ist ein Kommentar. zufaelliger Kommentar. Kommentar. ein Kommentar. zufaelliger ist ist zufaelliger zufaelliger ist ist zufaelliger zufaelliger ein Dies Kommentar. Kommentar. ist Kommentar. ein ein zufaelliger Dies Dies zufaelliger Dies Kommentar. ist ist Kommentar. ein zufaelliger ein ist ist ist Kommentar. ist zufaelliger ein Dies Dies Dies Kommentar. Dies zufaelliger Dies Dies Kommentar. Kommentar. zufaelliger Dies Dies ist Dies zufaelliger Kommentar. Kommentar. Dies Dies Kommentar. ein Kommentar. Kommentar. Kommentar. ein zufaelliger Dies ein Dies ein zufaelliger Dies Kommentar. ist zufaelliger ein ein zufaelliger ein ein ein ein ist ist ein ist ist zufaelliger ein Kommentar. zufaelliger ist Dies zufaelliger ist Dies zufaelliger ein Dies ein ist zufaelliger Kommentar. ein zufaelliger zufaelliger ist Dies ein Dies zufaelliger Kommentar. Dies zufaelliger ist Dies ist ein zufaelliger zufaelliger Kommentar. zufaelliger ein ein zufaelliger Kommentar. Dies ein ein ist Kommentar. Dies Dies zufaelliger zufaelliger ein zufaelliger ein ein zufaelliger zufaelliger ist zufaelliger zufaelliger ein Dies Dies Dies ein zufaelliger zufaelliger Kommentar. Dies ein Dies zufaelliger Kommentar. zufaelliger Kommentar. ein ein Dies zufaelliger ist Dies zufaelliger Dies Kommentar. Dies ein zufaelliger ist Kommentar. Dies ist ist ist zufaelliger Kommentar. zufaelliger ein ist Dies ist ein Kommentar. zufaelliger Dies Dies Kommentar. Dies Kommentar. zufaelliger ein zufaelliger Dies Dies Dies Dies Kommentar. ein ist ist Kommentar. zufaelliger zufaelliger Dies ist Kommentar. Kommentar. Dies zufaelliger ein ein zufaelliger Kommentar. ist Kommentar. zufaelliger ein Dies zufaelliger Dies Dies Kommentar. ist zufaelliger zufaelliger ist ein zufaelliger Dies ist ein ist ein Kommentar. Kommentar. ein ist ein Kommentar. ist Kommentar. Kommentar. zufaelliger zufaelliger Dies ein Dies Kommentar. ein ein zufaelliger zufaelliger zufaelliger zufaelliger Kommentar. Kommentar. zufaelliger ist ein Dies ein Dies zufaelliger ist Dies Kommentar. Kommentar. Kommentar. zufaelliger Dies Kommentar. Kommentar. ein ein Kommentar. ist ist Kommentar. zufaelliger')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (30, N'8319767370', N'von Richthofen', N'Amona', CAST(N'1960-01-28' AS Date), N'Deutschland', N'Cottbus', N'46592', N'Adelheidstraße', N'25c', N'(851) 648-4060', N'07624730687', N'')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (31, N'6360312561', N'Krenz', N'Baldo ', CAST(N'1988-11-30' AS Date), N'Deutschland', N'Lohfelden', N'88042', N'Emma-Ihrer-Straße', N'1', N'(804) 113-0357', N'07773436804', N'ein zufaelliger Kommentar. zufaelliger Dies Dies ein ist ein zufaelliger zufaelliger ist Dies Kommentar. Kommentar. ein Dies Kommentar. Kommentar. ist Kommentar. zufaelliger Dies zufaelliger Dies ist Dies Dies ein ein ist Dies ein ein zufaelliger Kommentar. ein Dies Kommentar. ein ist zufaelliger Dies Dies Dies ein Kommentar. ein Dies ist zufaelliger ein Kommentar. ein Dies ein ist zufaelliger Kommentar. Dies zufaelliger Dies ist ist Dies ist Dies')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (32, N'0736731663', N'Ebel', N'Guta', CAST(N'1932-03-08' AS Date), N'Deutschland', N'Fitzen', N'73328', N'Platenstraße', N'1', N'(311) 272-0511', N'07445574632', N'Dies ist Kommentar. Dies ein Kommentar. zufaelliger ein Kommentar. ist ist zufaelliger ein ein ein Kommentar. ist Dies zufaelliger Dies zufaelliger ist zufaelliger Kommentar. ein zufaelliger Dies Kommentar. ist Kommentar. zufaelliger ein ein Dies ist ein Dies ist ein ein ist Dies ist zufaelliger Kommentar. zufaelliger zufaelliger ein ist Kommentar. ein Dies Dies zufaelliger zufaelliger ein Dies ist Dies zufaelliger ist Dies ein Kommentar. Kommentar. zufaelliger ein ist ein Kommentar. ein Dies Kommentar. zufaelliger zufaelliger zufaelliger Dies ist ist ist zufaelliger Dies Kommentar. Dies ein Kommentar. zufaelliger ist ist Dies zufaelliger ein ist zufaelliger Kommentar. Dies Dies zufaelliger ist zufaelliger Kommentar. zufaelliger ist Dies ein ist ein Dies zufaelliger ein ein ein ein Kommentar. ist ist zufaelliger ein Kommentar. Kommentar. ist zufaelliger Kommentar. Kommentar. Kommentar. ist zufaelliger ist zufaelliger ist zufaelliger Dies Kommentar. ist zufaelliger zufaelliger ein ein zufaelliger zufaelliger zufaelliger ein Kommentar. Dies ist ein Kommentar. ein Dies zufaelliger zufaelliger zufaelliger Dies ein Dies ist zufaelliger zufaelliger ist Kommentar. ein Dies zufaelliger Dies ist zufaelliger Kommentar. ist Dies Dies Kommentar. ist ist zufaelliger ein Kommentar. zufaelliger ein zufaelliger Dies Kommentar. Dies zufaelliger ein Dies zufaelliger ist ein zufaelliger Kommentar. Kommentar. zufaelliger zufaelliger ein Kommentar. Dies ein ein ist zufaelliger Dies ist Dies Dies zufaelliger Kommentar. ein Kommentar. ist Kommentar. Kommentar. Dies ist ist Kommentar. ist ein Kommentar. Dies Kommentar. Dies ist ein ein Kommentar. Dies Kommentar. zufaelliger Kommentar. ist Dies ein Dies Dies Kommentar. Kommentar. zufaelliger Dies ist ist Dies Dies Kommentar. Kommentar. zufaelliger ein Kommentar. ein Dies zufaelliger Kommentar. ist zufaelliger ist ist ist Kommentar. zufaelliger Kommentar. ein Dies ist Dies zufaelliger ist Kommentar. ein ein ein Kommentar. ein Kommentar. ist ein ist ein Kommentar. zufaelliger Kommentar. ist zufaelliger ein ist Kommentar. ist Kommentar. Dies Dies ein Kommentar. Dies Dies zufaelliger ist Kommentar. Dies ein Kommentar. Kommentar. Kommentar. ist ein ein zufaelliger ein ein zufaelliger ist ein Dies ist ein ist Kommentar. ein Kommentar. ein ist Dies zufaelliger zufaelliger Dies ist ist zufaelliger ein zufaelliger ist Kommentar. Kommentar. zufaelliger Dies Kommentar. ein ein zufaelliger Dies zufaelliger zufaelliger Kommentar. Dies zufaelliger zufaelliger')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (33, N'4027840953', N'Kamphausen', N'Adelinde ', CAST(N'2008-01-25' AS Date), N'Deutschland', N'Kapsweyer', N'71025', N'Schwindstraße', N'25-27', N'(408) 949-7919', N'07763692846', N'ein Dies Dies zufaelliger Dies Kommentar. ein ein zufaelliger zufaelliger Dies ein Dies ein Dies ist Dies ein ein ein Kommentar. ist zufaelliger zufaelliger ist ein Dies zufaelliger ist Kommentar. Dies zufaelliger ein zufaelliger zufaelliger Dies ist Dies ein Dies zufaelliger Dies ein ist Dies ein Kommentar. ist Kommentar. ist Dies ein ein zufaelliger ist ein ist Dies ein Kommentar. Dies ist ist ein zufaelliger Dies ein Kommentar. ein zufaelliger ein Kommentar. ein ein Dies Dies ist Kommentar. ist ist Kommentar. zufaelliger Kommentar. ist ein zufaelliger ein zufaelliger ein Kommentar. ist zufaelliger ein Kommentar. ist ein zufaelliger zufaelliger ist Kommentar. ist Kommentar. Kommentar. ist zufaelliger zufaelliger Dies Dies ist Kommentar. Kommentar. ein Dies ist zufaelliger Dies Dies Dies ist Dies ein Kommentar. Dies ein ein Dies ist zufaelliger ein zufaelliger Dies Dies ein Kommentar. ist Kommentar. ein ist ein zufaelliger Kommentar. zufaelliger Dies ein ein Kommentar. Dies zufaelliger ist ist Dies Kommentar. ist ist Kommentar. Kommentar. ein Dies ein ein ist ist ist Kommentar. Kommentar. Dies ist zufaelliger ein ein Dies zufaelliger Kommentar. zufaelliger zufaelliger Kommentar. ein ein zufaelliger Kommentar. Kommentar. ist zufaelliger ein Kommentar. Kommentar. Kommentar. Dies Kommentar. ist Kommentar. Dies Dies ist Dies ein zufaelliger ist ein zufaelliger ist ein zufaelliger Kommentar. zufaelliger Dies Kommentar. zufaelliger Dies ein zufaelliger ein ist ein ein ist Dies Dies Dies ein Dies Dies zufaelliger Kommentar. Dies zufaelliger Dies Dies Kommentar. ein zufaelliger ist ist zufaelliger Kommentar. zufaelliger Kommentar. Dies ist Dies ein ist ist ist ist ein Kommentar. zufaelliger zufaelliger Kommentar. Dies ist Dies Kommentar. Dies zufaelliger ist zufaelliger Dies Kommentar. ist ein ist Dies Dies ist ein ein ein zufaelliger ein ein ist Kommentar. ist ein zufaelliger Dies Kommentar. Dies Dies ist ein Dies zufaelliger zufaelliger Dies ein Dies ein ein zufaelliger Kommentar. Dies ist ein zufaelliger zufaelliger ein Dies zufaelliger Dies Kommentar. zufaelliger Dies Dies Dies Kommentar. zufaelliger ist Kommentar. zufaelliger ist Dies Dies ein ein Kommentar. Dies Dies Kommentar. Dies zufaelliger Dies Dies zufaelliger ist zufaelliger Kommentar. zufaelliger ein Dies Kommentar. Kommentar. zufaelliger ein Dies Kommentar. ist ein zufaelliger Kommentar. Dies zufaelliger ein Kommentar. zufaelliger zufaelliger Kommentar. ein ein ein Kommentar. Kommentar.')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (34, N'8598010807', N'Hörman', N'Aegina ', CAST(N'1952-01-10' AS Date), N'Deutschland', N'Vitte', N'53283', N'Landwehrstraße', N'7', N'(394) 168-3957', N'07480903148', N'Dies Dies ein ist Kommentar. Kommentar. Dies Dies ist Dies Kommentar. ein ein Dies ist ist zufaelliger ist zufaelliger ein zufaelliger ein zufaelliger ist ein Dies ein Kommentar. ist zufaelliger zufaelliger ist Dies zufaelliger Dies Dies Dies ist Dies ist ist zufaelliger ist ist ist ist Dies zufaelliger ist Kommentar. zufaelliger Dies Kommentar. zufaelliger zufaelliger zufaelliger Kommentar. ein Kommentar. Dies ist Dies ein ist ein zufaelliger Dies zufaelliger zufaelliger zufaelliger Dies Dies ist ein ist ist ein ist Kommentar. Dies Dies zufaelliger Dies ein ist ist Kommentar. ein zufaelliger ein Kommentar. ist ist ist ein ein zufaelliger zufaelliger ein')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (35, N'8206114267', N'Grasse', N'Cordt', CAST(N'1952-01-24' AS Date), N'Deutschland', N'Lohheide, gemfr. Bezirk', N'34208', N'Saint-Privat-Straße', N'4c', N'(660) 841-9547', N'07925160720', N'ist ein Kommentar. zufaelliger ein Kommentar. ist ist Kommentar. Kommentar. ein ist zufaelliger zufaelliger ist ein zufaelliger ist ist ist ein Dies Dies Dies Kommentar. ist ist zufaelliger ein ein ist Dies Kommentar. zufaelliger ist Dies Kommentar. Kommentar. zufaelliger Dies ein Dies zufaelliger Kommentar. ist Dies zufaelliger Dies zufaelliger zufaelliger zufaelliger ein zufaelliger Dies ein Dies Kommentar. ein zufaelliger zufaelliger ein ist Kommentar. zufaelliger zufaelliger Dies Kommentar. Kommentar. ein Dies Kommentar. ist ist Kommentar. Dies Dies Kommentar. ein Dies Kommentar. Kommentar. Kommentar. Dies ist Kommentar. Dies Dies Dies Dies ist Kommentar. ein ein ein ist zufaelliger ist ist zufaelliger Dies Dies zufaelliger Dies ist ein Kommentar. Dies Kommentar. Dies Dies Dies ein ein ein ein Dies zufaelliger ist Dies ein Dies ein ist Kommentar. Kommentar. Dies Dies Kommentar. Dies Dies Kommentar. Dies ein Kommentar. ein ist Kommentar. ist Kommentar. Dies ist ist zufaelliger ein Kommentar. Dies Dies Dies ein zufaelliger Dies ein zufaelliger zufaelliger zufaelliger Dies Dies Dies Dies zufaelliger Kommentar. zufaelliger ein zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. Dies ist ist Dies Kommentar. zufaelliger ist ist ist Kommentar. zufaelliger Dies ist ist zufaelliger zufaelliger ein ist Dies ist zufaelliger ein zufaelliger ist ein zufaelliger ein ein Dies zufaelliger ist ist ist Dies Kommentar. zufaelliger Dies Dies Kommentar. Kommentar. Kommentar. Kommentar. ein Kommentar. Kommentar. zufaelliger Kommentar. Kommentar. ist ist zufaelliger ist zufaelliger Kommentar. ein Dies Dies ist Kommentar. Dies Dies ist ist ist ist Kommentar. Dies ein ein zufaelliger Dies ist zufaelliger Kommentar. Kommentar. Kommentar. zufaelliger zufaelliger Dies zufaelliger Kommentar. Dies zufaelliger Kommentar. ein ein Kommentar. ist Dies Kommentar. ein zufaelliger ein ein Kommentar. Kommentar. Kommentar. ein zufaelliger ist ist Kommentar. Dies zufaelliger Dies zufaelliger ein ein zufaelliger ist ein ist zufaelliger zufaelliger ist ein Kommentar.')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (36, N'1913015285', N'Plater', N'Rachebald', CAST(N'1995-08-08' AS Date), N'Deutschland', N'Hallstadt', N'43720', N'Kazmairstraße', N'208', N'(371) 555-7281', N'07624766119', N'ein Kommentar. ein Kommentar. Dies zufaelliger Dies zufaelliger zufaelliger Dies ist zufaelliger ist Kommentar. ist Kommentar. Kommentar. ist ein Kommentar. ein ein ein zufaelliger Dies ist ein Dies ein Dies ist Kommentar. ein Dies Dies Dies Dies zufaelliger Dies zufaelliger ist zufaelliger zufaelliger Dies Dies ist Kommentar. ist ist Dies Kommentar. Dies ein Kommentar. ein Dies ein ein ist Kommentar. ist ist Dies zufaelliger ist Dies Dies Dies zufaelliger ist ist ein zufaelliger Dies Dies Kommentar. ein ist ist ein Kommentar. ist Dies ein ein zufaelliger ist Kommentar. zufaelliger zufaelliger Kommentar. Dies zufaelliger ein Dies ein zufaelliger zufaelliger Dies Kommentar. Dies zufaelliger Kommentar. ein Dies Kommentar. ist Kommentar. zufaelliger Kommentar. zufaelliger zufaelliger ein ist Kommentar. ist ist Dies zufaelliger zufaelliger ein Kommentar. zufaelliger zufaelliger Dies ein zufaelliger ist ein Kommentar. ein ein zufaelliger Kommentar. ist Kommentar. ein zufaelliger Kommentar. ein Dies zufaelliger zufaelliger ein zufaelliger zufaelliger zufaelliger ist Kommentar. Kommentar. Kommentar. zufaelliger zufaelliger ist ist ein zufaelliger Dies ein Dies ein ein Kommentar. Dies ein Kommentar. zufaelliger ein Kommentar. zufaelliger ist ist Dies ist Dies ist ein Kommentar. Kommentar. ist Dies Kommentar. zufaelliger ist ist Kommentar. ein Dies Dies ist ist Dies zufaelliger Dies zufaelliger ein Kommentar. Dies ist Dies ein ein zufaelliger Dies ein zufaelliger Kommentar. ein ein ein ein ein zufaelliger ein zufaelliger ein zufaelliger Dies zufaelliger Kommentar. Kommentar. zufaelliger ist Dies zufaelliger Kommentar. ein ein ein ein zufaelliger ist ist Kommentar. Kommentar. ist ein zufaelliger zufaelliger Dies zufaelliger zufaelliger ist Kommentar. ist Kommentar. Dies ist ist Kommentar. ein ist Kommentar. Dies zufaelliger ein ist ein Kommentar. ein ein zufaelliger Kommentar. Kommentar. Dies Kommentar. ein Kommentar. Kommentar. Kommentar. ein Kommentar. ein zufaelliger Dies zufaelliger Kommentar. ist ist Dies ist Dies zufaelliger Kommentar. Dies ist Kommentar. zufaelliger Kommentar. ist ein Dies Dies Kommentar. Kommentar. Kommentar. Dies ein Dies Dies zufaelliger ein Kommentar. Kommentar. Kommentar. ist Kommentar. ist ein Dies zufaelliger Kommentar. zufaelliger Dies Dies Kommentar. Dies zufaelliger ist Dies')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (37, N'2969052484', N'Hornberger', N'Abbeygail ', CAST(N'1952-01-02' AS Date), N'Deutschland', N'Flachslanden', N'26312', N'Königsplatz', N'14-17', N'(259) 003-7279', N'07954777655', N'')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (38, N'2020837567', N'Schulz', N'Hypolit', CAST(N'2005-12-18' AS Date), N'Deutschland', N'Sehmatal-Cranzahl', N'99838', N'Marsstraße', N'7d', N'(402) 994-9105', N'07624222532', N'ist ein zufaelliger zufaelliger zufaelliger Dies zufaelliger Kommentar. ein Kommentar. zufaelliger ein ein Kommentar. ist zufaelliger Dies Kommentar. zufaelliger ein Kommentar. ist Kommentar. ist Kommentar. ein Kommentar. ist Dies Dies zufaelliger ist Dies Kommentar. Dies zufaelliger Dies ist zufaelliger Dies Kommentar. Dies zufaelliger ein Kommentar. ist ist Kommentar. Kommentar. zufaelliger ein ein Kommentar. zufaelliger zufaelliger Kommentar. zufaelliger ein ist zufaelliger ist Dies ist ist ist ist Kommentar. zufaelliger ist zufaelliger Dies ist Kommentar. zufaelliger Kommentar. Kommentar. zufaelliger ein Dies Dies Kommentar. Dies zufaelliger zufaelliger Dies Dies zufaelliger ein ein Kommentar. Dies Dies Dies ist Kommentar. ein ist ein ist zufaelliger Dies Kommentar. ist zufaelliger Dies ein Dies ist Dies Kommentar. ein ein ein ist Kommentar. zufaelliger Dies ein ein ein ist ist zufaelliger ein zufaelliger ist zufaelliger Dies ist ist ein Dies ein ist ist ein ist Kommentar. Kommentar. ist Kommentar. ein zufaelliger Dies zufaelliger Dies zufaelliger zufaelliger Kommentar. zufaelliger zufaelliger zufaelliger zufaelliger ist zufaelliger zufaelliger zufaelliger zufaelliger ein zufaelliger zufaelliger zufaelliger ein Kommentar. zufaelliger Dies Dies zufaelliger ein ist ein Kommentar. zufaelliger ist ein Dies zufaelliger ein ist ein Kommentar. Dies ein zufaelliger Dies ist ist Kommentar. zufaelliger ein ein ein zufaelliger Dies ein ein ein Kommentar. zufaelliger ist ist Kommentar. Kommentar. ein zufaelliger ist ein Dies ein Dies Kommentar. zufaelliger ist ein ist Kommentar. ein zufaelliger Kommentar. ein ist Kommentar. ein Dies ist zufaelliger zufaelliger zufaelliger Kommentar. Dies Dies ist ein Kommentar. zufaelliger ein ein zufaelliger Dies Dies ein Kommentar. Dies Dies zufaelliger ein Kommentar. Dies zufaelliger ist Kommentar. zufaelliger Dies Kommentar. Dies Kommentar. ein ist zufaelliger ist ein Kommentar. zufaelliger Kommentar. zufaelliger Kommentar. Dies ist ist zufaelliger ist Dies ist zufaelliger zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. zufaelliger ein zufaelliger ist Dies zufaelliger ein ist ein ein ist Kommentar. ein zufaelliger ein ist Kommentar. ist Dies ist Kommentar. Kommentar.')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (39, N'7595851303', N'Kretschmer', N'Caspar', CAST(N'1989-12-29' AS Date), N'Deutschland', N'Vitzenburg', N'83084', N'Kopernikusstraße', N'15', N'(819) 934-1656', N'07913808468', N'')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (40, N'0047448556', N'Kant', N'Balte ', CAST(N'2006-05-09' AS Date), N'Deutschland', N'Bad Köstritz', N'65972', N'Lamontstraße', N'1', N'(731) 266-3542', N'07624219100', N'')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (41, N'5359602345', N'Wagner', N'Ursela', CAST(N'1963-04-06' AS Date), N'Deutschland', N'Sehmatal-Neudorf', N'37597', N'Am Einlaß', N'1', NULL, N'07624868827', N'')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (42, N'4726570686', N'Menzel', N'Django', CAST(N'2001-03-15' AS Date), N'Deutschland', N'Karbach', N'32461', N'Schwarzmannstraße', N'7', N'(635) 873-9552', N'07868855741', N'')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (43, N'4495481401', N'Greuel', N'Florestan', CAST(N'1938-12-03' AS Date), N'Deutschland', N'Vlotho', N'95513', N'Schlosserstraße', N'1a', N'(755) 532-1153', N'07504783458', N'')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (44, N'1997391477', N'Kromberg', N'Rabanus', CAST(N'2001-05-20' AS Date), N'Deutschland', N'Hallungen', N'83498', N'Humboldtstraße', N'90a', N'(731) 239-7395', N'07502165911', N'ist Dies Dies Dies Dies Dies Dies ein ein ist ein ein Dies Kommentar. Dies zufaelliger ein Kommentar. ist ist Kommentar. Kommentar. ist Dies zufaelliger ist ist ein Kommentar. Kommentar. ein Kommentar. Dies ist ist ist Kommentar. ist ist Dies Dies zufaelliger ein zufaelliger ein zufaelliger Kommentar. Kommentar. Kommentar. ist Dies ist ist ist zufaelliger zufaelliger zufaelliger Dies ein ist ein zufaelliger ist ein Dies ist zufaelliger Kommentar. Dies Kommentar. Kommentar. zufaelliger ein Dies zufaelliger zufaelliger ist ein ist Dies Kommentar. zufaelliger ist ein ein Kommentar. ein Dies Kommentar. Dies zufaelliger zufaelliger ist Kommentar. Kommentar. Dies Dies Kommentar. zufaelliger Dies Kommentar. ist Kommentar. Kommentar. ein Kommentar. Kommentar. ein ist ist zufaelliger Dies Kommentar. Dies Dies ein ist zufaelliger zufaelliger Kommentar. ist ein zufaelliger zufaelliger ist ein ein ist zufaelliger Kommentar. ein zufaelliger ein ein ist ein ist ein zufaelliger Dies zufaelliger zufaelliger ist ist Kommentar. zufaelliger Kommentar. Kommentar. ist ist Dies ist Dies Kommentar. Dies ist zufaelliger ein Dies ist Kommentar. zufaelliger zufaelliger Dies zufaelliger ein zufaelliger ein Kommentar. Kommentar. zufaelliger zufaelliger Dies ein zufaelliger Dies ist ist ein Dies ein Dies Dies Dies zufaelliger ein ist Dies ist ein Kommentar. ein Dies ist ein Kommentar. zufaelliger Dies zufaelliger Kommentar. Kommentar. Dies Dies ein ist zufaelliger Kommentar. ist Dies Dies Dies ist Dies ist ist Dies Kommentar. Dies ein Kommentar. ist zufaelliger ist Kommentar. ist zufaelliger Kommentar. ist zufaelliger ist ein Kommentar. Dies ein ist Dies Kommentar. ein ist zufaelliger Kommentar. Kommentar. ist zufaelliger Dies ein Kommentar. Kommentar. ist ist ein zufaelliger ein ist ein ist ein zufaelliger Kommentar. zufaelliger ist Kommentar. ist Dies ist Dies ist Dies Kommentar. ist Dies Dies Dies ein ein ist Dies Kommentar. Dies Dies ist Kommentar. Dies ist ein Kommentar. ist ist Kommentar. zufaelliger ein zufaelliger Kommentar. Dies ein ist Dies ein ein ist zufaelliger zufaelliger zufaelliger zufaelliger Dies zufaelliger Dies Dies Dies ein ist Kommentar. Dies Kommentar. ist ist Dies zufaelliger zufaelliger zufaelliger zufaelliger zufaelliger zufaelliger ist zufaelliger Dies ist Kommentar. ein Kommentar. ein Dies Dies Dies ist ist zufaelliger ist Dies ist zufaelliger Dies Kommentar. Dies Dies zufaelliger Kommentar. zufaelliger zufaelliger ist ein ist Dies Kommentar. zufaelliger zufaelliger ist ein ein zufaelliger ein ist ist Dies zufaelliger Kommentar. Dies Dies ein zufaelliger zufaelliger Dies ein ein ist Kommentar. Kommentar. Dies ein ein ein ist Dies ein Kommentar. ein Dies Kommentar. Dies Kommentar. Dies ein ein Dies Kommentar. ein zufaelliger ist ein Dies ist ein Dies ist zufaelliger Kommentar. zufaelliger zufaelliger ein ist Dies Kommentar. ist Dies Dies Dies zufaelliger zufaelliger ist ist zufaelliger ein zufaelliger zufaelliger ein zufaelliger Kommentar. ein Dies ist zufaelliger Dies Kommentar. ein Dies Kommentar. ein ein zufaelliger Kommentar. ist Kommentar. Dies ist zufaelliger zufaelliger zufaelliger ein Dies ist Dies Dies Dies Kommentar. ein Dies Kommentar. Dies ein ein ein ein ein ist Dies ist ist ein zufaelliger ist Dies Kommentar. Kommentar. ist ein Kommentar.')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (45, N'4042746707', N'Plehwe', N'Cordt', CAST(N'1999-07-19' AS Date), N'Deutschland', N'Flacht', N'45325', N'Jungfernturmstraße', N'1', N'(852) 568-2880', N'07721596104', N'ein ein Kommentar. Dies ist Kommentar. Kommentar. ein Kommentar. Dies ein Kommentar. zufaelliger Dies Dies zufaelliger Kommentar. Kommentar. ist ist Dies ein ist ist Kommentar. Kommentar. ist zufaelliger zufaelliger Dies zufaelliger ist Dies Dies zufaelliger ist ein zufaelliger zufaelliger ist ein Kommentar. Kommentar. Dies ist Dies Kommentar. ein Dies ist Dies ist ist ein ist zufaelliger Dies zufaelliger Dies ist Kommentar. Kommentar. ein ist ist zufaelliger Dies ist Dies ein zufaelliger ist Dies zufaelliger ein Kommentar. Dies zufaelliger Kommentar. ist ein ist zufaelliger ein zufaelliger ein zufaelliger Kommentar. ein Dies Dies Dies ein zufaelliger Kommentar. ist Dies zufaelliger zufaelliger ist zufaelliger Dies zufaelliger zufaelliger ein ein zufaelliger Kommentar. zufaelliger zufaelliger Dies zufaelliger zufaelliger ist ist zufaelliger zufaelliger ein ein ein zufaelliger Dies Dies ein Dies ist ist Dies ein ein Kommentar. Dies ist zufaelliger Dies ein ein ein ist ist ist ein ein Dies ist Kommentar. zufaelliger ein Dies ein ein Dies Kommentar. Kommentar. ist ist zufaelliger ist Dies ein ist zufaelliger zufaelliger zufaelliger Kommentar. Dies ist ein ist ein ein zufaelliger Kommentar. Dies Kommentar. Kommentar. ein ein Kommentar. ist Dies ein zufaelliger ein zufaelliger Kommentar. Kommentar. ein Kommentar. zufaelliger ein ist ist ein Kommentar. Kommentar. ist ist Kommentar. zufaelliger ist zufaelliger ist ein Dies ist zufaelliger Kommentar. Dies zufaelliger Dies ist zufaelliger ist ist ist ein ist ist ein Dies ist ein ist ist Kommentar. Dies zufaelliger ein ein zufaelliger Kommentar. Kommentar. zufaelliger zufaelliger Dies ist Kommentar. ist Kommentar. Dies zufaelliger Dies ist ein Kommentar. Dies zufaelliger ist Dies ist ein zufaelliger ein zufaelliger zufaelliger Dies Kommentar. ein ist zufaelliger Dies zufaelliger Dies zufaelliger ist ein zufaelliger ein ist ist zufaelliger Kommentar. Kommentar. ist Kommentar. zufaelliger Kommentar. Dies zufaelliger zufaelliger ist Dies ein ist Dies ein Dies ist ein Kommentar. ein Kommentar. zufaelliger Kommentar. zufaelliger ein zufaelliger Dies Dies ist Kommentar. zufaelliger zufaelliger')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (46, N'0861287664', N'Hornschuh', N'Adlin ', CAST(N'1943-08-27' AS Date), N'Deutschland', N'Oetjendorf', N'31389', N'Theo-Prosel-Weg', N'2f', N'(498) 731-6340', N'07515462662', N'ein ist Dies Kommentar. zufaelliger Dies Dies Kommentar. ein ist ein Dies Dies ist ist Dies zufaelliger zufaelliger zufaelliger Dies ist Dies ist ist Kommentar. Dies ein ist Dies Dies Dies Kommentar. Kommentar. zufaelliger ein Kommentar. zufaelliger Kommentar. ein ein Dies ist ein Dies ist zufaelliger ein ist ist ein ein zufaelliger Dies Dies Dies ein zufaelliger ein zufaelliger Kommentar. Kommentar. zufaelliger ein Dies ist ein Dies Dies ein Kommentar. Kommentar. Dies Dies ist ein zufaelliger Dies Dies ein zufaelliger ein Kommentar. Dies ist ist Dies Kommentar. Dies Kommentar. Kommentar. zufaelliger zufaelliger Dies ist ein Kommentar. Kommentar. ein Dies Kommentar. Dies Dies ein Dies Dies Kommentar. ein zufaelliger zufaelliger ist Kommentar. ein ist zufaelliger Kommentar. zufaelliger Dies ist zufaelliger ist zufaelliger Kommentar. Dies ist zufaelliger ist Dies ist zufaelliger Dies zufaelliger Kommentar. Dies zufaelliger Dies ein ein Kommentar. zufaelliger ein Dies zufaelliger ein ist Kommentar. ein ein zufaelliger zufaelliger ein ein Kommentar. Dies Kommentar. ist zufaelliger Dies zufaelliger Kommentar. ein zufaelliger Dies zufaelliger ein Kommentar. ein Kommentar. Dies Dies ein ist Kommentar. Dies Dies Kommentar. Kommentar. ist Dies ist Dies ist zufaelliger zufaelliger zufaelliger zufaelliger ein Kommentar. ist Kommentar. zufaelliger zufaelliger Dies Kommentar. Dies Kommentar. Kommentar. zufaelliger Dies zufaelliger Dies zufaelliger ist ein ist Kommentar. zufaelliger zufaelliger Kommentar. ein zufaelliger Dies ein ein zufaelliger Kommentar. ist Kommentar. zufaelliger Kommentar. Dies ist ein Dies Kommentar. ist Dies ist ist ein zufaelliger zufaelliger ein zufaelliger ein ist Dies ein ist zufaelliger Kommentar. Kommentar. Kommentar. zufaelliger Dies Kommentar. Dies ist ist Dies zufaelliger Kommentar. zufaelliger Kommentar. zufaelliger ist ein ein Kommentar. ein ein ist Dies ist ist Dies Dies zufaelliger Dies ist Dies Kommentar. Kommentar. Dies Kommentar. ein ein ist zufaelliger zufaelliger ein ein ist zufaelliger Dies ist Dies Kommentar. Kommentar. Kommentar. ist ist Dies ist ein ist zufaelliger zufaelliger Kommentar. Dies Kommentar. ein Dies Dies ist ist Dies Kommentar. ein ein Dies Kommentar. Dies zufaelliger Kommentar. Dies ein ein zufaelliger Kommentar. zufaelliger ein ist zufaelliger ein ist ist Kommentar. Dies ist Dies ist ist ist zufaelliger ist zufaelliger ist Kommentar. ist Kommentar. Dies zufaelliger zufaelliger ist Dies ist zufaelliger zufaelliger ein ein zufaelliger ist Kommentar. Dies ist ein ein ist Dies Kommentar. Dies ein Kommentar. Dies ein zufaelliger ein Kommentar. ist zufaelliger Kommentar. zufaelliger zufaelliger ein Kommentar. Dies ist ist Kommentar. Dies zufaelliger ein Dies zufaelliger ein ein ist Kommentar. Kommentar. Kommentar. Dies Kommentar. ein zufaelliger Kommentar. Dies ist Kommentar. Dies Kommentar. ein ein ist zufaelliger ein ein ist ist ein zufaelliger ein zufaelliger Dies ist')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (47, N'7913808747', N'Kantor', N'Bennik', CAST(N'1939-03-08' AS Date), N'Deutschland', N'Halmannsöd', N'95415', N'Imhofstraße', N'2', N'(543) 645-8634', N'07624737556', N'Dies ein Dies Kommentar. Kommentar. ist ein ist ist ein Dies Dies zufaelliger zufaelliger ist Kommentar. Dies ein Dies ist ein ein ein Kommentar. ist zufaelliger Kommentar. ist ein Dies Kommentar. Kommentar. zufaelliger ist ist zufaelliger ein Kommentar. Kommentar. Kommentar. Dies zufaelliger Dies zufaelliger ist Kommentar. ist Dies zufaelliger zufaelliger Kommentar. ist zufaelliger Kommentar. Dies Kommentar. ein Dies Kommentar. Kommentar. Kommentar. zufaelliger ist Dies ein Kommentar. Kommentar. Dies Kommentar. ein ist zufaelliger ist Dies ein zufaelliger Kommentar. ist ist zufaelliger zufaelliger Kommentar. zufaelliger Kommentar. Dies ein ist ein zufaelliger Kommentar. Kommentar. Kommentar. ist Dies ein ist zufaelliger Kommentar. zufaelliger ist ein ist Dies zufaelliger Kommentar. Kommentar. Dies Kommentar. zufaelliger ein Kommentar. Kommentar. ist Kommentar. ein Kommentar. ein Kommentar. zufaelliger Dies Dies Dies ein ist zufaelliger ein ein Kommentar. Kommentar. Kommentar. ist zufaelliger Kommentar. zufaelliger Dies zufaelliger ein ist zufaelliger ein Dies Kommentar. Kommentar. Dies zufaelliger ein ein ein Dies ist ist ist zufaelliger Dies ein ein Kommentar. ein Dies Dies Kommentar. Dies ein ist Dies Kommentar. ist Kommentar. Dies Kommentar. ist Kommentar. Kommentar. ein zufaelliger ist Kommentar. ein ist Kommentar. zufaelliger Kommentar. Dies Kommentar. zufaelliger ist Kommentar. ist Kommentar. zufaelliger ist ein ein Dies Dies zufaelliger Dies ein Kommentar. zufaelliger Kommentar. Dies zufaelliger ein ein ein Dies zufaelliger ist ist ein ist ist Dies Dies Kommentar. Kommentar. ein ist zufaelliger ein ein ist Dies Kommentar. ist Kommentar. Kommentar. zufaelliger zufaelliger ein zufaelliger zufaelliger ein ist Kommentar. Kommentar. ist Kommentar. Kommentar. Kommentar. Dies ist ein Dies zufaelliger Kommentar. Dies Kommentar. ein Kommentar. ist ist Dies zufaelliger Dies ein ein Dies zufaelliger zufaelliger Dies Dies zufaelliger ein Kommentar. Dies zufaelliger Kommentar. ist zufaelliger ein Dies Kommentar. ist ein Dies zufaelliger Dies zufaelliger ein zufaelliger Kommentar. zufaelliger ein ein ein Dies ist zufaelliger zufaelliger ist ein ein ist Kommentar. ein Dies Kommentar. Dies Dies zufaelliger ist Dies Dies ist Kommentar. ein ein ist ist ist ist ein ein ein ist Dies ist zufaelliger zufaelliger ist zufaelliger ein zufaelliger ist Dies zufaelliger ist Dies zufaelliger Dies Dies ist ist zufaelliger Dies ist ist zufaelliger zufaelliger ist zufaelliger Dies ist ein ein zufaelliger Dies zufaelliger zufaelliger ein ein Kommentar. zufaelliger ein Kommentar. Dies Kommentar. Dies Kommentar. zufaelliger ein zufaelliger Dies ist ist ein ein ist Dies Kommentar. Dies Kommentar. ist zufaelliger ein Dies Kommentar. Dies ist')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (48, N'5154701817', N'Berger', N'Izusa', CAST(N'1952-03-22' AS Date), N'Deutschland', N'Cottendorf', N'79598', N'Heimeranplatz', N'5d', NULL, N'07624489691', N'ein Kommentar. zufaelliger ein Kommentar. ein zufaelliger Dies zufaelliger ein zufaelliger Kommentar. ist Dies zufaelliger ein Kommentar. Kommentar. zufaelliger zufaelliger Kommentar. zufaelliger Kommentar. ist zufaelliger ein ein ein Dies ein Kommentar. zufaelliger Kommentar. ist zufaelliger Dies ein Kommentar. zufaelliger ein zufaelliger Dies ist Kommentar. ein ist zufaelliger Kommentar. Dies ein Dies Dies ein Kommentar. Kommentar. zufaelliger Kommentar. ist Dies zufaelliger Dies ist Dies ein Kommentar. Kommentar. ist Kommentar. ein Kommentar. ist ist Dies Dies ein Dies zufaelliger zufaelliger Dies Dies ein Dies Kommentar. Dies ist zufaelliger zufaelliger ist Dies zufaelliger Dies Kommentar. zufaelliger Dies Kommentar. Kommentar. Dies ist Dies zufaelliger Kommentar. ein Kommentar. Kommentar. zufaelliger ist ist zufaelliger ist Dies zufaelliger zufaelliger Kommentar. zufaelliger ist zufaelliger zufaelliger ist ist zufaelliger Kommentar. zufaelliger Dies ist Dies Dies Kommentar. zufaelliger ein ist ein Dies zufaelliger ist Dies ein ist ist Kommentar. Kommentar. Kommentar. ist Kommentar. Dies Kommentar. ist Kommentar. Kommentar. ein zufaelliger Dies Dies ein ein ist Dies ein ist ein ein Dies ein Dies Kommentar. Kommentar. Kommentar. zufaelliger ist ein zufaelliger ein zufaelliger ein ist Kommentar. ein ist Kommentar. ein Dies ist ein ist Dies ein zufaelliger Kommentar. ein ein Dies ist ein Kommentar. Dies Kommentar. ein zufaelliger zufaelliger ist ein ist zufaelliger zufaelliger zufaelliger Dies ein zufaelliger Dies ist ist zufaelliger Kommentar. ein Dies ist ein Kommentar. Dies ein Dies ein Kommentar. ist Kommentar. Dies ist ein zufaelliger Dies Kommentar. ist zufaelliger zufaelliger ist ein ist zufaelliger ein Kommentar. zufaelliger zufaelliger Dies Kommentar. zufaelliger ein Dies ein ist Kommentar. Kommentar. ist zufaelliger Kommentar. ein ist Kommentar. Kommentar. Kommentar. ist ist Kommentar. ein ein ist Kommentar. zufaelliger ein zufaelliger ein zufaelliger ein ist Kommentar. ist Dies Kommentar. ein Kommentar. ein ist zufaelliger ein Kommentar. ist ist ist ein ist zufaelliger zufaelliger ist ein ist ist Dies Kommentar. ein ein Kommentar. ein ein Kommentar. ist zufaelliger Dies Kommentar. ein Kommentar. ist Dies ein ein ein Kommentar. Dies zufaelliger Kommentar. ein Kommentar. Dies ein Kommentar. Kommentar. ist zufaelliger ist Dies Kommentar. zufaelliger Kommentar. zufaelliger Kommentar. Kommentar. Kommentar. Kommentar. zufaelliger Kommentar. Dies ein ein zufaelliger ein ist ist Kommentar. zufaelliger Dies Kommentar. Dies Kommentar. ein Dies Kommentar. ist Dies zufaelliger ist ist Kommentar. zufaelliger Dies Dies zufaelliger Kommentar. ein zufaelliger Dies zufaelliger ist ein ist ein Dies zufaelliger zufaelliger Dies Dies ein ein ist ist ist ein zufaelliger Dies Dies Kommentar. ein Kommentar. ist zufaelliger zufaelliger Dies zufaelliger Dies zufaelliger zufaelliger Kommentar. Kommentar. ein Kommentar. zufaelliger zufaelliger zufaelliger Dies ist Kommentar. ein Kommentar. ist ein Kommentar. ist ein Dies Dies ist ein zufaelliger Kommentar. ein zufaelliger zufaelliger Kommentar. zufaelliger ein ist zufaelliger Dies zufaelliger zufaelliger Dies ist ist Kommentar. ein Kommentar. Dies ist ein ist Dies zufaelliger ein Dies Kommentar. Dies Dies Dies ist Kommentar. Dies ist zufaelliger ein ist ein ist ist zufaelliger zufaelliger')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (49, N'9351463461', N'Kronberg', N'Alwara', CAST(N'1965-08-16' AS Date), N'Deutschland', N'Sehmatal-Sehma', N'32001', N'Hochmeierstraße', N'17', N'(714) 286-7533', N'07624611635', N'ist Kommentar. ein zufaelliger ist ein zufaelliger zufaelliger zufaelliger Kommentar. ist ist zufaelliger Kommentar. Dies zufaelliger zufaelliger Kommentar. ist Dies ist zufaelliger ist ist ein Kommentar. ein ein zufaelliger zufaelliger ein ein Dies ein Kommentar. Dies Dies ein Kommentar. ein Dies Kommentar. ist ist ist ist ist ein ist zufaelliger ist ein Dies Kommentar. Kommentar. ein ist Dies ist ein ein ein Dies zufaelliger ein ist ist ist ein Dies Dies Kommentar. zufaelliger ist ein ein ist zufaelliger zufaelliger ist ein zufaelliger Kommentar. ein Kommentar. ein zufaelliger Kommentar. Kommentar. Kommentar. ein ein Kommentar. Dies ist Dies Dies ist Kommentar. Dies ist Kommentar. Kommentar. ein zufaelliger Kommentar. ist ist Kommentar. Kommentar. Dies zufaelliger Kommentar. ist ein zufaelliger zufaelliger ist ist ein Kommentar. ein Dies ist zufaelliger Kommentar. Dies Dies Dies zufaelliger ist zufaelliger ist Kommentar. Kommentar. zufaelliger ist ein ist Kommentar. ein Dies zufaelliger zufaelliger ein ist zufaelliger Dies Kommentar. zufaelliger ein Kommentar. Kommentar. Kommentar. Kommentar. zufaelliger ein Dies zufaelliger ein Kommentar. Kommentar. Dies Dies zufaelliger Kommentar. zufaelliger ein ist zufaelliger Dies Kommentar. ein Dies zufaelliger ein ist Dies ist zufaelliger zufaelliger Dies Dies Kommentar. zufaelliger Dies ein ein zufaelliger ist zufaelliger')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (50, N'5220463231', N'Mering', N'Sylviana', CAST(N'1948-07-18' AS Date), N'Deutschland', N'Ruhla', N'32883', N'Mathildenstraße', N'4', NULL, N'07473208443', N'ist Dies Dies Kommentar. ist Dies zufaelliger ein zufaelliger ein ist zufaelliger zufaelliger zufaelliger zufaelliger Kommentar. Dies ist zufaelliger ein Dies ein zufaelliger ist zufaelliger ist Dies ist ein ein zufaelliger Dies ein Dies zufaelliger ein ist ist ein zufaelliger Dies Dies Dies Kommentar. Dies Dies Dies zufaelliger ein zufaelliger Kommentar. zufaelliger Dies Dies zufaelliger ein Dies zufaelliger Dies Kommentar. ist Dies zufaelliger ein Dies Kommentar. ist ist ein ein ein zufaelliger ein ist Kommentar. ein Dies ist Dies zufaelliger Kommentar. Kommentar. Kommentar. Dies Kommentar. ein Dies ein zufaelliger Dies Kommentar. ist ist ein ist ein ist ein ein Dies Dies zufaelliger ein ein Kommentar. ein zufaelliger Dies zufaelliger Dies Dies zufaelliger ist ein zufaelliger Kommentar. Kommentar. Kommentar. ist zufaelliger ein ein Dies ist ein Dies Kommentar. zufaelliger zufaelliger Kommentar. Kommentar. zufaelliger ist ein zufaelliger ist zufaelliger zufaelliger zufaelliger ein ein ist zufaelliger Kommentar. ein zufaelliger Dies ein ist Dies ein zufaelliger Dies ein zufaelliger ein zufaelliger zufaelliger ein ist Dies ein Kommentar. ist ist Dies ein ein ein ist ein ist Dies ein Kommentar. ist Dies ein Kommentar. Kommentar. ein Dies ist Kommentar. Kommentar. zufaelliger ein ein Kommentar. Kommentar. ist Dies ist ein Kommentar. zufaelliger ist ist Kommentar. ein Kommentar. ein ein Dies ist ein ist ein Dies zufaelliger Kommentar. ist Dies ein ist ein ist ist zufaelliger Kommentar. ein zufaelliger Dies Dies Kommentar. Dies ein ein Dies ist ist zufaelliger Dies ein Dies Dies zufaelliger zufaelliger ist Dies Dies ein Kommentar. Dies zufaelliger ist ist zufaelliger ist ein Dies ein Dies ist Dies Dies Dies zufaelliger ein Kommentar. Kommentar. zufaelliger Dies zufaelliger Kommentar. Kommentar. ist Dies ein Kommentar. ist zufaelliger Kommentar. Dies ist ein Kommentar. Kommentar. ein zufaelliger Kommentar. Kommentar. Dies Kommentar. ist ist Dies Dies ist ist Kommentar. Kommentar. Dies zufaelliger ist ein Dies zufaelliger Kommentar. Kommentar. Dies ein ein Kommentar. ein Dies Dies zufaelliger Dies zufaelliger Dies Kommentar. Kommentar. ein Kommentar. ein ist zufaelliger Kommentar. Dies Kommentar. zufaelliger zufaelliger Dies ein ein ein Dies zufaelliger zufaelliger zufaelliger Kommentar. ist ein ist ist ist ein Kommentar. Kommentar. Dies ist ein ein ist Kommentar. ein Kommentar. Dies Dies ein zufaelliger Dies ein zufaelliger ein ein zufaelliger Kommentar. zufaelliger zufaelliger zufaelliger Dies Dies Dies Dies Dies ein Dies zufaelliger Kommentar. ein ist ein ein Kommentar. Dies zufaelliger Kommentar. Dies Dies ist zufaelliger ein ein ein ist ein ist ein ein Kommentar. Dies ein ein ein zufaelliger ein ist ist zufaelliger ist ein ein Dies Dies Kommentar. Kommentar. zufaelliger Dies zufaelliger zufaelliger Kommentar. zufaelliger Kommentar. zufaelliger Dies ein Dies ist ist ein ist ist Dies Kommentar. ist Kommentar. Dies Dies ist Kommentar. ein ein zufaelliger Kommentar. Kommentar. ist ein ist ist Kommentar. ist ein ein ist Dies Dies ist Kommentar. zufaelliger zufaelliger ist ist ist ist Kommentar. Dies')
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (51, N'1234567891', N'TestNachname', N'TestVorname', CAST(N'2000-08-30' AS Date), N'Deutschland', N'Berlin', N'12345', N'TestStrasse', N'1t', NULL, NULL, NULL)
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (52, N'1234567892', N'ATestNachname', N'ATestVorname', CAST(N'2000-08-30' AS Date), N'Deutschland', N'Berlin', N'12345', N'TestStrasse', N'1t', NULL, NULL, NULL)
INSERT [dbo].[Kunden] ([Kunden_ID], [Kundennummer], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Kommentar]) VALUES (53, N'1         ', N'CEO', N'Boss', CAST(N'2022-08-30' AS Date), N'Deutschland', N'Berlin', N'12345', N'Augsburgerstraße', N'28', N'030 306-9368', N'+49 (6542) 589408', N'MiniBankFiliale als Kunde')
SET IDENTITY_INSERT [dbo].[Kunden] OFF
GO
SET IDENTITY_INSERT [dbo].[MiniBankFiliale] ON 

INSERT [dbo].[MiniBankFiliale] ([Filial_ID], [FilialName], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [BLZ], [BIC], [Kommentar]) VALUES (1, N'MiniFilialeMitte', N'Berlin', N'12345', N'Augsburgerstraße', N'28', N'030 306-9368', N'+49 (6542) 589408', 10000002, N'BELADEBLALA', N'Dies ist ein zufaelliger Kommentar.')
INSERT [dbo].[MiniBankFiliale] ([Filial_ID], [FilialName], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [BLZ], [BIC], [Kommentar]) VALUES (2, N'MiniFilialeCharlottenburg', N'Berlin', N'12345', N'Maffeistraße', N'1', N'030 000-2515', N'+44 3720 92 0583', 10000001, N'YJDADEZENMW', N'Dies ist ein zufaelliger Kommentar.')
SET IDENTITY_INSERT [dbo].[MiniBankFiliale] OFF
GO
SET IDENTITY_INSERT [dbo].[Personal] ON 

INSERT [dbo].[Personal] ([Personal_ID], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Abteilung_ID], [Beruf_ID], [Position_ID], [Kommentar]) VALUES (1, N'Paul', N'Dewin', CAST(N'1964-04-27' AS Date), N'Deutschland', N'Bloischdorf', N'48572', N'Elisabethstraße', N'2', N'(715) 353-8338', N'+55 35 4225-8588', 10, 8, 9, NULL)
INSERT [dbo].[Personal] ([Personal_ID], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Abteilung_ID], [Beruf_ID], [Position_ID], [Kommentar]) VALUES (2, N'Bülow', N'Katrin', CAST(N'1995-10-15' AS Date), N'Deutschland', N'Mühlstedt', N'26549', N'Rheinbergerstraße', NULL, N'(119) 199-1144', N'+420 870 394 571', 3, 6, 5, N'')
INSERT [dbo].[Personal] ([Personal_ID], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Abteilung_ID], [Beruf_ID], [Position_ID], [Kommentar]) VALUES (3, N'Wentzel', N'Tyrfinn', CAST(N'1952-03-17' AS Date), N'Deutschland', N'Zwota', N'36068', N'Bernhard-Wicki-Straße', N'3', N'(460) 013-1075', N'+380 37 729-667-2', 3, 6, 4, N'ist Dies Dies ein ein ist Dies Kommentar. ein Dies Dies Kommentar. Kommentar. ein Kommentar. zufaelliger Kommentar. ist zufaelliger Dies ein Kommentar. ein Kommentar. ist zufaelliger ist Dies Dies Kommentar. zufaelliger ist zufaelliger zufaelliger zufaelliger Kommentar. Kommentar. zufaelliger ein Dies Kommentar. zufaelliger Dies ist zufaelliger Kommentar. Kommentar. ein Kommentar. Dies ein zufaelliger ist Dies ein ein zufaelliger zufaelliger ist zufaelliger Dies ist Kommentar. zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. ist Kommentar. ein ist zufaelliger ein Kommentar. Kommentar. ein ist ist ein ist Dies Dies Dies Dies ist Dies Kommentar. zufaelliger zufaelliger ist ist zufaelliger zufaelliger ist ist ist ein ein zufaelliger ein Kommentar. zufaelliger Dies Dies ist ein Kommentar. ist Kommentar. Dies Kommentar. ein Kommentar. Dies Dies ist ein ein ist Dies ein Kommentar. Kommentar. ist ein ein Dies ein Dies ist Dies Dies ein ist ein ist zufaelliger ist ein zufaelliger Kommentar. Dies Kommentar. ein ein Dies Dies ein ein Kommentar. zufaelliger Kommentar. Dies Dies Kommentar. ein ist Dies Dies zufaelliger Dies ist Dies Kommentar. Kommentar. ein ist zufaelliger ist Kommentar. Dies ist ist Dies Dies ein ist zufaelliger zufaelliger Dies ein Dies ist Kommentar. ein Kommentar. ist ein ist ist Kommentar. Kommentar. ist Kommentar. zufaelliger ist zufaelliger Dies Dies Kommentar. ein zufaelliger Kommentar. ein zufaelliger zufaelliger zufaelliger ein Dies ist Kommentar. ein Dies Kommentar. Kommentar. zufaelliger Kommentar. ein zufaelliger zufaelliger Dies Kommentar. ein ist Dies Kommentar. zufaelliger Dies Kommentar. ein ein zufaelliger ein ist Kommentar. zufaelliger Dies ein Dies ist ist ist ist Dies Kommentar. ist ist Dies ist Dies Dies Kommentar. ein Dies ist zufaelliger Kommentar. ein ist ein ein ein ein Dies ist ist ein Dies ein Kommentar. ein ein ein Dies zufaelliger ist zufaelliger Kommentar. Kommentar. ist Kommentar. ein Kommentar. ein zufaelliger ein Dies zufaelliger ist zufaelliger ist ein ein Kommentar. Dies Dies Kommentar. zufaelliger zufaelliger ein Dies ist ein zufaelliger ein Dies ein Kommentar. Kommentar. ist ist Dies zufaelliger Dies ist ist ein Kommentar. Dies ein ein Kommentar. zufaelliger Dies ist zufaelliger zufaelliger Kommentar. Kommentar. Kommentar. ist ein ist ein ist Dies zufaelliger Kommentar. ein Dies Dies Kommentar. ist ist Dies ein Dies Dies ein zufaelliger zufaelliger Kommentar. ein ist zufaelliger ein zufaelliger Dies ein zufaelliger ein ein ein Dies Dies Dies ein zufaelliger ein Kommentar. Dies ein Kommentar. ein ist zufaelliger Kommentar. Kommentar. zufaelliger ist ist zufaelliger Dies zufaelliger Dies ein Kommentar. ein zufaelliger zufaelliger Dies Kommentar. Dies ist zufaelliger')
INSERT [dbo].[Personal] ([Personal_ID], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Abteilung_ID], [Beruf_ID], [Position_ID], [Kommentar]) VALUES (4, N'Meiendorf', N'Luise', CAST(N'1998-10-27' AS Date), N'Deutschland', N'Ringe', N'08999', N'Ackerstraße', N'5', N'(609) 925-1607', N'+32 2 239 87 95', 1, 6, 5, N'Dies ein Kommentar. ist ein Kommentar. Kommentar. Dies zufaelliger zufaelliger ein ist Dies Kommentar. zufaelliger ist zufaelliger ein zufaelliger ist Dies ist ist zufaelliger zufaelliger Dies zufaelliger ein zufaelliger ein ist zufaelliger zufaelliger ein Dies ein Dies zufaelliger Dies ist ist ist zufaelliger ist Kommentar. ist Dies zufaelliger ist ist ein ist ein Kommentar. ist Dies ist zufaelliger Kommentar. ein zufaelliger ein ist Kommentar. ist ist ist ein Kommentar. Dies Dies Kommentar. ist ein zufaelliger zufaelliger zufaelliger zufaelliger ein Kommentar. ein Kommentar. ein Kommentar. Kommentar. ein zufaelliger zufaelliger ist zufaelliger ist Dies Kommentar. Kommentar. zufaelliger ist zufaelliger ein Dies zufaelliger Dies ein zufaelliger Dies Kommentar. Dies Dies zufaelliger zufaelliger zufaelliger zufaelliger Dies Kommentar. Kommentar. ist ein Dies Dies ist ein ein ist ist Dies Dies ein Kommentar. zufaelliger Kommentar. ist ist zufaelliger Kommentar. Dies ist zufaelliger Kommentar. zufaelliger Dies ein ist Dies Kommentar. ein zufaelliger ist ist Dies Kommentar. Kommentar. ist ist ist zufaelliger ist ist Kommentar. ein ein zufaelliger ein ein ein zufaelliger ein ist zufaelliger ein Kommentar. Dies ist Kommentar. ein zufaelliger ein Dies Dies ist ein zufaelliger Kommentar. Kommentar. Dies Dies Kommentar. Kommentar. Kommentar. ein Kommentar. Kommentar. ist ist ein Kommentar. zufaelliger Kommentar. ist Kommentar. zufaelliger zufaelliger Dies Kommentar. zufaelliger Dies Kommentar. ist Kommentar. Kommentar. Kommentar. ist zufaelliger Kommentar. zufaelliger Dies ist zufaelliger Kommentar. ein Kommentar. ein ist ist Kommentar. Kommentar. ist ein ein ein zufaelliger ist zufaelliger zufaelliger ist Kommentar. ist ist zufaelliger zufaelliger Kommentar. Kommentar. ein ein Kommentar. ein ist ist Kommentar. Dies ein ist zufaelliger Kommentar. ein Kommentar. Dies zufaelliger ein ein Kommentar. ein Kommentar. Kommentar. zufaelliger ein ist ist ein ist Kommentar. zufaelliger Kommentar. ein ist ein zufaelliger zufaelliger Dies ist ein ist ein ist Kommentar. ist ist ist ein ist ein ist ein Kommentar. zufaelliger Dies zufaelliger Kommentar. ist Dies ist Kommentar. Dies zufaelliger zufaelliger Kommentar. ist zufaelliger zufaelliger Dies zufaelliger Dies ein zufaelliger ist Dies ist Kommentar. ist Kommentar. Kommentar. ein zufaelliger zufaelliger zufaelliger Dies Kommentar. ein Dies ist ist zufaelliger ein ist ein ist ein Kommentar. Kommentar. ein ein Dies zufaelliger zufaelliger ist zufaelliger zufaelliger zufaelliger Dies Kommentar. Dies zufaelliger ist')
INSERT [dbo].[Personal] ([Personal_ID], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Abteilung_ID], [Beruf_ID], [Position_ID], [Kommentar]) VALUES (5, N'Paulig', N'Dawina', CAST(N'1991-08-26' AS Date), N'Deutschland', N'Edesheim', N'84302', N'Kraelerstraße', N'1e', N'(863) 903-8820', N'+52 03 4123 1420', 6, 10, 4, N'Kommentar. Kommentar. ein ein Kommentar. Dies ein ein zufaelliger zufaelliger zufaelliger ist Kommentar. Kommentar. Dies ein ist ein Dies Kommentar. Kommentar. Kommentar. ist zufaelliger zufaelliger ein Kommentar. ein ist zufaelliger Kommentar. ein zufaelliger ist ein Kommentar. Dies Kommentar. ist Kommentar. zufaelliger ein zufaelliger ein Dies ist Kommentar. Dies zufaelliger Dies Kommentar. ein ist zufaelliger Dies ein zufaelliger ein ist Dies ist ist ist ein Kommentar. ein ein Kommentar. ist Dies ist Dies zufaelliger Kommentar. Dies ein ein zufaelliger ein ist Kommentar. ein zufaelliger Dies Kommentar. ein Kommentar. ein Kommentar. Kommentar. ist zufaelliger ein ist ein zufaelliger zufaelliger Dies ist ein Dies ein ein ein zufaelliger Kommentar. Dies ein ein ein zufaelliger Kommentar. ist Kommentar. ist ein ist zufaelliger zufaelliger zufaelliger zufaelliger ist zufaelliger ist ist Kommentar. ein Kommentar. ein ein ein ist ist zufaelliger ist ist')
INSERT [dbo].[Personal] ([Personal_ID], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Abteilung_ID], [Beruf_ID], [Position_ID], [Kommentar]) VALUES (6, N'Semper', N'Mariona', CAST(N'1935-01-12' AS Date), N'Deutschland', N'Notzingen', N'05646', N'Guldeinstraße', N'2f', N'(784) 057-5235', N'+44 669 433 2954', 1, 5, 6, N'Dies ein ein ist Dies ist Kommentar. ein zufaelliger ist ist Kommentar. ist Dies Kommentar. ein zufaelliger Dies Kommentar. ein zufaelliger zufaelliger Kommentar. ist Dies ist ein zufaelliger Kommentar. ein ein ein ein ein zufaelliger zufaelliger ist ist ist Dies ein ist Kommentar. Kommentar. Kommentar. zufaelliger ist ein Kommentar. Kommentar. Kommentar. Dies Kommentar. ist ist Dies Dies ein Dies Dies ist ist ein ein zufaelliger zufaelliger ist Kommentar. ein Dies ein Dies Kommentar. ist Kommentar. Kommentar. Kommentar. Kommentar. Dies ist ein Kommentar. ist zufaelliger ist Kommentar. zufaelliger ein zufaelliger ein ist ein ein ein Dies zufaelliger Dies Dies ein Kommentar. Kommentar. ist ist zufaelliger ein zufaelliger zufaelliger')
INSERT [dbo].[Personal] ([Personal_ID], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Abteilung_ID], [Beruf_ID], [Position_ID], [Kommentar]) VALUES (7, N'Jäger', N'Gutta', CAST(N'1938-11-14' AS Date), N'Deutschland', N'Blomberg', NULL, N'Franziska-Bilek-Weg', N'1', N'(974) 514-3807', N'+380 24 661-268-0', 7, 6, 7, N'')
INSERT [dbo].[Personal] ([Personal_ID], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Abteilung_ID], [Beruf_ID], [Position_ID], [Kommentar]) VALUES (8, N'Zurbriggen', N'Bernanda', CAST(N'1996-02-22' AS Date), N'Deutschland', N'Kurort Oybin', N'87906', N'Münchner Freiheit', N'9', N'(582) 586-6585', N'+49 (2173) 697657', 10, 9, 6, N'')
INSERT [dbo].[Personal] ([Personal_ID], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Abteilung_ID], [Beruf_ID], [Position_ID], [Kommentar]) VALUES (9, N'Gutzeit', N'Viktorian', CAST(N'1959-11-21' AS Date), N'Deutschland', N'Töpchin', N'99028', N'Isarring', N'1', NULL, N'+32 6 926 59 30', 8, 1, 8, N'Dies ist Dies zufaelliger Kommentar. ein Dies ist Dies Dies zufaelliger ist ein ein ist zufaelliger ein zufaelliger Dies Dies ist ein ein ein zufaelliger ist Kommentar. Dies zufaelliger zufaelliger zufaelliger Kommentar. ist ist zufaelliger zufaelliger Kommentar. Dies ein Kommentar. ist Kommentar. Kommentar. ein Kommentar. ist ein Dies Kommentar. ist Kommentar. Kommentar. ein ein Dies zufaelliger ist Kommentar. zufaelliger ist ein Dies ist Dies ist Kommentar. ist Kommentar. Dies Kommentar. Kommentar. zufaelliger ein zufaelliger ist Kommentar. ist zufaelliger Dies ist ein Dies Kommentar. ist ein Kommentar. ein ist zufaelliger zufaelliger ist zufaelliger Kommentar. ist ein ist zufaelliger Dies Kommentar. zufaelliger zufaelliger Dies ein zufaelliger Kommentar. ist ein ist zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. zufaelliger ist ist ein Kommentar. ist ist ist ist ein ein Kommentar. zufaelliger Kommentar. zufaelliger ein zufaelliger Dies zufaelliger Dies ein zufaelliger zufaelliger Kommentar. Kommentar. Dies ein zufaelliger zufaelliger Kommentar. ist Dies ein Kommentar. Dies zufaelliger ein ist ein Kommentar. Dies ist ein ein Dies Kommentar. ein zufaelliger Kommentar. Kommentar. ist Kommentar. Kommentar. ein ist Kommentar. ist Kommentar. Kommentar. Kommentar. ist Kommentar. Dies zufaelliger Dies Dies Dies Dies zufaelliger Dies zufaelliger ein ist ein Dies Kommentar. zufaelliger zufaelliger zufaelliger ist Kommentar. ist Kommentar. zufaelliger zufaelliger zufaelliger Kommentar. ist Dies Kommentar. Dies zufaelliger Kommentar. ein Dies ist Kommentar. ein ist Dies zufaelliger')
INSERT [dbo].[Personal] ([Personal_ID], [Nachname], [Vorname], [GeburtsDatum], [Land], [Ort], [PLZ], [Strasse], [Hausnummer], [Telefon], [Mobil], [Abteilung_ID], [Beruf_ID], [Position_ID], [Kommentar]) VALUES (10, N'Angst', N'Irenäus', CAST(N'1932-03-17' AS Date), N'Deutschland', N'Hüblingen', N'65978', NULL, N'11c', N'(808) 038-7023', NULL, 7, 2, 10, N'ein Dies ein Dies Dies zufaelliger ein ist Dies ein Kommentar. ist zufaelliger ein ein Kommentar. zufaelliger Kommentar. Kommentar. ein ist ein ein ist Dies ist Dies zufaelliger zufaelliger Kommentar. Dies Kommentar. ein ist Dies Dies Dies ein Kommentar. zufaelliger ein Kommentar. zufaelliger zufaelliger Dies Kommentar. Kommentar. ein ein Kommentar. Kommentar. ist ein Kommentar. ein Kommentar. Dies Kommentar. Kommentar. ist Dies Kommentar. zufaelliger Dies Dies ein ist Kommentar. Dies Dies ist Kommentar. ein Dies zufaelliger Dies zufaelliger Dies zufaelliger zufaelliger ein zufaelliger zufaelliger ist ist Kommentar. ein zufaelliger ein ein Kommentar. Kommentar. Dies Kommentar. Kommentar. ein zufaelliger Kommentar. ein ist Kommentar. zufaelliger Kommentar. ein Dies Dies Dies ein ein ein ein zufaelliger ist zufaelliger Dies ist ein ist ist Dies zufaelliger Dies zufaelliger ein Dies ist Dies zufaelliger ein Dies Dies Kommentar. Kommentar. Kommentar. zufaelliger ist ist Kommentar. Dies Kommentar. Kommentar. zufaelliger zufaelliger Kommentar. ist Kommentar. ein ist Kommentar. Dies Kommentar. ein ein ein ist zufaelliger ein Dies Dies zufaelliger zufaelliger ein Kommentar. ist Kommentar. ein Kommentar. zufaelliger zufaelliger Kommentar. ein zufaelliger ein Kommentar. ein ist zufaelliger zufaelliger ein ist ein Dies ein Kommentar. Kommentar. ist zufaelliger zufaelliger ein ist Dies ist ein Kommentar. ein ist ein ein Kommentar. ist ist ist Dies Kommentar. zufaelliger zufaelliger zufaelliger Dies zufaelliger ist Kommentar. ist ein ist Dies ist Kommentar. Kommentar. ein Dies Kommentar. zufaelliger ist Kommentar. ein ist Dies ist ein zufaelliger Dies ein ist ist Dies ein Kommentar. Kommentar. Kommentar. Kommentar. Kommentar. zufaelliger ist Dies zufaelliger ist zufaelliger zufaelliger zufaelliger ein ist ist ein Kommentar. Kommentar. ist Kommentar. ist ist Kommentar. ist ein ist ein ein Kommentar. Kommentar. ein Kommentar. Dies ein ist Dies ein ein ein Dies Kommentar. ist Kommentar. ein Dies Dies zufaelliger ist ist ein zufaelliger Kommentar. Dies ein ist Kommentar. ein Kommentar. zufaelliger ein ist ist ist ist ist ist ein ist zufaelliger ist Kommentar. ein Kommentar. Kommentar. Kommentar. ist ist Kommentar. zufaelliger ein Dies Kommentar. ein ist ein ist ist zufaelliger zufaelliger ein zufaelliger ist zufaelliger ist ist ein Dies Dies ist zufaelliger zufaelliger zufaelliger ein ein ein Kommentar. Kommentar. Kommentar. Dies Kommentar. ein Kommentar. Kommentar. ist Dies ist zufaelliger Dies zufaelliger zufaelliger Dies zufaelliger ein ist Dies Dies ist ist Dies ein Kommentar. Dies ein zufaelliger zufaelliger Dies Dies ein Dies Kommentar. Kommentar. Kommentar. Kommentar. zufaelliger Dies zufaelliger ein Kommentar. zufaelliger ist ist Kommentar. Kommentar. Kommentar. Kommentar. ist zufaelliger Kommentar. Dies Kommentar. ist ist Kommentar. ist ein ist Dies ist Dies zufaelliger Dies ist ein ein Kommentar. ein ein zufaelliger ein ein Dies zufaelliger ist zufaelliger Dies Dies ein Dies ist Kommentar. zufaelliger zufaelliger zufaelliger ein ein Kommentar. Kommentar. Dies Dies Kommentar. Dies ein zufaelliger ist zufaelliger ein ist Kommentar. Dies ist Dies Dies ein ist Dies')
SET IDENTITY_INSERT [dbo].[Personal] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([Position_ID], [Position], [Kommentar]) VALUES (1, N'Information Technology', NULL)
INSERT [dbo].[Position] ([Position_ID], [Position], [Kommentar]) VALUES (2, N'Marketing', N'')
INSERT [dbo].[Position] ([Position_ID], [Position], [Kommentar]) VALUES (3, N'Sales', N'ist Dies Dies ein ein ist Dies Kommentar. ein Dies Dies Kommentar. Kommentar. ein Kommentar. zufaelliger Kommentar. ist zufaelliger Dies ein Kommentar. ein Kommentar. ist zufaelliger ist Dies Dies Kommentar. zufaelliger ist zufaelliger zufaelliger zufaelliger Kommentar. Kommentar. zufaelliger ein Dies Kommentar. zufaelliger Dies ist zufaelliger Kommentar. Kommentar. ein Kommentar. Dies ein zufaelliger ist Dies ein ein zufaelliger zufaelliger ist zufaelliger Dies ist Kommentar. zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. ist Kommentar. ein ist zufaelliger ein Kommentar. Kommentar. ein ist ist ein ist Dies Dies Dies Dies ist Dies Kommentar. zufaelliger zufaelliger ist ist zufaelliger zufaelliger ist ist ist ein ein zufaelliger ein Kommentar. zufaelliger Dies Dies ist ein Kommentar. ist Kommentar. Dies Kommentar. ein Kommentar. Dies Dies ist ein ein ist Dies ein Kommentar. Kommentar. ist ein ein Dies ein Dies ist Dies Dies ein ist ein ist zufaelliger ist ein zufaelliger Kommentar. Dies Kommentar. ein ein Dies Dies ein ein Kommentar. zufaelliger Kommentar. Dies Dies Kommentar. ein ist Dies Dies zufaelliger Dies ist Dies Kommentar. Kommentar. ein ist zufaelliger ist Kommentar. Dies ist ist Dies Dies ein ist zufaelliger zufaelliger Dies ein Dies ist Kommentar. ein Kommentar. ist ein ist ist Kommentar. Kommentar. ist Kommentar. zufaelliger ist zufaelliger Dies Dies Kommentar. ein zufaelliger Kommentar. ein zufaelliger zufaelliger zufaelliger ein Dies ist Kommentar. ein Dies Kommentar. Kommentar. zufaelliger Kommentar. ein zufaelliger zufaelliger Dies Kommentar. ein ist Dies Kommentar. zufaelliger Dies Kommentar. ein ein zufaelliger ein ist Kommentar. zufaelliger Dies ein Dies ist ist ist ist Dies Kommentar. ist ist Dies ist Dies Dies Kommentar. ein Dies ist zufaelliger Kommentar. ein ist ein ein ein ein Dies ist ist ein Dies ein Kommentar. ein ein ein Dies zufaelliger ist zufaelliger Kommentar. Kommentar. ist Kommentar. ein Kommentar. ein zufaelliger ein Dies zufaelliger ist zufaelliger ist ein ein Kommentar. Dies Dies Kommentar. zufaelliger zufaelliger ein Dies ist ein zufaelliger ein Dies ein Kommentar. Kommentar. ist ist Dies zufaelliger Dies ist ist ein Kommentar. Dies ein ein Kommentar. zufaelliger Dies ist zufaelliger zufaelliger Kommentar. Kommentar. Kommentar. ist ein ist ein ist Dies zufaelliger Kommentar. ein Dies Dies Kommentar. ist ist Dies ein Dies Dies ein zufaelliger zufaelliger Kommentar. ein ist zufaelliger ein zufaelliger Dies ein zufaelliger ein ein ein Dies Dies Dies ein zufaelliger ein Kommentar. Dies ein Kommentar. ein ist zufaelliger Kommentar. Kommentar. zufaelliger ist ist zufaelliger Dies zufaelliger Dies ein Kommentar. ein zufaelliger zufaelliger Dies Kommentar. Dies ist zufaelliger')
INSERT [dbo].[Position] ([Position_ID], [Position], [Kommentar]) VALUES (4, N'Research and Development', N'Dies ein Kommentar. ist ein Kommentar. Kommentar. Dies zufaelliger zufaelliger ein ist Dies Kommentar. zufaelliger ist zufaelliger ein zufaelliger ist Dies ist ist zufaelliger zufaelliger Dies zufaelliger ein zufaelliger ein ist zufaelliger zufaelliger ein Dies ein Dies zufaelliger Dies ist ist ist zufaelliger ist Kommentar. ist Dies zufaelliger ist ist ein ist ein Kommentar. ist Dies ist zufaelliger Kommentar. ein zufaelliger ein ist Kommentar. ist ist ist ein Kommentar. Dies Dies Kommentar. ist ein zufaelliger zufaelliger zufaelliger zufaelliger ein Kommentar. ein Kommentar. ein Kommentar. Kommentar. ein zufaelliger zufaelliger ist zufaelliger ist Dies Kommentar. Kommentar. zufaelliger ist zufaelliger ein Dies zufaelliger Dies ein zufaelliger Dies Kommentar. Dies Dies zufaelliger zufaelliger zufaelliger zufaelliger Dies Kommentar. Kommentar. ist ein Dies Dies ist ein ein ist ist Dies Dies ein Kommentar. zufaelliger Kommentar. ist ist zufaelliger Kommentar. Dies ist zufaelliger Kommentar. zufaelliger Dies ein ist Dies Kommentar. ein zufaelliger ist ist Dies Kommentar. Kommentar. ist ist ist zufaelliger ist ist Kommentar. ein ein zufaelliger ein ein ein zufaelliger ein ist zufaelliger ein Kommentar. Dies ist Kommentar. ein zufaelliger ein Dies Dies ist ein zufaelliger Kommentar. Kommentar. Dies Dies Kommentar. Kommentar. Kommentar. ein Kommentar. Kommentar. ist ist ein Kommentar. zufaelliger Kommentar. ist Kommentar. zufaelliger zufaelliger Dies Kommentar. zufaelliger Dies Kommentar. ist Kommentar. Kommentar. Kommentar. ist zufaelliger Kommentar. zufaelliger Dies ist zufaelliger Kommentar. ein Kommentar. ein ist ist Kommentar. Kommentar. ist ein ein ein zufaelliger ist zufaelliger zufaelliger ist Kommentar. ist ist zufaelliger zufaelliger Kommentar. Kommentar. ein ein Kommentar. ein ist ist Kommentar. Dies ein ist zufaelliger Kommentar. ein Kommentar. Dies zufaelliger ein ein Kommentar. ein Kommentar. Kommentar. zufaelliger ein ist ist ein ist Kommentar. zufaelliger Kommentar. ein ist ein zufaelliger zufaelliger Dies ist ein ist ein ist Kommentar. ist ist ist ein ist ein ist ein Kommentar. zufaelliger Dies zufaelliger Kommentar. ist Dies ist Kommentar. Dies zufaelliger zufaelliger Kommentar. ist zufaelliger zufaelliger Dies zufaelliger Dies ein zufaelliger ist Dies ist Kommentar. ist Kommentar. Kommentar. ein zufaelliger zufaelliger zufaelliger Dies Kommentar. ein Dies ist ist zufaelliger ein ist ein ist ein Kommentar. Kommentar. ein ein Dies zufaelliger zufaelliger ist zufaelliger zufaelliger zufaelliger Dies Kommentar. Dies zufaelliger ist')
INSERT [dbo].[Position] ([Position_ID], [Position], [Kommentar]) VALUES (5, N'Finance', N'Kommentar. Kommentar. ein ein Kommentar. Dies ein ein zufaelliger zufaelliger zufaelliger ist Kommentar. Kommentar. Dies ein ist ein Dies Kommentar. Kommentar. Kommentar. ist zufaelliger zufaelliger ein Kommentar. ein ist zufaelliger Kommentar. ein zufaelliger ist ein Kommentar. Dies Kommentar. ist Kommentar. zufaelliger ein zufaelliger ein Dies ist Kommentar. Dies zufaelliger Dies Kommentar. ein ist zufaelliger Dies ein zufaelliger ein ist Dies ist ist ist ein Kommentar. ein ein Kommentar. ist Dies ist Dies zufaelliger Kommentar. Dies ein ein zufaelliger ein ist Kommentar. ein zufaelliger Dies Kommentar. ein Kommentar. ein Kommentar. Kommentar. ist zufaelliger ein ist ein zufaelliger zufaelliger Dies ist ein Dies ein ein ein zufaelliger Kommentar. Dies ein ein ein zufaelliger Kommentar. ist Kommentar. ist ein ist zufaelliger zufaelliger zufaelliger zufaelliger ist zufaelliger ist ist Kommentar. ein Kommentar. ein ein ein ist ist zufaelliger ist ist')
INSERT [dbo].[Position] ([Position_ID], [Position], [Kommentar]) VALUES (6, N'Executive', N'Dies ein ein ist Dies ist Kommentar. ein zufaelliger ist ist Kommentar. ist Dies Kommentar. ein zufaelliger Dies Kommentar. ein zufaelliger zufaelliger Kommentar. ist Dies ist ein zufaelliger Kommentar. ein ein ein ein ein zufaelliger zufaelliger ist ist ist Dies ein ist Kommentar. Kommentar. Kommentar. zufaelliger ist ein Kommentar. Kommentar. Kommentar. Dies Kommentar. ist ist Dies Dies ein Dies Dies ist ist ein ein zufaelliger zufaelliger ist Kommentar. ein Dies ein Dies Kommentar. ist Kommentar. Kommentar. Kommentar. Kommentar. Dies ist ein Kommentar. ist zufaelliger ist Kommentar. zufaelliger ein zufaelliger ein ist ein ein ein Dies zufaelliger Dies Dies ein Kommentar. Kommentar. ist ist zufaelliger ein zufaelliger zufaelliger')
INSERT [dbo].[Position] ([Position_ID], [Position], [Kommentar]) VALUES (7, N'Operations', N'')
INSERT [dbo].[Position] ([Position_ID], [Position], [Kommentar]) VALUES (8, N'Manufacturing', N'')
INSERT [dbo].[Position] ([Position_ID], [Position], [Kommentar]) VALUES (9, N'Customer Support', N'Dies ist Dies zufaelliger Kommentar. ein Dies ist Dies Dies zufaelliger ist ein ein ist zufaelliger ein zufaelliger Dies Dies ist ein ein ein zufaelliger ist Kommentar. Dies zufaelliger zufaelliger zufaelliger Kommentar. ist ist zufaelliger zufaelliger Kommentar. Dies ein Kommentar. ist Kommentar. Kommentar. ein Kommentar. ist ein Dies Kommentar. ist Kommentar. Kommentar. ein ein Dies zufaelliger ist Kommentar. zufaelliger ist ein Dies ist Dies ist Kommentar. ist Kommentar. Dies Kommentar. Kommentar. zufaelliger ein zufaelliger ist Kommentar. ist zufaelliger Dies ist ein Dies Kommentar. ist ein Kommentar. ein ist zufaelliger zufaelliger ist zufaelliger Kommentar. ist ein ist zufaelliger Dies Kommentar. zufaelliger zufaelliger Dies ein zufaelliger Kommentar. ist ein ist zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. zufaelliger ist ist ein Kommentar. ist ist ist ist ein ein Kommentar. zufaelliger Kommentar. zufaelliger ein zufaelliger Dies zufaelliger Dies ein zufaelliger zufaelliger Kommentar. Kommentar. Dies ein zufaelliger zufaelliger Kommentar. ist Dies ein Kommentar. Dies zufaelliger ein ist ein Kommentar. Dies ist ein ein Dies Kommentar. ein zufaelliger Kommentar. Kommentar. ist Kommentar. Kommentar. ein ist Kommentar. ist Kommentar. Kommentar. Kommentar. ist Kommentar. Dies zufaelliger Dies Dies Dies Dies zufaelliger Dies zufaelliger ein ist ein Dies Kommentar. zufaelliger zufaelliger zufaelliger ist Kommentar. ist Kommentar. zufaelliger zufaelliger zufaelliger Kommentar. ist Dies Kommentar. Dies zufaelliger Kommentar. ein Dies ist Kommentar. ein ist Dies zufaelliger')
INSERT [dbo].[Position] ([Position_ID], [Position], [Kommentar]) VALUES (10, N'Consulting', N'ein Dies ein Dies Dies zufaelliger ein ist Dies ein Kommentar. ist zufaelliger ein ein Kommentar. zufaelliger Kommentar. Kommentar. ein ist ein ein ist Dies ist Dies zufaelliger zufaelliger Kommentar. Dies Kommentar. ein ist Dies Dies Dies ein Kommentar. zufaelliger ein Kommentar. zufaelliger zufaelliger Dies Kommentar. Kommentar. ein ein Kommentar. Kommentar. ist ein Kommentar. ein Kommentar. Dies Kommentar. Kommentar. ist Dies Kommentar. zufaelliger Dies Dies ein ist Kommentar. Dies Dies ist Kommentar. ein Dies zufaelliger Dies zufaelliger Dies zufaelliger zufaelliger ein zufaelliger zufaelliger ist ist Kommentar. ein zufaelliger ein ein Kommentar. Kommentar. Dies Kommentar. Kommentar. ein zufaelliger Kommentar. ein ist Kommentar. zufaelliger Kommentar. ein Dies Dies Dies ein ein ein ein zufaelliger ist zufaelliger Dies ist ein ist ist Dies zufaelliger Dies zufaelliger ein Dies ist Dies zufaelliger ein Dies Dies Kommentar. Kommentar. Kommentar. zufaelliger ist ist Kommentar. Dies Kommentar. Kommentar. zufaelliger zufaelliger Kommentar. ist Kommentar. ein ist Kommentar. Dies Kommentar. ein ein ein ist zufaelliger ein Dies Dies zufaelliger zufaelliger ein Kommentar. ist Kommentar. ein Kommentar. zufaelliger zufaelliger Kommentar. ein zufaelliger ein Kommentar. ein ist zufaelliger zufaelliger ein ist ein Dies ein Kommentar. Kommentar. ist zufaelliger zufaelliger ein ist Dies ist ein Kommentar. ein ist ein ein Kommentar. ist ist ist Dies Kommentar. zufaelliger zufaelliger zufaelliger Dies zufaelliger ist Kommentar. ist ein ist Dies ist Kommentar. Kommentar. ein Dies Kommentar. zufaelliger ist Kommentar. ein ist Dies ist ein zufaelliger Dies ein ist ist Dies ein Kommentar. Kommentar. Kommentar. Kommentar. Kommentar. zufaelliger ist Dies zufaelliger ist zufaelliger zufaelliger zufaelliger ein ist ist ein Kommentar. Kommentar. ist Kommentar. ist ist Kommentar. ist ein ist ein ein Kommentar. Kommentar. ein Kommentar. Dies ein ist Dies ein ein ein Dies Kommentar. ist Kommentar. ein Dies Dies zufaelliger ist ist ein zufaelliger Kommentar. Dies ein ist Kommentar. ein Kommentar. zufaelliger ein ist ist ist ist ist ist ein ist zufaelliger ist Kommentar. ein Kommentar. Kommentar. Kommentar. ist ist Kommentar. zufaelliger ein Dies Kommentar. ein ist ein ist ist zufaelliger zufaelliger ein zufaelliger ist zufaelliger ist ist ein Dies Dies ist zufaelliger zufaelliger zufaelliger ein ein ein Kommentar. Kommentar. Kommentar. Dies Kommentar. ein Kommentar. Kommentar. ist Dies ist zufaelliger Dies zufaelliger zufaelliger Dies zufaelliger ein ist Dies Dies ist ist Dies ein Kommentar. Dies ein zufaelliger zufaelliger Dies Dies ein Dies Kommentar. Kommentar. Kommentar. Kommentar. zufaelliger Dies zufaelliger ein Kommentar. zufaelliger ist ist Kommentar. Kommentar. Kommentar. Kommentar. ist zufaelliger Kommentar. Dies Kommentar. ist ist Kommentar. ist ein ist Dies ist Dies zufaelliger Dies ist ein ein Kommentar. ein ein zufaelliger ein ein Dies zufaelliger ist zufaelliger Dies Dies ein Dies ist Kommentar. zufaelliger zufaelliger zufaelliger ein ein Kommentar. Kommentar. Dies Dies Kommentar. Dies ein zufaelliger ist zufaelliger ein ist Kommentar. Dies ist Dies Dies ein ist Dies')
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
SET IDENTITY_INSERT [dbo].[Ueberweisung] ON 

INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (1, CAST(N'2022-09-02T10:12:47.133' AS DateTime), CAST(-822.7352 AS Decimal(19, 4)), N'Kauf ABCXYZ Kauf R.-Nr. dir Snickers. dir ein Kauf ein ein Snickers. Kauf', 6, N'DE25604893770170612833', N'BELADEBLALA', CAST(-999999999999999.0000 AS Decimal(19, 4)), CAST(0.0000 AS Decimal(19, 4)), NULL)
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (2, CAST(N'2022-09-02T10:12:47.133' AS DateTime), CAST(-3.0740 AS Decimal(19, 4)), NULL, 9, N'DE49286249712889059028', N'YJDADEZENMW', CAST(-999999999999997.0000 AS Decimal(19, 4)), CAST(3.0000 AS Decimal(19, 4)), N'')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (3, CAST(N'2022-09-02T10:12:47.133' AS DateTime), CAST(651.8295 AS Decimal(19, 4)), N'', 5, N'DE17446171600020567203', N'YJDADEZENMW', CAST(-999999999999995.0000 AS Decimal(19, 4)), CAST(6.0000 AS Decimal(19, 4)), N'ist Dies Dies ein ein ist Dies Kommentar. ein Dies Dies Kommentar. Kommentar. ein Kommentar. zufaelliger Kommentar. ist zufaelliger Dies ein Kommentar. ein Kommentar. ist zufaelliger ist Dies Dies Kommentar. zufaelliger ist zufaelliger zufaelliger zufaelliger Kommentar. Kommentar. zufaelliger ein Dies Kommentar. zufaelliger Dies ist zufaelliger Kommentar. Kommentar. ein Kommentar. Dies ein zufaelliger ist Dies ein ein zufaelliger zufaelliger ist zufaelliger Dies ist Kommentar. zufaelliger Kommentar. Kommentar. zufaelliger Kommentar. ist Kommentar. ein ist zufaelliger ein Kommentar. Kommentar. ein ist ist ein ist Dies Dies Dies Dies ist Dies Kommentar. zufaelliger zufaelliger ist ist zufaelliger zufaelliger ist ist ist ein ein zufaelliger ein Kommentar. zufaelliger Dies Dies ist ein Kommentar. ist Kommentar. Dies Kommentar. ein Kommentar. Dies Dies ist ein ein ist Dies ein Kommentar. Kommentar. ist ein ein Dies ein Dies ist Dies Dies ein ist ein ist zufaelliger ist ein zufaelliger Kommentar. Dies Kommentar. ein ein Dies Dies ein ein Kommentar. zufaelliger Kommentar. Dies Dies Kommentar. ein ist Dies Dies zufaelliger Dies ist Dies Kommentar. Kommentar. ein ist zufaelliger ist Kommentar. Dies ist ist Dies Dies ein ist zufaelliger zufaelliger Dies ein Dies ist Kommentar. ein Kommentar. ist ein ist ist Kommentar. Kommentar. ist Kommentar. zufaelliger ist zufaelliger Dies Dies Kommentar. ein zufaelliger Kommentar. ein zufaelliger zufaelliger zufaelliger ein Dies ist Kommentar. ein Dies Kommentar. Kommentar. zufaelliger Kommentar. ein zufaelliger zufaelliger Dies Kommentar. ein ist Dies Kommentar. zufaelliger Dies Kommentar. ein ein zufaelliger ein ist Kommentar. zufaelliger Dies ein Dies ist ist ist ist Dies Kommentar. ist ist Dies ist Dies Dies Kommentar. ein Dies ist zufaelliger Kommentar. ein ist ein ein ein ein Dies ist ist ein Dies ein Kommentar. ein ein ein Dies zufaelliger ist zufaelliger Kommentar. Kommentar. ist Kommentar. ein Kommentar. ein zufaelliger ein Dies zufaelliger ist zufaelliger ist ein ein Kommentar. Dies Dies Kommentar. zufaelliger zufaelliger ein Dies ist ein zufaelliger ein Dies ein Kommentar. Kommentar. ist ist Dies zufaelliger Dies ist ist ein Kommentar. Dies ein ein Kommentar. zufaelliger Dies ist zufaelliger zufaelliger Kommentar. Kommentar. Kommentar. ist ein ist ein ist Dies zufaelliger Kommentar. ein Dies Dies Kommentar. ist ist Dies ein Dies Dies ein zufaelliger zufaelliger Kommentar. ein ist zufaelliger ein zufaelliger Dies ein zufaelliger ein ein ein Dies Dies Dies ein zufaelliger ein Kommentar. Dies ein Kommentar. ein ist zufaelliger Kommentar. Kommentar. zufaelliger ist ist zufaelliger Dies zufaelliger Dies ein Kommentar. ein zufaelliger zufaelliger Dies Kommentar. Dies ist zufaelliger')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (4, CAST(N'2022-09-02T10:12:47.133' AS DateTime), CAST(-201.3773 AS Decimal(19, 4)), N'', 9, N'DE21757524349408276217', N'YJDADEZENMW', CAST(-999999999999993.0000 AS Decimal(19, 4)), CAST(9.0000 AS Decimal(19, 4)), N'Dies ein Kommentar. ist ein Kommentar. Kommentar. Dies zufaelliger zufaelliger ein ist Dies Kommentar. zufaelliger ist zufaelliger ein zufaelliger ist Dies ist ist zufaelliger zufaelliger Dies zufaelliger ein zufaelliger ein ist zufaelliger zufaelliger ein Dies ein Dies zufaelliger Dies ist ist ist zufaelliger ist Kommentar. ist Dies zufaelliger ist ist ein ist ein Kommentar. ist Dies ist zufaelliger Kommentar. ein zufaelliger ein ist Kommentar. ist ist ist ein Kommentar. Dies Dies Kommentar. ist ein zufaelliger zufaelliger zufaelliger zufaelliger ein Kommentar. ein Kommentar. ein Kommentar. Kommentar. ein zufaelliger zufaelliger ist zufaelliger ist Dies Kommentar. Kommentar. zufaelliger ist zufaelliger ein Dies zufaelliger Dies ein zufaelliger Dies Kommentar. Dies Dies zufaelliger zufaelliger zufaelliger zufaelliger Dies Kommentar. Kommentar. ist ein Dies Dies ist ein ein ist ist Dies Dies ein Kommentar. zufaelliger Kommentar. ist ist zufaelliger Kommentar. Dies ist zufaelliger Kommentar. zufaelliger Dies ein ist Dies Kommentar. ein zufaelliger ist ist Dies Kommentar. Kommentar. ist ist ist zufaelliger ist ist Kommentar. ein ein zufaelliger ein ein ein zufaelliger ein ist zufaelliger ein Kommentar. Dies ist Kommentar. ein zufaelliger ein Dies Dies ist ein zufaelliger Kommentar. Kommentar. Dies Dies Kommentar. Kommentar. Kommentar. ein Kommentar. Kommentar. ist ist ein Kommentar. zufaelliger Kommentar. ist Kommentar. zufaelliger zufaelliger Dies Kommentar. zufaelliger Dies Kommentar. ist Kommentar. Kommentar. Kommentar. ist zufaelliger Kommentar. zufaelliger Dies ist zufaelliger Kommentar. ein Kommentar. ein ist ist Kommentar. Kommentar. ist ein ein ein zufaelliger ist zufaelliger zufaelliger ist Kommentar. ist ist zufaelliger zufaelliger Kommentar. Kommentar. ein ein Kommentar. ein ist ist Kommentar. Dies ein ist zufaelliger Kommentar. ein Kommentar. Dies zufaelliger ein ein Kommentar. ein Kommentar. Kommentar. zufaelliger ein ist ist ein ist Kommentar. zufaelliger Kommentar. ein ist ein zufaelliger zufaelliger Dies ist ein ist ein ist Kommentar. ist ist ist ein ist ein ist ein Kommentar. zufaelliger Dies zufaelliger Kommentar. ist Dies ist Kommentar. Dies zufaelliger zufaelliger Kommentar. ist zufaelliger zufaelliger Dies zufaelliger Dies ein zufaelliger ist Dies ist Kommentar. ist Kommentar. Kommentar. ein zufaelliger zufaelliger zufaelliger Dies Kommentar. ein Dies ist ist zufaelliger ein ist ein ist ein Kommentar. Kommentar. ein ein Dies zufaelliger zufaelliger ist zufaelliger zufaelliger zufaelliger Dies Kommentar. Dies zufaelliger ist')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (5, CAST(N'2022-09-02T10:12:47.133' AS DateTime), CAST(-141.3690 AS Decimal(19, 4)), N'ABCXYZ Snickers.', 9, N'DE17169112197990114341', N'FYIPURPZEWZ', CAST(-999999999999991.0000 AS Decimal(19, 4)), CAST(12.0000 AS Decimal(19, 4)), N'Kommentar. Kommentar. ein ein Kommentar. Dies ein ein zufaelliger zufaelliger zufaelliger ist Kommentar. Kommentar. Dies ein ist ein Dies Kommentar. Kommentar. Kommentar. ist zufaelliger zufaelliger ein Kommentar. ein ist zufaelliger Kommentar. ein zufaelliger ist ein Kommentar. Dies Kommentar. ist Kommentar. zufaelliger ein zufaelliger ein Dies ist Kommentar. Dies zufaelliger Dies Kommentar. ein ist zufaelliger Dies ein zufaelliger ein ist Dies ist ist ist ein Kommentar. ein ein Kommentar. ist Dies ist Dies zufaelliger Kommentar. Dies ein ein zufaelliger ein ist Kommentar. ein zufaelliger Dies Kommentar. ein Kommentar. ein Kommentar. Kommentar. ist zufaelliger ein ist ein zufaelliger zufaelliger Dies ist ein Dies ein ein ein zufaelliger Kommentar. Dies ein ein ein zufaelliger Kommentar. ist Kommentar. ist ein ist zufaelliger zufaelliger zufaelliger zufaelliger ist zufaelliger ist ist Kommentar. ein Kommentar. ein ein ein ist ist zufaelliger ist ist')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (6, CAST(N'2022-09-02T11:12:24.090' AS DateTime), CAST(-150.0000 AS Decimal(19, 4)), N'Kunde-A -> Fremde-Bank', 1, N'DE17169112197990114341', N'YJDADEZENMW', CAST(252.0569 AS Decimal(19, 4)), CAST(102.0569 AS Decimal(19, 4)), N'Test-1')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (7, CAST(N'2022-09-02T11:14:01.430' AS DateTime), CAST(170.0000 AS Decimal(19, 4)), N'Fremde-Bank -> Kunde-A', 1, N'DE17169112197990114341', N'YJDADEZENMW', CAST(102.0569 AS Decimal(19, 4)), CAST(272.0569 AS Decimal(19, 4)), N'Test-2')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (8, CAST(N'2022-09-02T11:14:14.043' AS DateTime), CAST(-250.0000 AS Decimal(19, 4)), N'Kunde-A -> Kunde-B', 2, N'DE89100600009999999999', N'YJDADEZENMW', CAST(281.1728 AS Decimal(19, 4)), CAST(31.1728 AS Decimal(19, 4)), N'Test-3')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (9, CAST(N'2022-09-02T11:14:14.043' AS DateTime), CAST(250.0000 AS Decimal(19, 4)), N'Kunde-A -> Kunde-B', 1, N'DE87100000026643554845', N'YJDADEZENMW', CAST(272.0569 AS Decimal(19, 4)), CAST(522.0569 AS Decimal(19, 4)), N'Test-3')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (10, CAST(N'2009-01-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 1, N'DE75100000021000000001', N'BELADEBLALA', CAST(522.0569 AS Decimal(19, 4)), CAST(518.5569 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (11, CAST(N'2009-01-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE15100000029999999999', N'BELADEBLALA', CAST(0.0000 AS Decimal(19, 4)), CAST(3.5000 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (12, CAST(N'2009-01-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 5, N'DE75100000021000000001', N'BELADEBLALA', CAST(78.5265 AS Decimal(19, 4)), CAST(75.0265 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (13, CAST(N'2009-01-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE38100000024976897168', N'BELADEBLALA', CAST(3.5000 AS Decimal(19, 4)), CAST(7.0000 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (14, CAST(N'2009-01-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 8, N'DE75100000021000000001', N'BELADEBLALA', CAST(32.7985 AS Decimal(19, 4)), CAST(29.2985 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (15, CAST(N'2009-01-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE11100000024976897169', N'BELADEBLALA', CAST(7.0000 AS Decimal(19, 4)), CAST(10.5000 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (16, CAST(N'2009-01-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 32, N'DE75100000021000000001', N'BELADEBLALA', CAST(4909.7132 AS Decimal(19, 4)), CAST(4906.2132 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (17, CAST(N'2009-01-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE84100000027543554849', N'BELADEBLALA', CAST(10.5000 AS Decimal(19, 4)), CAST(14.0000 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (18, CAST(N'2009-01-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 39, N'DE75100000021000000001', N'BELADEBLALA', CAST(55.6781 AS Decimal(19, 4)), CAST(52.1781 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (19, CAST(N'2009-01-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE37100000023656985400', N'BELADEBLALA', CAST(14.0000 AS Decimal(19, 4)), CAST(17.5000 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (20, CAST(N'2009-02-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 1, N'DE75100000021000000001', N'BELADEBLALA', CAST(518.5569 AS Decimal(19, 4)), CAST(515.0569 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (21, CAST(N'2009-02-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE15100000029999999999', N'BELADEBLALA', CAST(17.5000 AS Decimal(19, 4)), CAST(21.0000 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (22, CAST(N'2009-02-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 5, N'DE75100000021000000001', N'BELADEBLALA', CAST(75.0265 AS Decimal(19, 4)), CAST(71.5265 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (23, CAST(N'2009-02-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE38100000024976897168', N'BELADEBLALA', CAST(21.0000 AS Decimal(19, 4)), CAST(24.5000 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (24, CAST(N'2009-02-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 8, N'DE75100000021000000001', N'BELADEBLALA', CAST(29.2985 AS Decimal(19, 4)), CAST(25.7985 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (25, CAST(N'2009-02-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE11100000024976897169', N'BELADEBLALA', CAST(24.5000 AS Decimal(19, 4)), CAST(28.0000 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (26, CAST(N'2009-02-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 32, N'DE75100000021000000001', N'BELADEBLALA', CAST(4906.2132 AS Decimal(19, 4)), CAST(4902.7132 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (27, CAST(N'2009-02-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE84100000027543554849', N'BELADEBLALA', CAST(28.0000 AS Decimal(19, 4)), CAST(31.5000 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (28, CAST(N'2009-02-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 39, N'DE75100000021000000001', N'BELADEBLALA', CAST(52.1781 AS Decimal(19, 4)), CAST(48.6781 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (29, CAST(N'2009-02-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE37100000023656985400', N'BELADEBLALA', CAST(31.5000 AS Decimal(19, 4)), CAST(35.0000 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (30, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 1, N'DE75100000021000000001', N'BELADEBLALA', CAST(515.0569 AS Decimal(19, 4)), CAST(511.5569 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (31, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE15100000029999999999', N'BELADEBLALA', CAST(35.0000 AS Decimal(19, 4)), CAST(38.5000 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (32, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(-0.6235 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE87100000026643554845', N'BELADEBLALA', CAST(38.5000 AS Decimal(19, 4)), CAST(37.8765 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (33, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(0.6235 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 2, N'DE75100000021000000001', N'BELADEBLALA', CAST(31.1728 AS Decimal(19, 4)), CAST(31.7963 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (34, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 5, N'DE75100000021000000001', N'BELADEBLALA', CAST(71.5265 AS Decimal(19, 4)), CAST(68.0265 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (35, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE38100000024976897168', N'BELADEBLALA', CAST(37.8765 AS Decimal(19, 4)), CAST(41.3765 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (36, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(-0.0968 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE20100000029920597164', N'BELADEBLALA', CAST(41.3765 AS Decimal(19, 4)), CAST(41.2797 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (37, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(0.0968 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 6, N'DE75100000021000000001', N'BELADEBLALA', CAST(4.8401 AS Decimal(19, 4)), CAST(4.9369 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (38, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 8, N'DE75100000021000000001', N'BELADEBLALA', CAST(25.7985 AS Decimal(19, 4)), CAST(22.2985 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (39, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE11100000024976897169', N'BELADEBLALA', CAST(41.2797 AS Decimal(19, 4)), CAST(44.7797 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (40, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(-46.7967 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE88100000021446877021', N'BELADEBLALA', CAST(44.7797 AS Decimal(19, 4)), CAST(-2.0170 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (41, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(46.7967 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 9, N'DE75100000021000000001', N'BELADEBLALA', CAST(2339.8339 AS Decimal(19, 4)), CAST(2386.6306 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (42, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(-0.6412 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE60100000026643554846', N'BELADEBLALA', CAST(-2.0170 AS Decimal(19, 4)), CAST(-2.6582 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (43, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(0.6412 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 15, N'DE75100000021000000001', N'BELADEBLALA', CAST(32.0594 AS Decimal(19, 4)), CAST(32.7006 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (44, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(-53.0977 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE41100000027543554847', N'BELADEBLALA', CAST(-2.6582 AS Decimal(19, 4)), CAST(-55.7559 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (45, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(53.0977 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 18, N'DE75100000021000000001', N'BELADEBLALA', CAST(2654.8842 AS Decimal(19, 4)), CAST(2707.9819 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (46, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 32, N'DE75100000021000000001', N'BELADEBLALA', CAST(4902.7132 AS Decimal(19, 4)), CAST(4899.2132 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (47, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE84100000027543554849', N'BELADEBLALA', CAST(-55.7559 AS Decimal(19, 4)), CAST(-52.2559 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (48, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 39, N'DE75100000021000000001', N'BELADEBLALA', CAST(48.6781 AS Decimal(19, 4)), CAST(45.1781 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (49, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE37100000023656985400', N'BELADEBLALA', CAST(-52.2559 AS Decimal(19, 4)), CAST(-48.7559 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (50, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(-0.5786 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE44100000029020597170', N'BELADEBLALA', CAST(-48.7559 AS Decimal(19, 4)), CAST(-49.3345 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (51, CAST(N'2009-03-01T00:00:00.000' AS DateTime), CAST(0.5786 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 47, N'DE75100000021000000001', N'BELADEBLALA', CAST(-28.9321 AS Decimal(19, 4)), CAST(-28.3535 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (52, CAST(N'2009-04-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 1, N'DE75100000021000000001', N'BELADEBLALA', CAST(511.5569 AS Decimal(19, 4)), CAST(508.0569 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (53, CAST(N'2009-04-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE15100000029999999999', N'BELADEBLALA', CAST(-49.3345 AS Decimal(19, 4)), CAST(-45.8345 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (54, CAST(N'2009-04-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 5, N'DE75100000021000000001', N'BELADEBLALA', CAST(68.0265 AS Decimal(19, 4)), CAST(64.5265 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (55, CAST(N'2009-04-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE38100000024976897168', N'BELADEBLALA', CAST(-45.8345 AS Decimal(19, 4)), CAST(-42.3345 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (56, CAST(N'2009-04-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 8, N'DE75100000021000000001', N'BELADEBLALA', CAST(22.2985 AS Decimal(19, 4)), CAST(18.7985 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (57, CAST(N'2009-04-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE11100000024976897169', N'BELADEBLALA', CAST(-42.3345 AS Decimal(19, 4)), CAST(-38.8345 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (58, CAST(N'2009-04-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 32, N'DE75100000021000000001', N'BELADEBLALA', CAST(4899.2132 AS Decimal(19, 4)), CAST(4895.7132 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (59, CAST(N'2009-04-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE84100000027543554849', N'BELADEBLALA', CAST(-38.8345 AS Decimal(19, 4)), CAST(-35.3345 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (60, CAST(N'2009-04-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 39, N'DE75100000021000000001', N'BELADEBLALA', CAST(45.1781 AS Decimal(19, 4)), CAST(41.6781 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (61, CAST(N'2009-04-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE37100000023656985400', N'BELADEBLALA', CAST(-35.3345 AS Decimal(19, 4)), CAST(-31.8345 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (62, CAST(N'2009-05-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 1, N'DE75100000021000000001', N'BELADEBLALA', CAST(508.0569 AS Decimal(19, 4)), CAST(504.5569 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (63, CAST(N'2009-05-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE15100000029999999999', N'BELADEBLALA', CAST(-31.8345 AS Decimal(19, 4)), CAST(-28.3345 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (64, CAST(N'2009-05-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 5, N'DE75100000021000000001', N'BELADEBLALA', CAST(64.5265 AS Decimal(19, 4)), CAST(61.0265 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (65, CAST(N'2009-05-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE38100000024976897168', N'BELADEBLALA', CAST(-28.3345 AS Decimal(19, 4)), CAST(-24.8345 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (66, CAST(N'2009-05-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 8, N'DE75100000021000000001', N'BELADEBLALA', CAST(18.7985 AS Decimal(19, 4)), CAST(15.2985 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (67, CAST(N'2009-05-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE11100000024976897169', N'BELADEBLALA', CAST(-24.8345 AS Decimal(19, 4)), CAST(-21.3345 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (68, CAST(N'2009-05-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 32, N'DE75100000021000000001', N'BELADEBLALA', CAST(4895.7132 AS Decimal(19, 4)), CAST(4892.2132 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (69, CAST(N'2009-05-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE84100000027543554849', N'BELADEBLALA', CAST(-21.3345 AS Decimal(19, 4)), CAST(-17.8345 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (70, CAST(N'2009-05-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 39, N'DE75100000021000000001', N'BELADEBLALA', CAST(41.6781 AS Decimal(19, 4)), CAST(38.1781 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (71, CAST(N'2009-05-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE37100000023656985400', N'BELADEBLALA', CAST(-17.8345 AS Decimal(19, 4)), CAST(-14.3345 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (72, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 1, N'DE75100000021000000001', N'BELADEBLALA', CAST(504.5569 AS Decimal(19, 4)), CAST(501.0569 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (73, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE15100000029999999999', N'BELADEBLALA', CAST(-14.3345 AS Decimal(19, 4)), CAST(-10.8345 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (74, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-0.6359 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE87100000026643554845', N'BELADEBLALA', CAST(-10.8345 AS Decimal(19, 4)), CAST(-11.4704 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (75, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(0.6359 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 2, N'DE75100000021000000001', N'BELADEBLALA', CAST(31.7963 AS Decimal(19, 4)), CAST(32.4322 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (76, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-0.0033 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 3, N'DE75100000021000000001', N'BELADEBLALA', CAST(0.0496 AS Decimal(19, 4)), CAST(0.0463 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (77, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(0.0033 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE68100000027543554846', N'BELADEBLALA', CAST(-11.4704 AS Decimal(19, 4)), CAST(-11.4671 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (78, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 5, N'DE75100000021000000001', N'BELADEBLALA', CAST(61.0265 AS Decimal(19, 4)), CAST(57.5265 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (79, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE38100000024976897168', N'BELADEBLALA', CAST(-11.4671 AS Decimal(19, 4)), CAST(-7.9671 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (80, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-0.0987 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE20100000029920597164', N'BELADEBLALA', CAST(-7.9671 AS Decimal(19, 4)), CAST(-8.0658 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (81, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(0.0987 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 6, N'DE75100000021000000001', N'BELADEBLALA', CAST(4.9369 AS Decimal(19, 4)), CAST(5.0356 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (82, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 8, N'DE75100000021000000001', N'BELADEBLALA', CAST(15.2985 AS Decimal(19, 4)), CAST(11.7985 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (83, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE11100000024976897169', N'BELADEBLALA', CAST(-8.0658 AS Decimal(19, 4)), CAST(-4.5658 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (84, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-47.7326 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE88100000021446877021', N'BELADEBLALA', CAST(-4.5658 AS Decimal(19, 4)), CAST(-52.2984 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (85, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(47.7326 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 9, N'DE75100000021000000001', N'BELADEBLALA', CAST(2386.6306 AS Decimal(19, 4)), CAST(2434.3632 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (86, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-36.3443 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 10, N'DE75100000021000000001', N'BELADEBLALA', CAST(-649.0050 AS Decimal(19, 4)), CAST(-685.3493 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (87, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(36.3443 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE02100000024556985398', N'BELADEBLALA', CAST(-52.2984 AS Decimal(19, 4)), CAST(-15.9541 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (88, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-0.6540 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE60100000026643554846', N'BELADEBLALA', CAST(-15.9541 AS Decimal(19, 4)), CAST(-16.6081 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (89, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(0.6540 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 15, N'DE75100000021000000001', N'BELADEBLALA', CAST(32.7006 AS Decimal(19, 4)), CAST(33.3546 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (90, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-155.0817 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 16, N'DE75100000021000000001', N'BELADEBLALA', CAST(4430.9043 AS Decimal(19, 4)), CAST(4275.8226 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (91, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(155.0817 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE90100000029920597165', N'BELADEBLALA', CAST(-16.6081 AS Decimal(19, 4)), CAST(138.4736 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (92, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-54.1596 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE41100000027543554847', N'BELADEBLALA', CAST(138.4736 AS Decimal(19, 4)), CAST(84.3140 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (93, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(54.1596 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 18, N'DE75100000021000000001', N'BELADEBLALA', CAST(2707.9819 AS Decimal(19, 4)), CAST(2762.1415 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (94, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-82.2708 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 19, N'DE75100000021000000001', N'BELADEBLALA', CAST(1237.1553 AS Decimal(19, 4)), CAST(1154.8845 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (95, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(82.2708 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE69100000022346877022', N'BELADEBLALA', CAST(84.3140 AS Decimal(19, 4)), CAST(166.5848 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (96, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 32, N'DE75100000021000000001', N'BELADEBLALA', CAST(4892.2132 AS Decimal(19, 4)), CAST(4888.7132 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (97, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE84100000027543554849', N'BELADEBLALA', CAST(166.5848 AS Decimal(19, 4)), CAST(170.0848 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (98, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-57.7673 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 33, N'DE75100000021000000001', N'BELADEBLALA', CAST(1684.1782 AS Decimal(19, 4)), CAST(1626.4109 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (99, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(57.7673 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE08100000025876897173', N'BELADEBLALA', CAST(170.0848 AS Decimal(19, 4)), CAST(227.8521 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
GO
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (100, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 39, N'DE75100000021000000001', N'BELADEBLALA', CAST(38.1781 AS Decimal(19, 4)), CAST(34.6781 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (101, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE37100000023656985400', N'BELADEBLALA', CAST(227.8521 AS Decimal(19, 4)), CAST(231.3521 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (102, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-111.0386 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 40, N'DE75100000021000000001', N'BELADEBLALA', CAST(1982.8319 AS Decimal(19, 4)), CAST(1871.7933 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (103, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(111.0386 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE76100000026643554849', N'BELADEBLALA', CAST(231.3521 AS Decimal(19, 4)), CAST(342.3907 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (104, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-3.3489 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 41, N'DE75100000021000000001', N'BELADEBLALA', CAST(-49.3207 AS Decimal(19, 4)), CAST(-52.6696 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (105, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(3.3489 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE15100000022346877024', N'BELADEBLALA', CAST(342.3907 AS Decimal(19, 4)), CAST(345.7396 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (106, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-209.6447 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 44, N'DE75100000021000000001', N'BELADEBLALA', CAST(3743.6561 AS Decimal(19, 4)), CAST(3534.0114 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (107, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(209.6447 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE57100000027543554850', N'BELADEBLALA', CAST(345.7396 AS Decimal(19, 4)), CAST(555.3843 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (108, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-0.5671 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE44100000029020597170', N'BELADEBLALA', CAST(555.3843 AS Decimal(19, 4)), CAST(554.8172 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (109, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(0.5671 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 47, N'DE75100000021000000001', N'BELADEBLALA', CAST(-28.3535 AS Decimal(19, 4)), CAST(-27.7864 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (110, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(-154.3392 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 49, N'DE75100000021000000001', N'BELADEBLALA', CAST(2449.8288 AS Decimal(19, 4)), CAST(2295.4896 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (111, CAST(N'2009-06-01T00:00:00.000' AS DateTime), CAST(154.3392 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE78100000025876897174', N'BELADEBLALA', CAST(554.8172 AS Decimal(19, 4)), CAST(709.1564 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (112, CAST(N'2009-07-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 1, N'DE75100000021000000001', N'BELADEBLALA', CAST(501.0569 AS Decimal(19, 4)), CAST(497.5569 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (113, CAST(N'2009-07-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE15100000029999999999', N'BELADEBLALA', CAST(709.1564 AS Decimal(19, 4)), CAST(712.6564 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (114, CAST(N'2009-07-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 5, N'DE75100000021000000001', N'BELADEBLALA', CAST(57.5265 AS Decimal(19, 4)), CAST(54.0265 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (115, CAST(N'2009-07-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE38100000024976897168', N'BELADEBLALA', CAST(712.6564 AS Decimal(19, 4)), CAST(716.1564 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (116, CAST(N'2009-07-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 8, N'DE75100000021000000001', N'BELADEBLALA', CAST(11.7985 AS Decimal(19, 4)), CAST(8.2985 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (117, CAST(N'2009-07-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE11100000024976897169', N'BELADEBLALA', CAST(716.1564 AS Decimal(19, 4)), CAST(719.6564 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (118, CAST(N'2009-07-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 32, N'DE75100000021000000001', N'BELADEBLALA', CAST(4888.7132 AS Decimal(19, 4)), CAST(4885.2132 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (119, CAST(N'2009-07-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE84100000027543554849', N'BELADEBLALA', CAST(719.6564 AS Decimal(19, 4)), CAST(723.1564 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (120, CAST(N'2009-07-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 39, N'DE75100000021000000001', N'BELADEBLALA', CAST(34.6781 AS Decimal(19, 4)), CAST(31.1781 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (121, CAST(N'2009-07-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE37100000023656985400', N'BELADEBLALA', CAST(723.1564 AS Decimal(19, 4)), CAST(726.6564 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (122, CAST(N'2009-08-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 1, N'DE75100000021000000001', N'BELADEBLALA', CAST(497.5569 AS Decimal(19, 4)), CAST(494.0569 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (123, CAST(N'2009-08-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE15100000029999999999', N'BELADEBLALA', CAST(726.6564 AS Decimal(19, 4)), CAST(730.1564 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (124, CAST(N'2009-08-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 5, N'DE75100000021000000001', N'BELADEBLALA', CAST(54.0265 AS Decimal(19, 4)), CAST(50.5265 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (125, CAST(N'2009-08-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE38100000024976897168', N'BELADEBLALA', CAST(730.1564 AS Decimal(19, 4)), CAST(733.6564 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (126, CAST(N'2009-08-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 8, N'DE75100000021000000001', N'BELADEBLALA', CAST(8.2985 AS Decimal(19, 4)), CAST(4.7985 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (127, CAST(N'2009-08-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE11100000024976897169', N'BELADEBLALA', CAST(733.6564 AS Decimal(19, 4)), CAST(737.1564 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (128, CAST(N'2009-08-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 32, N'DE75100000021000000001', N'BELADEBLALA', CAST(4885.2132 AS Decimal(19, 4)), CAST(4881.7132 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (129, CAST(N'2009-08-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE84100000027543554849', N'BELADEBLALA', CAST(737.1564 AS Decimal(19, 4)), CAST(740.6564 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (130, CAST(N'2009-08-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 39, N'DE75100000021000000001', N'BELADEBLALA', CAST(31.1781 AS Decimal(19, 4)), CAST(27.6781 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (131, CAST(N'2009-08-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE37100000023656985400', N'BELADEBLALA', CAST(740.6564 AS Decimal(19, 4)), CAST(744.1564 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (132, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 1, N'DE75100000021000000001', N'BELADEBLALA', CAST(494.0569 AS Decimal(19, 4)), CAST(490.5569 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (133, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE15100000029999999999', N'BELADEBLALA', CAST(744.1564 AS Decimal(19, 4)), CAST(747.6564 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (134, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(-0.6486 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE87100000026643554845', N'BELADEBLALA', CAST(747.6564 AS Decimal(19, 4)), CAST(747.0078 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (135, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(0.6486 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 2, N'DE75100000021000000001', N'BELADEBLALA', CAST(32.4322 AS Decimal(19, 4)), CAST(33.0808 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (136, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 5, N'DE75100000021000000001', N'BELADEBLALA', CAST(50.5265 AS Decimal(19, 4)), CAST(47.0265 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (137, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE38100000024976897168', N'BELADEBLALA', CAST(747.0078 AS Decimal(19, 4)), CAST(750.5078 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (138, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(-0.1007 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE20100000029920597164', N'BELADEBLALA', CAST(750.5078 AS Decimal(19, 4)), CAST(750.4071 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (139, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(0.1007 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 6, N'DE75100000021000000001', N'BELADEBLALA', CAST(5.0356 AS Decimal(19, 4)), CAST(5.1363 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (140, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 8, N'DE75100000021000000001', N'BELADEBLALA', CAST(4.7985 AS Decimal(19, 4)), CAST(1.2985 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (141, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE11100000024976897169', N'BELADEBLALA', CAST(750.4071 AS Decimal(19, 4)), CAST(753.9071 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (142, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(-48.6873 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE88100000021446877021', N'BELADEBLALA', CAST(753.9071 AS Decimal(19, 4)), CAST(705.2198 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (143, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(48.6873 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 9, N'DE75100000021000000001', N'BELADEBLALA', CAST(2434.3632 AS Decimal(19, 4)), CAST(2483.0505 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (144, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(-0.6671 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE60100000026643554846', N'BELADEBLALA', CAST(705.2198 AS Decimal(19, 4)), CAST(704.5527 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (145, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(0.6671 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 15, N'DE75100000021000000001', N'BELADEBLALA', CAST(33.3546 AS Decimal(19, 4)), CAST(34.0217 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (146, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(-55.2428 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE41100000027543554847', N'BELADEBLALA', CAST(704.5527 AS Decimal(19, 4)), CAST(649.3099 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (147, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(55.2428 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 18, N'DE75100000021000000001', N'BELADEBLALA', CAST(2762.1415 AS Decimal(19, 4)), CAST(2817.3843 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (148, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 32, N'DE75100000021000000001', N'BELADEBLALA', CAST(4881.7132 AS Decimal(19, 4)), CAST(4878.2132 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (149, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE84100000027543554849', N'BELADEBLALA', CAST(649.3099 AS Decimal(19, 4)), CAST(652.8099 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (150, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 39, N'DE75100000021000000001', N'BELADEBLALA', CAST(27.6781 AS Decimal(19, 4)), CAST(24.1781 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (151, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE37100000023656985400', N'BELADEBLALA', CAST(652.8099 AS Decimal(19, 4)), CAST(656.3099 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (152, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(-0.5557 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE44100000029020597170', N'BELADEBLALA', CAST(656.3099 AS Decimal(19, 4)), CAST(655.7542 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (153, CAST(N'2009-09-01T00:00:00.000' AS DateTime), CAST(0.5557 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 47, N'DE75100000021000000001', N'BELADEBLALA', CAST(-27.7864 AS Decimal(19, 4)), CAST(-27.2307 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (154, CAST(N'2009-10-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 1, N'DE75100000021000000001', N'BELADEBLALA', CAST(490.5569 AS Decimal(19, 4)), CAST(487.0569 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (155, CAST(N'2009-10-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE15100000029999999999', N'BELADEBLALA', CAST(655.7542 AS Decimal(19, 4)), CAST(659.2542 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (156, CAST(N'2009-10-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 5, N'DE75100000021000000001', N'BELADEBLALA', CAST(47.0265 AS Decimal(19, 4)), CAST(43.5265 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (157, CAST(N'2009-10-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE38100000024976897168', N'BELADEBLALA', CAST(659.2542 AS Decimal(19, 4)), CAST(662.7542 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (158, CAST(N'2009-10-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 8, N'DE75100000021000000001', N'BELADEBLALA', CAST(1.2985 AS Decimal(19, 4)), CAST(-2.2015 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (159, CAST(N'2009-10-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE11100000024976897169', N'BELADEBLALA', CAST(662.7542 AS Decimal(19, 4)), CAST(666.2542 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (160, CAST(N'2009-10-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 32, N'DE75100000021000000001', N'BELADEBLALA', CAST(4878.2132 AS Decimal(19, 4)), CAST(4874.7132 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (161, CAST(N'2009-10-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE84100000027543554849', N'BELADEBLALA', CAST(666.2542 AS Decimal(19, 4)), CAST(669.7542 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (162, CAST(N'2009-10-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 39, N'DE75100000021000000001', N'BELADEBLALA', CAST(24.1781 AS Decimal(19, 4)), CAST(20.6781 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (163, CAST(N'2009-10-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE37100000023656985400', N'BELADEBLALA', CAST(669.7542 AS Decimal(19, 4)), CAST(673.2542 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (164, CAST(N'2009-11-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 1, N'DE75100000021000000001', N'BELADEBLALA', CAST(487.0569 AS Decimal(19, 4)), CAST(483.5569 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (165, CAST(N'2009-11-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE15100000029999999999', N'BELADEBLALA', CAST(673.2542 AS Decimal(19, 4)), CAST(676.7542 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (166, CAST(N'2009-11-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 5, N'DE75100000021000000001', N'BELADEBLALA', CAST(43.5265 AS Decimal(19, 4)), CAST(40.0265 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (167, CAST(N'2009-11-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE38100000024976897168', N'BELADEBLALA', CAST(676.7542 AS Decimal(19, 4)), CAST(680.2542 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (168, CAST(N'2009-11-01T00:00:00.000' AS DateTime), CAST(-3.6661 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 8, N'DE75100000021000000001', N'BELADEBLALA', CAST(-2.2015 AS Decimal(19, 4)), CAST(-5.8676 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (169, CAST(N'2009-11-01T00:00:00.000' AS DateTime), CAST(3.6661 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE11100000024976897169', N'BELADEBLALA', CAST(680.2542 AS Decimal(19, 4)), CAST(683.9203 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (170, CAST(N'2009-11-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 32, N'DE75100000021000000001', N'BELADEBLALA', CAST(4874.7132 AS Decimal(19, 4)), CAST(4871.2132 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (171, CAST(N'2009-11-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE84100000027543554849', N'BELADEBLALA', CAST(683.9203 AS Decimal(19, 4)), CAST(687.4203 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (172, CAST(N'2009-11-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 39, N'DE75100000021000000001', N'BELADEBLALA', CAST(20.6781 AS Decimal(19, 4)), CAST(17.1781 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (173, CAST(N'2009-11-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE37100000023656985400', N'BELADEBLALA', CAST(687.4203 AS Decimal(19, 4)), CAST(690.9203 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (174, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 1, N'DE75100000021000000001', N'BELADEBLALA', CAST(483.5569 AS Decimal(19, 4)), CAST(480.0569 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (175, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE15100000029999999999', N'BELADEBLALA', CAST(690.9203 AS Decimal(19, 4)), CAST(694.4203 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (176, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-0.6616 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE87100000026643554845', N'BELADEBLALA', CAST(694.4203 AS Decimal(19, 4)), CAST(693.7587 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (177, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(0.6616 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 2, N'DE75100000021000000001', N'BELADEBLALA', CAST(33.0808 AS Decimal(19, 4)), CAST(33.7424 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (178, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-0.0031 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 3, N'DE75100000021000000001', N'BELADEBLALA', CAST(0.0463 AS Decimal(19, 4)), CAST(0.0432 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (179, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(0.0031 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE68100000027543554846', N'BELADEBLALA', CAST(693.7587 AS Decimal(19, 4)), CAST(693.7618 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (180, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-4.7931 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE96100000022346877021', N'BELADEBLALA', CAST(693.7618 AS Decimal(19, 4)), CAST(688.9687 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (181, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(4.7931 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 4, N'DE75100000021000000001', N'BELADEBLALA', CAST(-159.7693 AS Decimal(19, 4)), CAST(-154.9762 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (182, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 5, N'DE75100000021000000001', N'BELADEBLALA', CAST(40.0265 AS Decimal(19, 4)), CAST(36.5265 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (183, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE38100000024976897168', N'BELADEBLALA', CAST(688.9687 AS Decimal(19, 4)), CAST(692.4687 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (184, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-0.1027 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE20100000029920597164', N'BELADEBLALA', CAST(692.4687 AS Decimal(19, 4)), CAST(692.3660 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (185, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(0.1027 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 6, N'DE75100000021000000001', N'BELADEBLALA', CAST(5.1363 AS Decimal(19, 4)), CAST(5.2390 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (186, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-3.9427 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 8, N'DE75100000021000000001', N'BELADEBLALA', CAST(-5.8676 AS Decimal(19, 4)), CAST(-9.8103 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (187, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(3.9427 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE11100000024976897169', N'BELADEBLALA', CAST(692.3660 AS Decimal(19, 4)), CAST(696.3087 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (188, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-49.6610 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE88100000021446877021', N'BELADEBLALA', CAST(696.3087 AS Decimal(19, 4)), CAST(646.6477 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (189, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(49.6610 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 9, N'DE75100000021000000001', N'BELADEBLALA', CAST(2483.0505 AS Decimal(19, 4)), CAST(2532.7115 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (190, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-38.3796 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 10, N'DE75100000021000000001', N'BELADEBLALA', CAST(-685.3493 AS Decimal(19, 4)), CAST(-723.7289 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (191, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(38.3796 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE02100000024556985398', N'BELADEBLALA', CAST(646.6477 AS Decimal(19, 4)), CAST(685.0273 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (192, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-72.0079 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE28100000029020597167', N'BELADEBLALA', CAST(685.0273 AS Decimal(19, 4)), CAST(613.0194 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (193, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(72.0079 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 11, N'DE75100000021000000001', N'BELADEBLALA', CAST(2400.2642 AS Decimal(19, 4)), CAST(2472.2721 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (194, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-4.7554 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE89100000025876897170', N'BELADEBLALA', CAST(613.0194 AS Decimal(19, 4)), CAST(608.2640 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (195, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(4.7554 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 12, N'DE75100000021000000001', N'BELADEBLALA', CAST(4755.3907 AS Decimal(19, 4)), CAST(4760.1461 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (196, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-0.5897 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE62100000025876897171', N'BELADEBLALA', CAST(608.2640 AS Decimal(19, 4)), CAST(607.6743 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (197, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(0.5897 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 14, N'DE75100000021000000001', N'BELADEBLALA', CAST(-589.6973 AS Decimal(19, 4)), CAST(-589.1076 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (198, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-0.6804 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE60100000026643554846', N'BELADEBLALA', CAST(607.6743 AS Decimal(19, 4)), CAST(606.9939 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (199, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(0.6804 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 15, N'DE75100000021000000001', N'BELADEBLALA', CAST(34.0217 AS Decimal(19, 4)), CAST(34.7021 AS Decimal(19, 4)), N'Zinsen-Test-4711')
GO
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (200, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-149.6538 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 16, N'DE75100000021000000001', N'BELADEBLALA', CAST(4275.8226 AS Decimal(19, 4)), CAST(4126.1688 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (201, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(149.6538 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE90100000029920597165', N'BELADEBLALA', CAST(606.9939 AS Decimal(19, 4)), CAST(756.6477 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (202, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-35.0750 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE54100000024976897171', N'BELADEBLALA', CAST(756.6477 AS Decimal(19, 4)), CAST(721.5727 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (203, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(35.0750 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 17, N'DE75100000021000000001', N'BELADEBLALA', CAST(1948.6089 AS Decimal(19, 4)), CAST(1983.6839 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (204, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-56.3477 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE41100000027543554847', N'BELADEBLALA', CAST(721.5727 AS Decimal(19, 4)), CAST(665.2250 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (205, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(56.3477 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 18, N'DE75100000021000000001', N'BELADEBLALA', CAST(2817.3843 AS Decimal(19, 4)), CAST(2873.7320 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (206, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-76.7998 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 19, N'DE75100000021000000001', N'BELADEBLALA', CAST(1154.8845 AS Decimal(19, 4)), CAST(1078.0847 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (207, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(76.7998 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE69100000022346877022', N'BELADEBLALA', CAST(665.2250 AS Decimal(19, 4)), CAST(742.0248 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (208, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-0.0322 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE91100000023656985398', N'BELADEBLALA', CAST(742.0248 AS Decimal(19, 4)), CAST(741.9926 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (209, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(0.0322 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 22, N'DE75100000021000000001', N'BELADEBLALA', CAST(1.7903 AS Decimal(19, 4)), CAST(1.8225 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (210, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-53.4669 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE61100000021446877022', N'BELADEBLALA', CAST(741.9926 AS Decimal(19, 4)), CAST(688.5257 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (211, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(53.4669 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 23, N'DE75100000021000000001', N'BELADEBLALA', CAST(2970.3814 AS Decimal(19, 4)), CAST(3023.8483 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (212, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-95.1745 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE42100000022346877023', N'BELADEBLALA', CAST(688.5257 AS Decimal(19, 4)), CAST(593.3512 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (213, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(95.1745 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 24, N'DE75100000021000000001', N'BELADEBLALA', CAST(3172.4831 AS Decimal(19, 4)), CAST(3267.6576 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (214, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-0.6971 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE27100000024976897172', N'BELADEBLALA', CAST(593.3512 AS Decimal(19, 4)), CAST(592.6541 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (215, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(0.6971 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 25, N'DE75100000021000000001', N'BELADEBLALA', CAST(697.1383 AS Decimal(19, 4)), CAST(697.8354 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (216, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-1.3843 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE14100000027543554848', N'BELADEBLALA', CAST(592.6541 AS Decimal(19, 4)), CAST(591.2698 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (217, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(1.3843 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 27, N'DE75100000021000000001', N'BELADEBLALA', CAST(1384.2706 AS Decimal(19, 4)), CAST(1385.6549 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (218, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-76.4012 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE63100000029920597166', N'BELADEBLALA', CAST(591.2698 AS Decimal(19, 4)), CAST(514.8686 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (219, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(76.4012 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 29, N'DE75100000021000000001', N'BELADEBLALA', CAST(4244.5101 AS Decimal(19, 4)), CAST(4320.9113 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (220, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-4.7019 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE72100000024556985399', N'BELADEBLALA', CAST(514.8686 AS Decimal(19, 4)), CAST(510.1667 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (221, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(4.7019 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 30, N'DE75100000021000000001', N'BELADEBLALA', CAST(4701.8647 AS Decimal(19, 4)), CAST(4706.5666 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (222, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-0.2839 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE06100000026643554848', N'BELADEBLALA', CAST(510.1667 AS Decimal(19, 4)), CAST(509.8828 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (223, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(0.2839 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 31, N'DE75100000021000000001', N'BELADEBLALA', CAST(-283.8560 AS Decimal(19, 4)), CAST(-283.5721 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (224, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 32, N'DE75100000021000000001', N'BELADEBLALA', CAST(4871.2132 AS Decimal(19, 4)), CAST(4867.7132 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (225, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE84100000027543554849', N'BELADEBLALA', CAST(509.8828 AS Decimal(19, 4)), CAST(513.3828 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (226, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-55.7859 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 33, N'DE75100000021000000001', N'BELADEBLALA', CAST(1626.4109 AS Decimal(19, 4)), CAST(1570.6250 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (227, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(55.7859 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE08100000025876897173', N'BELADEBLALA', CAST(513.3828 AS Decimal(19, 4)), CAST(569.1687 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (228, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-0.5101 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE64100000023656985399', N'BELADEBLALA', CAST(569.1687 AS Decimal(19, 4)), CAST(568.6586 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (229, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(0.5101 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 34, N'DE75100000021000000001', N'BELADEBLALA', CAST(510.0999 AS Decimal(19, 4)), CAST(510.6100 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (230, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-0.7731 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE71100000029020597169', N'BELADEBLALA', CAST(568.6586 AS Decimal(19, 4)), CAST(567.8855 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (231, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(0.7731 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 35, N'DE75100000021000000001', N'BELADEBLALA', CAST(773.1376 AS Decimal(19, 4)), CAST(773.9107 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (232, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-2.2760 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE45100000024556985400', N'BELADEBLALA', CAST(567.8855 AS Decimal(19, 4)), CAST(565.6095 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (233, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(2.2760 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 36, N'DE75100000021000000001', N'BELADEBLALA', CAST(2275.9551 AS Decimal(19, 4)), CAST(2278.2311 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (234, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-58.4327 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE36100000029920597167', N'BELADEBLALA', CAST(565.6095 AS Decimal(19, 4)), CAST(507.1768 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (235, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(58.4327 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 37, N'DE75100000021000000001', N'BELADEBLALA', CAST(3246.2633 AS Decimal(19, 4)), CAST(3304.6960 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (236, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-8.5806 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE97100000024976897173', N'BELADEBLALA', CAST(507.1768 AS Decimal(19, 4)), CAST(498.5962 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (237, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(8.5806 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 38, N'DE75100000021000000001', N'BELADEBLALA', CAST(-476.6978 AS Decimal(19, 4)), CAST(-468.1172 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (238, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 39, N'DE75100000021000000001', N'BELADEBLALA', CAST(17.1781 AS Decimal(19, 4)), CAST(13.6781 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (239, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE37100000023656985400', N'BELADEBLALA', CAST(498.5962 AS Decimal(19, 4)), CAST(502.0962 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (240, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-104.8204 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 40, N'DE75100000021000000001', N'BELADEBLALA', CAST(1871.7933 AS Decimal(19, 4)), CAST(1766.9729 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (241, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(104.8204 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE76100000026643554849', N'BELADEBLALA', CAST(502.0962 AS Decimal(19, 4)), CAST(606.9166 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (242, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-3.5763 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 41, N'DE75100000021000000001', N'BELADEBLALA', CAST(-52.6696 AS Decimal(19, 4)), CAST(-56.2459 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (243, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(3.5763 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE15100000022346877024', N'BELADEBLALA', CAST(606.9166 AS Decimal(19, 4)), CAST(610.4929 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (244, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-24.0269 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE07100000021446877024', N'BELADEBLALA', CAST(610.4929 AS Decimal(19, 4)), CAST(586.4660 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (245, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(24.0269 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 42, N'DE75100000021000000001', N'BELADEBLALA', CAST(1334.8262 AS Decimal(19, 4)), CAST(1358.8531 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (246, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-3.0797 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE85100000022346877025', N'BELADEBLALA', CAST(586.4660 AS Decimal(19, 4)), CAST(583.3863 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (247, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(3.0797 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 43, N'DE75100000021000000001', N'BELADEBLALA', CAST(3079.6508 AS Decimal(19, 4)), CAST(3082.7305 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (248, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-197.9046 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 44, N'DE75100000021000000001', N'BELADEBLALA', CAST(3534.0114 AS Decimal(19, 4)), CAST(3336.1068 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (249, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(197.9046 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE57100000027543554850', N'BELADEBLALA', CAST(583.3863 AS Decimal(19, 4)), CAST(781.2909 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (250, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-1.4288 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE49100000026643554850', N'BELADEBLALA', CAST(781.2909 AS Decimal(19, 4)), CAST(779.8621 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (251, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(1.4288 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 45, N'DE75100000021000000001', N'BELADEBLALA', CAST(1428.7719 AS Decimal(19, 4)), CAST(1430.2007 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (252, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-0.5446 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE44100000029020597170', N'BELADEBLALA', CAST(779.8621 AS Decimal(19, 4)), CAST(779.3175 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (253, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(0.5446 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 47, N'DE75100000021000000001', N'BELADEBLALA', CAST(-27.2307 AS Decimal(19, 4)), CAST(-26.6861 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (254, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-0.7333 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE10100000023656985401', N'BELADEBLALA', CAST(779.3175 AS Decimal(19, 4)), CAST(778.5842 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (255, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(0.7333 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 48, N'DE75100000021000000001', N'BELADEBLALA', CAST(733.2945 AS Decimal(19, 4)), CAST(734.0278 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (256, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-144.6158 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 49, N'DE75100000021000000001', N'BELADEBLALA', CAST(2295.4896 AS Decimal(19, 4)), CAST(2150.8738 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (257, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(144.6158 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE78100000025876897174', N'BELADEBLALA', CAST(778.5842 AS Decimal(19, 4)), CAST(923.2000 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (258, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(-0.1878 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 51, N'DE77100000021446877025', N'BELADEBLALA', CAST(923.2000 AS Decimal(19, 4)), CAST(923.0122 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (259, CAST(N'2009-12-01T00:00:00.000' AS DateTime), CAST(0.1878 AS Decimal(19, 4)), N'MiniBank -> Kunde-A', 50, N'DE75100000021000000001', N'BELADEBLALA', CAST(-6.2613 AS Decimal(19, 4)), CAST(-6.0735 AS Decimal(19, 4)), N'Zinsen-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (260, CAST(N'2010-01-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 1, N'DE75100000021000000001', N'BELADEBLALA', CAST(480.0569 AS Decimal(19, 4)), CAST(476.5569 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (261, CAST(N'2010-01-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE15100000029999999999', N'BELADEBLALA', CAST(923.0122 AS Decimal(19, 4)), CAST(926.5122 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (262, CAST(N'2010-01-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 5, N'DE75100000021000000001', N'BELADEBLALA', CAST(36.5265 AS Decimal(19, 4)), CAST(33.0265 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (263, CAST(N'2010-01-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE38100000024976897168', N'BELADEBLALA', CAST(926.5122 AS Decimal(19, 4)), CAST(930.0122 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (264, CAST(N'2010-01-01T00:00:00.000' AS DateTime), CAST(-4.2401 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 8, N'DE75100000021000000001', N'BELADEBLALA', CAST(-9.8103 AS Decimal(19, 4)), CAST(-14.0504 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (265, CAST(N'2010-01-01T00:00:00.000' AS DateTime), CAST(4.2401 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE11100000024976897169', N'BELADEBLALA', CAST(930.0122 AS Decimal(19, 4)), CAST(934.2523 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (266, CAST(N'2010-01-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 32, N'DE75100000021000000001', N'BELADEBLALA', CAST(4867.7132 AS Decimal(19, 4)), CAST(4864.2132 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (267, CAST(N'2010-01-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE84100000027543554849', N'BELADEBLALA', CAST(934.2523 AS Decimal(19, 4)), CAST(937.7523 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (268, CAST(N'2010-01-01T00:00:00.000' AS DateTime), CAST(-3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 39, N'DE75100000021000000001', N'BELADEBLALA', CAST(13.6781 AS Decimal(19, 4)), CAST(10.1781 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
INSERT [dbo].[Ueberweisung] ([Ueberweisung_ID], [DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar]) VALUES (269, CAST(N'2010-01-01T00:00:00.000' AS DateTime), CAST(3.5000 AS Decimal(19, 4)), N'Kunde-A -> MiniBank', 51, N'DE37100000023656985400', N'BELADEBLALA', CAST(937.7523 AS Decimal(19, 4)), CAST(941.2523 AS Decimal(19, 4)), N'Kontogebühren-Test-4711')
SET IDENTITY_INSERT [dbo].[Ueberweisung] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Abteilung]    Script Date: 02.09.2022 13:15:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Abteilung] ON [dbo].[Abteilung]
(
	[Abteilung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Beruf]    Script Date: 02.09.2022 13:15:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Beruf] ON [dbo].[Beruf]
(
	[Beruf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Bonitaet]    Script Date: 02.09.2022 13:15:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Bonitaet] ON [dbo].[Bonitaet]
(
	[Score] ASC,
	[Bezeichnung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Konto]    Script Date: 02.09.2022 13:15:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Konto] ON [dbo].[Konto]
(
	[Kontonummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_KontoArt]    Script Date: 02.09.2022 13:15:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_KontoArt] ON [dbo].[KontoArt]
(
	[Bezeichnung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_KontoBesitzer]    Script Date: 02.09.2022 13:15:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_KontoBesitzer] ON [dbo].[KontoBesitzer]
(
	[Kunden_ID] ASC,
	[Konto_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Kunden]    Script Date: 02.09.2022 13:15:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Kunden] ON [dbo].[Kunden]
(
	[Kundennummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MiniBankFiliale]    Script Date: 02.09.2022 13:15:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_MiniBankFiliale] ON [dbo].[MiniBankFiliale]
(
	[FilialName] ASC,
	[BLZ] ASC,
	[BIC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Position]    Script Date: 02.09.2022 13:15:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Position] ON [dbo].[Position]
(
	[Position] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Konto] ADD  DEFAULT (getdate()) FOR [EingerichtetAm]
GO
ALTER TABLE [dbo].[Konto] ADD  DEFAULT ((0)) FOR [Gesperrt]
GO
ALTER TABLE [dbo].[KontoArt] ADD  DEFAULT ((0)) FOR [Einheit]
GO
ALTER TABLE [dbo].[Kunden] ADD  DEFAULT ('Deutschland') FOR [Land]
GO
ALTER TABLE [dbo].[Kunden] ADD  DEFAULT ('Berlin') FOR [Ort]
GO
ALTER TABLE [dbo].[Personal] ADD  DEFAULT ('Deutschland') FOR [Land]
GO
ALTER TABLE [dbo].[Personal] ADD  DEFAULT ('Berlin') FOR [Ort]
GO
ALTER TABLE [dbo].[Ueberweisung] ADD  DEFAULT (getdate()) FOR [DatumUhrzeit]
GO
ALTER TABLE [dbo].[Abteilung]  WITH CHECK ADD  CONSTRAINT [FK_Abteilung_MiniBankFiliale] FOREIGN KEY([Filial_ID])
REFERENCES [dbo].[MiniBankFiliale] ([Filial_ID])
GO
ALTER TABLE [dbo].[Abteilung] CHECK CONSTRAINT [FK_Abteilung_MiniBankFiliale]
GO
ALTER TABLE [dbo].[Konto]  WITH CHECK ADD  CONSTRAINT [FK_Konto_Bonitaet] FOREIGN KEY([Bonitaet_ID])
REFERENCES [dbo].[Bonitaet] ([Bonitaet_ID])
GO
ALTER TABLE [dbo].[Konto] CHECK CONSTRAINT [FK_Konto_Bonitaet]
GO
ALTER TABLE [dbo].[Konto]  WITH CHECK ADD  CONSTRAINT [FK_Konto_KontoArt] FOREIGN KEY([KontoArt_ID])
REFERENCES [dbo].[KontoArt] ([KontoArt_ID])
GO
ALTER TABLE [dbo].[Konto] CHECK CONSTRAINT [FK_Konto_KontoArt]
GO
ALTER TABLE [dbo].[Konto]  WITH CHECK ADD  CONSTRAINT [FK_Konto_MiniBankFiliale] FOREIGN KEY([Filial_ID])
REFERENCES [dbo].[MiniBankFiliale] ([Filial_ID])
GO
ALTER TABLE [dbo].[Konto] CHECK CONSTRAINT [FK_Konto_MiniBankFiliale]
GO
ALTER TABLE [dbo].[KontoBesitzer]  WITH CHECK ADD  CONSTRAINT [FK_KontoBesitzer_Konto] FOREIGN KEY([Konto_ID])
REFERENCES [dbo].[Konto] ([Konto_ID])
GO
ALTER TABLE [dbo].[KontoBesitzer] CHECK CONSTRAINT [FK_KontoBesitzer_Konto]
GO
ALTER TABLE [dbo].[KontoBesitzer]  WITH CHECK ADD  CONSTRAINT [FK_KontoBesitzer_Kunden] FOREIGN KEY([Kunden_ID])
REFERENCES [dbo].[Kunden] ([Kunden_ID])
GO
ALTER TABLE [dbo].[KontoBesitzer] CHECK CONSTRAINT [FK_KontoBesitzer_Kunden]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Abteilung] FOREIGN KEY([Abteilung_ID])
REFERENCES [dbo].[Abteilung] ([Abteilung_ID])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Abteilung]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Beruf] FOREIGN KEY([Beruf_ID])
REFERENCES [dbo].[Beruf] ([Beruf_ID])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Beruf]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Position] FOREIGN KEY([Position_ID])
REFERENCES [dbo].[Position] ([Position_ID])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Position]
GO
ALTER TABLE [dbo].[Ueberweisung]  WITH CHECK ADD  CONSTRAINT [FK_Ueberweisung_Konto] FOREIGN KEY([Konto_ID])
REFERENCES [dbo].[Konto] ([Konto_ID])
GO
ALTER TABLE [dbo].[Ueberweisung] CHECK CONSTRAINT [FK_Ueberweisung_Konto]
GO
ALTER TABLE [dbo].[Bonitaet]  WITH CHECK ADD  CONSTRAINT [CK_Bonitaet_Score] CHECK  (([Score]>=(0) AND [Score]<=(100)))
GO
ALTER TABLE [dbo].[Bonitaet] CHECK CONSTRAINT [CK_Bonitaet_Score]
GO
ALTER TABLE [dbo].[Konto]  WITH CHECK ADD  CONSTRAINT [CK_Konto] CHECK  (([Kontonummer]>=(1000000000) AND [Kontonummer]<=(9999999999.) AND [EingerichtetAm]<=getdate()))
GO
ALTER TABLE [dbo].[Konto] CHECK CONSTRAINT [CK_Konto]
GO
ALTER TABLE [dbo].[KontoArt]  WITH CHECK ADD  CONSTRAINT [CK_Kosten] CHECK  (([Einheit]=(0) AND ([Kosten]>=(0) AND [Kosten]<=(1)) OR [Einheit]=(1) AND [Kosten]>=(0)))
GO
ALTER TABLE [dbo].[KontoArt] CHECK CONSTRAINT [CK_Kosten]
GO
ALTER TABLE [dbo].[Kunden]  WITH CHECK ADD  CONSTRAINT [CK_Kunden] CHECK  (([GeburtsDatum]<=getdate()))
GO
ALTER TABLE [dbo].[Kunden] CHECK CONSTRAINT [CK_Kunden]
GO
ALTER TABLE [dbo].[MiniBankFiliale]  WITH CHECK ADD  CONSTRAINT [CK_BLZ] CHECK  (([BLZ]>=(10000000) AND [BLZ]<=(99999999) AND len([BIC])=(11) AND substring([BIC],(5),(2))='DE'))
GO
ALTER TABLE [dbo].[MiniBankFiliale] CHECK CONSTRAINT [CK_BLZ]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [CK_Personal] CHECK  ((dateadd(year,(15),[GeburtsDatum])<=getdate()))
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [CK_Personal]
GO
ALTER TABLE [dbo].[Ueberweisung]  WITH CHECK ADD  CONSTRAINT [CK_Ueberweisung] CHECK  (([Betrag]<>(0) AND len([IBAN_Gegenseite])=(22) AND substring([IBAN_Gegenseite],(1),(2))='DE' AND len([BIC_Gegenseite])=(11) AND [KontoStandAlt]<>[KontoStandNeu]))
GO
ALTER TABLE [dbo].[Ueberweisung] CHECK CONSTRAINT [CK_Ueberweisung]
GO
/****** Object:  StoredProcedure [dbo].[sp_Ueberweisung]    Script Date: 02.09.2022 13:15:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eugen Gromow
-- Create date: 30.08.2022
-- Description:	
-- =============================================
CREATE   PROCEDURE [dbo].[sp_Ueberweisung] 
	-- Add the parameters for the stored procedure here
	@DatumUhrzeit			DATETIME,
    @Betrag					DECIMAL(19,4),
    @Verwendungszweck		NVARCHAR(140),
    @Konto_ID				INT,
    @IBAN_Gegenseite		CHAR(22),
    @BIC_Gegenseite			CHAR(11),
    @Kommentar				NTEXT,
	-----
	@Erfolg bit OUTPUT, -- geklappt oder nicht
	@Feedback VARCHAR(MAX) OUTPUT -- Fehlermeldungen etc.
AS
BEGIN
	-- Hilfsvariablen deklarieren	
	DECLARE @CheckResult		AS INT,
			@KontoStandAlt		AS DECIMAL(19,4),
			@KontoStandErlaubt	AS DECIMAL(19,4),
			@KontoStandNeu		AS DECIMAL(19,4),
			@msg				AS nvarchar(MAX);
	-------------------------------	
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;	
	BEGIN TRY
		-- Konto_ID ist nicht in der Tabelle [Kunden] vorhanden
		SET @CheckResult = dbo.sf_Ueberweisung_Konto_ID_in_Kunden(@Konto_ID)
		IF @CheckResult = 0
			THROW 50001, '[Konto_ID] ist nicht in der Tabelle [Kunden] vorhanden, bitte korrigieren!', 1;


		-- @Konto_ID ist gesperrt!
		SET @CheckResult = dbo.sf_Konto_ID_gesperrt(@Konto_ID);
		IF @CheckResult = 1
			THROW 50002, '[Konto_ID] (Auftraggeber) ist gesperrt!', 1;


		-- IBAN inkorrekt
		SET @CheckResult = dbo.sf_IBAN_Validierung(@IBAN_Gegenseite);
		IF @CheckResult = 0 -- IBAN inkorrekt
			THROW 50003, 'Die IBAN ist inkorrekt, bitte korrigieren!', 1;


		-- Kunde-A überweist an Kunde-B und der Betrag ist positiv
		SET @CheckResult = dbo.sf_IBAN_von_Tabelle_Kunde(@IBAN_Gegenseite);
		IF (@CheckResult = 1) AND (@Betrag > 0)
			THROW 50004, 'Bitte negativen Betrag eingeben!', 1;


		-- Kunde-A überweist an Kunde-B und Konto von Kunde-B ist gesperrt
		IF (@CheckResult = 1) AND (dbo.sf_Kontonummer_gesperrt(SUBSTRING(@IBAN_Gegenseite, 13, 10)) = 1)
			THROW 50005, 'Konto des Empfängers ist gesperrt!', 1;



		SET @KontoStandAlt = (SELECT KontoStand FROM Konto WHERE Konto_ID = @Konto_ID)
		SET @KontoStandErlaubt = (SELECT KontoStandErlaubt FROM Konto WHERE Konto_ID = @Konto_ID)
		-- Betrag ist negativ: Also Überweisung vom Kunden-Konto
		IF (@Betrag < 0)
			-- KontoStand (Kunde-A) + (negativer Betrag) < KontoStandErlaubt (Kunde-A)
			IF (@KontoStandAlt + @Betrag < @KontoStandErlaubt)
				BEGIN
					SET @msg = 'Sie dürfen nur ' + CONVERT(nvarchar(24), @KontoStandAlt - @KontoStandErlaubt) + ' Euro überweisen';
					THROW 50006, @msg, 1;
				END


		-- Überweisung an oder von Fremde-Bank
		SET @CheckResult = dbo.sf_IBAN_von_Tabelle_Kunde(@IBAN_Gegenseite);
		SET @KontoStandNeu = @KontoStandAlt + @Betrag
		IF @DatumUhrzeit = NULL
			SET @DatumUhrzeit = CURRENT_TIMESTAMP
		IF (@CheckResult = 0)
			BEGIN				
				-- INSERT INTO [Ueberweisung]
				INSERT INTO [Ueberweisung]
							([DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar])
						VALUES(@DatumUhrzeit, @Betrag, @Verwendungszweck, @Konto_ID, @IBAN_Gegenseite, @BIC_Gegenseite, @KontoStandAlt, @KontoStandNeu,  @Kommentar);
			END
		ELSE -- @CheckResult = 1: IBAN ist aus Tabelle Kunde. Also Überweisung von (Kunde-A) an (Kunde-B)
			BEGIN
				-- DECLARE Variablen für die zweite (INSERT) Zeile: Kunde-B <- Kunde-A
				DECLARE @Konto_ID_B				INT,
						@IBAN_Gegenseite_A		CHAR(22),
						@KontoStandAlt_B		AS DECIMAL(19,4),
						@KontoStandNeu_B		AS DECIMAL(19,4),
						@Kontonummer_B			CHAR(10);

				
				--SET @Betrag = - @Betrag
				SET @Kontonummer_B = dbo.sf_erstelle_Kontonummer_von_IBAN(@IBAN_Gegenseite)
				SET @Konto_ID_B = (SELECT [Konto_ID] FROM [Konto] WHERE [Kontonummer] = @Kontonummer_B)

				-- Kunde-A überweist an Kunde-B wobei Kunde-A = Kunde-B
				IF @Konto_ID = @Konto_ID_B
					THROW 50007, 'Es macht keinen Sinn aufs eigene Konto zu überweisen!', 1;

				-- @IBAN_Gegenseite (Kunde-A Zweite Zeile)
				SET @IBAN_Gegenseite_A = dbo.sf_erstelle_IBAN_von_Kontonummer((SELECT [Kontonummer] FROM [Konto] WHERE [Konto_ID] = @Konto_ID), (SELECT [BIC] FROM [MiniBank].[dbo].[MiniBankFiliale] WHERE [Filial_ID] = 1))
				SET @KontoStandAlt_B = (SELECT KontoStand FROM Konto WHERE Konto_ID = @Konto_ID_B)
				SET @KontoStandNeu_B = @KontoStandAlt_B - @Betrag
				--INSERT INTO [Ueberweisung]
				--			([Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar])
				--		VALUES(@Betrag, @Verwendungszweck, @Konto_ID, @IBAN_Gegenseite, @BIC_Gegenseite, @KontoStandAlt, @KontoStandNeu,  @Kommentar),
				--			  (-@Betrag, @Verwendungszweck, @Konto_ID_B, @IBAN_Gegenseite_A, @BIC_Gegenseite, @KontoStandAlt_B, @KontoStandNeu_B,  @Kommentar);	

				INSERT INTO [Ueberweisung]
							([DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar])
						VALUES(@DatumUhrzeit, @Betrag, @Verwendungszweck, @Konto_ID, @IBAN_Gegenseite, @BIC_Gegenseite, @KontoStandAlt, @KontoStandNeu,  @Kommentar);
				INSERT INTO [Ueberweisung]
							([DatumUhrzeit], [Betrag], [Verwendungszweck], [Konto_ID], [IBAN_Gegenseite], [BIC_Gegenseite], [KontoStandAlt], [KontoStandNeu], [Kommentar])
						VALUES(@DatumUhrzeit, -@Betrag, @Verwendungszweck, @Konto_ID_B, @IBAN_Gegenseite_A, @BIC_Gegenseite, @KontoStandAlt_B, @KontoStandNeu_B,  @Kommentar);	
			END

		SET @Erfolg = 1;
		SET @Feedback = 'Alles OK!';			
	END TRY 
	BEGIN CATCH
		SET @Erfolg = 0; -- nicht geklappt--
		-- 	@Feedback text OUTPUT --Fehlermeldungen etc.
		SET @Feedback = 
			ERROR_MESSAGE() + ' Fehler Nr. '+ CONVERT(varchar, ERROR_NUMBER())
						+ ' Prozedur: '  + ERROR_PROCEDURE()
						+ ' Zeile Nr.: ' + CONVERT(varchar,  ERROR_LINE());
	END CATCH;
END
GO
ALTER AUTHORIZATION ON [dbo].[sp_Ueberweisung] TO  SCHEMA OWNER 
GO
/****** Object:  Trigger [dbo].[tr_UeberweisungINSERT]    Script Date: 02.09.2022 13:15:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eugen Gromow
-- Create date: 30.08.2022
-- Description:	
-- =============================================
CREATE   TRIGGER  [dbo].[tr_UeberweisungINSERT]
   ON [dbo].[Ueberweisung]
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Konto_ID AS INT;

	SET @Konto_ID = (SELECT [Konto_ID] FROM INSERTED)

    -- Insert statements for trigger here
	UPDATE [dbo].[Konto]
		SET [KontoStand] = (SELECT KontoStandNeu FROM INSERTED)
	WHERE [Konto_ID] =  @Konto_ID

END
GO
ALTER TABLE [dbo].[Ueberweisung] ENABLE TRIGGER [tr_UeberweisungINSERT]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[14] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "KontoArt"
            Begin Extent = 
               Top = 24
               Left = 273
               Bottom = 197
               Right = 440
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Konto"
            Begin Extent = 
               Top = 23
               Left = 31
               Bottom = 275
               Right = 202
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 2445
         Width = 1500
         Width = 1005
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_alle_Konten_unter_0_gruppiert_nach_KontoArt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_alle_Konten_unter_0_gruppiert_nach_KontoArt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[30] 4[26] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Konto"
            Begin Extent = 
               Top = 19
               Left = 296
               Bottom = 260
               Right = 467
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Bonitaet"
            Begin Extent = 
               Top = 122
               Left = 43
               Bottom = 252
               Right = 210
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1965
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1740
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Bonitaet_hohes_Risiko'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Bonitaet_hohes_Risiko'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Konto"
            Begin Extent = 
               Top = 34
               Left = 486
               Bottom = 288
               Right = 657
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KontoBesitzer"
            Begin Extent = 
               Top = 21
               Left = 271
               Bottom = 122
               Right = 438
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Kunden"
            Begin Extent = 
               Top = 0
               Left = 14
               Bottom = 291
               Right = 190
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KontoArt"
            Begin Extent = 
               Top = 93
               Left = 770
               Bottom = 248
               Right = 936
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1830
         Width = 2070
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1410
         Or = 1350
         Or = 1350
         Or = 1350
      End' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_entsperrte_Girokonten_unter_zehn_Tausend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_entsperrte_Girokonten_unter_zehn_Tausend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_entsperrte_Girokonten_unter_zehn_Tausend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Konto"
            Begin Extent = 
               Top = 0
               Left = 284
               Bottom = 253
               Right = 455
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KontoArt"
            Begin Extent = 
               Top = 155
               Left = 815
               Bottom = 303
               Right = 982
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Bonitaet"
            Begin Extent = 
               Top = 227
               Left = 587
               Bottom = 357
               Right = 754
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MiniBankFiliale"
            Begin Extent = 
               Top = 11
               Left = 16
               Bottom = 272
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ueberweisung"
            Begin Extent = 
               Top = 17
               Left = 999
               Bottom = 219
               Right = 1183
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 18
         Width = 284
         Width = 2085
         Width = 1500
         Width = 1500
         Width = 2115
         Width = 1500
         Width = 1500
         Width = 2430
         Width = 1935
         Width = 1080
         Width = 3285
         Width = 1500
         Width = 1500
         Width = 1500
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FULL_JOIN_Filialen_verschiedene_arten_Uebrweisungen_etc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FULL_JOIN_Filialen_verschiedene_arten_Uebrweisungen_etc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FULL_JOIN_Filialen_verschiedene_arten_Uebrweisungen_etc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[37] 4[11] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "MiniBankFiliale"
            Begin Extent = 
               Top = 0
               Left = 720
               Bottom = 255
               Right = 887
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Konto"
            Begin Extent = 
               Top = 0
               Left = 472
               Bottom = 240
               Right = 643
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Kunden"
            Begin Extent = 
               Top = 11
               Left = 0
               Bottom = 292
               Right = 176
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KontoBesitzer"
            Begin Extent = 
               Top = 89
               Left = 243
               Bottom = 185
               Right = 410
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Abteilung"
            Begin Extent = 
               Top = 23
               Left = 965
               Bottom = 153
               Right = 1132
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Personal"
            Begin Extent = 
               Top = 19
               Left = 1223
               Bottom = 337
               Right = 1390
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FULL_JOIN_Kunden_Personal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'= 1500
         Width = 1500
         Width = 2535
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FULL_JOIN_Kunden_Personal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FULL_JOIN_Kunden_Personal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[35] 4[26] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Kunden"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 301
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1950
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Jungsten_Kunden_nach_2000'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Jungsten_Kunden_nach_2000'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Ueberweisung"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 266
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Konto"
            Begin Extent = 
               Top = 0
               Left = 317
               Bottom = 248
               Right = 488
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 2580
         Width = 3300
         Width = 1500
         Width = 2700
         Width = 4170
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 8655
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Kontoauszug_Vorlage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Kontoauszug_Vorlage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[33] 4[23] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Ueberweisung"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 210
               Right = 231
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Konto"
            Begin Extent = 
               Top = 15
               Left = 351
               Bottom = 258
               Right = 522
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Kunden"
            Begin Extent = 
               Top = 10
               Left = 871
               Bottom = 301
               Right = 1047
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KontoBesitzer"
            Begin Extent = 
               Top = 22
               Left = 630
               Bottom = 119
               Right = 797
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 2025
         Width = 2910
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 3975
         Or = 1350
         Or = 1350
         Or = 1350
    ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_KTO_Uebersicht_fuer_KnNr_3451027379'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_KTO_Uebersicht_fuer_KnNr_3451027379'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_KTO_Uebersicht_fuer_KnNr_3451027379'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[38] 4[15] 2[14] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Ueberweisung"
            Begin Extent = 
               Top = 14
               Left = 56
               Bottom = 216
               Right = 249
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MiniBankFiliale"
            Begin Extent = 
               Top = 21
               Left = 346
               Bottom = 303
               Right = 550
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1860
         Width = 1500
         Width = 1500
         Width = 1755
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_RIGHT-JOIN_Ueberweisungen_von_anderen_Banken'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_RIGHT-JOIN_Ueberweisungen_von_anderen_Banken'
GO
USE [master]
GO
ALTER DATABASE [MiniBank] SET  READ_WRITE 
GO

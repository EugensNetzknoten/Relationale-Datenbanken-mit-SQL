USE [MiniBank]
GO
CREATE USER [MiniBankLeser] FOR LOGIN [MiniBankReader];
GO
--- Tabelle KontoArt ---
GRANT SELECT ON [dbo].[KontoArt] TO [MiniBankLeser]; -- alle Felder 
GO
--- Tabelle Konto ---
GRANT SELECT ON [dbo].[Konto] ([Kontonummer]) TO [MiniBankLeser];
GO
GRANT SELECT ON [dbo].[Konto] ([KontoStand]) TO [MiniBankLeser];
GO
GRANT SELECT ON [dbo].[Konto] ([KontoStandErlaubt]) TO [MiniBankLeser]
GO
GRANT SELECT ON [dbo].[Konto] ([Gesperrt]) TO [MiniBankLeser];
GO

--- View View_Kontoauszug_Vorlage ---
GRANT SELECT ON [dbo].[View_Kontoauszug_Vorlage] TO [MiniBankLeser]; -- alle Felder 
GO

-- REVOKE
-- DENY

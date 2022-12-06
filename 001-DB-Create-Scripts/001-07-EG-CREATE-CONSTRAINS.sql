/*
CONSTRAINTs
*/
USE [MiniBank];
GO


-------Ueberweisung-----------------------------------------------------------------------------
-- erstellen
ALTER TABLE [Ueberweisung] WITH CHECK 
ADD CONSTRAINT [CK_Ueberweisung] 
CHECK (
		(Betrag != 0) AND
		(LEN(IBAN_Gegenseite) = 22) AND
		(SUBSTRING(IBAN_Gegenseite, 1, 2) = 'DE') AND
		(LEN(BIC_Gegenseite) = 11) AND
		(KontoStandAlt != KontoStandNeu)
	  );
GO
-- aktivieren
ALTER TABLE [Ueberweisung] CHECK CONSTRAINT [CK_Ueberweisung];
GO
------------------------------------------------------------------------------------



---------Kunden--------------------------------------------------------------------
-- erstellen
ALTER TABLE [Kunden] WITH CHECK 
ADD CONSTRAINT [CK_Kunden] 
CHECK (GeburtsDatum <= getdate())
GO
-- aktivieren
ALTER TABLE [Kunden] CHECK CONSTRAINT [CK_Kunden];
GO
------------------------------------------------------------------------------------



---------Bonitaet-------------------------------------------------------------------
-- erstellen
ALTER TABLE [Bonitaet] WITH CHECK 
ADD CONSTRAINT [CK_Bonitaet_Score] 
CHECK (Score BETWEEN 0 AND 100);
GO
-- aktivieren
ALTER TABLE [Bonitaet] CHECK CONSTRAINT [CK_Bonitaet_Score];
GO
------------------------------------------------------------------------------------




------Konto------------------------------------------------------------------------------
-- erstellen
ALTER TABLE [Konto] WITH CHECK 
ADD CONSTRAINT [CK_Konto] 
CHECK ((Kontonummer BETWEEN 1000000000 AND 9999999999) AND
		(EingerichtetAm <= getdate()));
GO
-- aktivieren
ALTER TABLE [Konto] CHECK CONSTRAINT [CK_Konto];
GO
------------------------------------------------------------------------------------




---------MiniBankFiliale------------------------------------------------------------
-- erstellen
ALTER TABLE [MiniBankFiliale] WITH CHECK 
ADD CONSTRAINT [CK_BLZ] 
CHECK (BLZ BETWEEN 10000000 AND 99999999 AND
		(LEN(BIC) = 11) AND
		SUBSTRING(BIC, 5, 2) = 'DE');
GO
-- aktivieren
ALTER TABLE [MiniBankFiliale] CHECK CONSTRAINT [CK_BLZ];
GO
------------------------------------------------------------------------------------



---------KontoArt-------------------------------------------------------------------
-- erstellen
ALTER TABLE [KontoArt] WITH CHECK 
ADD CONSTRAINT [CK_Kosten] 
CHECK ((Einheit=0) AND (Kosten BETWEEN 0 AND 1) -- Prozent
		OR (Einheit=1) AND (Kosten >= 0)); -- Währung
GO
-- aktivieren
ALTER TABLE [KontoArt] CHECK CONSTRAINT [CK_Kosten];
GO
------------------------------------------------------------------------------------



---------Personal--------------------------------------------------------------------
-- erstellen
ALTER TABLE [Personal] WITH CHECK 
ADD CONSTRAINT [CK_Personal] 
CHECK (DATEADD(year, 15, GeburtsDatum) <= getdate())
GO
-- aktivieren
ALTER TABLE [Personal] CHECK CONSTRAINT [CK_Personal];
GO
------------------------------------------------------------------------------------
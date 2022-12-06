/*
FOREIGN KEYs
*/
USE [MiniBank];
GO


-- erstellen ------------------------------------------------------------------------
ALTER TABLE [dbo].[Ueberweisung] WITH CHECK 
ADD CONSTRAINT [FK_Ueberweisung_Konto] 
FOREIGN KEY([Konto_ID])
REFERENCES [dbo].[Konto] ([Konto_ID]);
GO
-- aktivieren ------------------------------------------------------------------------
ALTER TABLE [dbo].[Ueberweisung] 
CHECK CONSTRAINT [FK_Ueberweisung_Konto];
GO
--------------------------------------------------------------------------------------



-- erstellen ------------------------------------------------------------------------
ALTER TABLE [dbo].[KontoBesitzer] WITH CHECK 
ADD CONSTRAINT [FK_KontoBesitzer_Kunden] 
FOREIGN KEY([Kunden_ID])
REFERENCES [dbo].[Kunden] ([Kunden_ID]);
GO
-- aktivieren ------------------------------------------------------------------------
ALTER TABLE [dbo].[KontoBesitzer] 
CHECK CONSTRAINT [FK_KontoBesitzer_Kunden];
GO
--------------------------------------------------------------------------------------



-- erstellen ------------------------------------------------------------------------
ALTER TABLE [dbo].[KontoBesitzer] WITH CHECK 
ADD CONSTRAINT [FK_KontoBesitzer_Konto] 
FOREIGN KEY([Konto_ID])
REFERENCES [dbo].[Konto] ([Konto_ID]);
GO
-- aktivieren ------------------------------------------------------------------------
ALTER TABLE [dbo].[KontoBesitzer] 
CHECK CONSTRAINT [FK_KontoBesitzer_Konto];
GO
--------------------------------------------------------------------------------------



-- erstellen ------------------------------------------------------------------------
ALTER TABLE [dbo].[Konto] WITH CHECK 
ADD CONSTRAINT [FK_Konto_MiniBankFiliale] 
FOREIGN KEY([Filial_ID])
REFERENCES [dbo].[MiniBankFiliale] ([Filial_ID]);
GO
-- aktivieren ------------------------------------------------------------------------
ALTER TABLE [dbo].[Konto] 
CHECK CONSTRAINT [FK_Konto_MiniBankFiliale];
GO
--------------------------------------------------------------------------------------



-- erstellen ------------------------------------------------------------------------
ALTER TABLE [dbo].[Konto] WITH CHECK 
ADD CONSTRAINT [FK_Konto_KontoArt] 
FOREIGN KEY([KontoArt_ID])
REFERENCES [dbo].[KontoArt] ([KontoArt_ID]);
GO
-- aktivieren ------------------------------------------------------------------------
ALTER TABLE [dbo].[Konto] 
CHECK CONSTRAINT [FK_Konto_KontoArt];
GO
--------------------------------------------------------------------------------------




-- erstellen ------------------------------------------------------------------------
ALTER TABLE [dbo].[Konto] WITH CHECK 
ADD CONSTRAINT [FK_Konto_Bonitaet] 
FOREIGN KEY([Bonitaet_ID])
REFERENCES [dbo].[Bonitaet] ([Bonitaet_ID]);
GO
-- aktivieren ------------------------------------------------------------------------
ALTER TABLE [dbo].[Konto] 
CHECK CONSTRAINT [FK_Konto_Bonitaet];
GO
--------------------------------------------------------------------------------------



-- erstellen ------------------------------------------------------------------------
ALTER TABLE [dbo].[Abteilung] WITH CHECK 
ADD CONSTRAINT [FK_Abteilung_MiniBankFiliale] 
FOREIGN KEY([Filial_ID])
REFERENCES [dbo].[MiniBankFiliale] ([Filial_ID]);
GO
-- aktivieren ------------------------------------------------------------------------
ALTER TABLE [dbo].[Abteilung] 
CHECK CONSTRAINT [FK_Abteilung_MiniBankFiliale];
GO
--------------------------------------------------------------------------------------




-- erstellen ------------------------------------------------------------------------
ALTER TABLE [dbo].[Personal] WITH CHECK 
ADD CONSTRAINT [FK_Personal_Abteilung] 
FOREIGN KEY([Abteilung_ID])
REFERENCES [dbo].[Abteilung] ([Abteilung_ID]);
GO
-- aktivieren ------------------------------------------------------------------------
ALTER TABLE [dbo].[Personal] 
CHECK CONSTRAINT [FK_Personal_Abteilung];
GO
--------------------------------------------------------------------------------------




-- erstellen ------------------------------------------------------------------------
ALTER TABLE [dbo].[Personal] WITH CHECK 
ADD CONSTRAINT [FK_Personal_Beruf] 
FOREIGN KEY([Beruf_ID])
REFERENCES [dbo].[Beruf] ([Beruf_ID]);
GO
-- aktivieren ------------------------------------------------------------------------
ALTER TABLE [dbo].[Personal] 
CHECK CONSTRAINT [FK_Personal_Beruf];
GO
--------------------------------------------------------------------------------------



-- erstellen ------------------------------------------------------------------------
ALTER TABLE [dbo].[Personal] WITH CHECK 
ADD CONSTRAINT [FK_Personal_Position] 
FOREIGN KEY([Position_ID])
REFERENCES [dbo].[Position] ([Position_ID]);
GO
-- aktivieren ------------------------------------------------------------------------
ALTER TABLE [dbo].[Personal] 
CHECK CONSTRAINT [FK_Personal_Position];
GO
--------------------------------------------------------------------------------------
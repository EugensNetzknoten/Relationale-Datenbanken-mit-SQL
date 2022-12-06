USE [MiniBank];
GO

------NonClusteredIndex-----------------------------------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_Kunden] ON [dbo].[Kunden]
(
	[Kundennummer] ASC
)


-- Kombination ... indizieren (ohne Duplikate)
CREATE UNIQUE NONCLUSTERED INDEX [IX_KontoBesitzer] ON [dbo].[KontoBesitzer]
(
	[Kunden_ID] ASC,
	[Konto_ID] ASC
)


-- Kombination ... indizieren (ohne Duplikate)
CREATE UNIQUE NONCLUSTERED INDEX [IX_Bonitaet] ON [dbo].[Bonitaet]
(
	[Score] ASC,
	[Bezeichnung] ASC
)


------NonClusteredIndex-----------------------------------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_Konto] ON [dbo].[Konto]
(
	[Kontonummer] ASC
)


------NonClusteredIndex-----------------------------------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_MiniBankFiliale] ON [dbo].[MiniBankFiliale]
(
	[FilialName] ASC,
	[BLZ] ASC,
	[BIC] ASC
)


------NonClusteredIndex-----------------------------------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_KontoArt] ON [dbo].[KontoArt]
(
	[Bezeichnung] ASC
)



------NonClusteredIndex-----------------------------------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_Abteilung] ON [dbo].[Abteilung]
(
	[Abteilung] ASC
)


------NonClusteredIndex-----------------------------------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_Beruf] ON [dbo].[Beruf]
(
	[Beruf] ASC
)



------NonClusteredIndex-----------------------------------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_Position] ON [dbo].[Position]
(
	[Position] ASC
)
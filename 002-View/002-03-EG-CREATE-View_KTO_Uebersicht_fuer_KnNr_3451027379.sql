USE [MiniBank]
GO

/****** Object:  View [dbo].[View_KTO_Uebersicht_fuer_KnNr_3451027379]    Script Date: 29.08.2022 20:45:26 ******/
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



USE [MiniBank]
GO

/****** Object:  View [dbo].[View_FULL_JOIN_Filialen_verschiedene_arten_Uebrweisungen_etc]    Script Date: 30.08.2022 10:46:41 ******/
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



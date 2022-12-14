USE [MiniBank]
GO

/****** Object:  View [dbo].[View_FULL_JOIN_Kunden_Personal]    Script Date: 30.08.2022 10:34:14 ******/
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



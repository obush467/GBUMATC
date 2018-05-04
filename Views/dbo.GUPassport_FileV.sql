SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[GUPassport_FileV]
AS
SELECT        GUPassport_File_1.ID, GUPassport_File_1.Passport_ID, GUPassport_File_1.tsc, GUPassport_File_1.upserted, GUPassport_File_1.upserter, 
                         mainFileContainer_1.stream_id, mainFileContainer_1.file_stream, mainFileContainer_1.name, mainFileContainer_1.parent_path_locator, 
                         mainFileContainer_1.file_type, mainFileContainer_1.cached_file_size, mainFileContainer_1.creation_time, mainFileContainer_1.last_write_time, 
                         mainFileContainer_1.last_access_time, mainFileContainer_1.is_directory, mainFileContainer_1.is_offline, mainFileContainer_1.is_hidden, 
                         mainFileContainer_1.is_readonly, mainFileContainer_1.is_archive, mainFileContainer_1.is_system, mainFileContainer_1.is_temporary
FROM            dbo.GUPassport_File AS GUPassport_File_1 INNER JOIN
                         dbo.mainFileContainer AS mainFileContainer_1 ON GUPassport_File_1.File_ID = mainFileContainer_1.path_locator
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[48] 4[14] 2[20] 3) )"
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
         Begin Table = "GUPassport_File_1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 250
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "mainFileContainer_1"
            Begin Extent = 
               Top = 6
               Left = 250
               Bottom = 247
               Right = 444
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
', 'SCHEMA', N'dbo', 'VIEW', N'GUPassport_FileV'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 1, 'SCHEMA', N'dbo', 'VIEW', N'GUPassport_FileV'
GO
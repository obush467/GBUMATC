CREATE ROLE [db_backupoperator] AUTHORIZATION [dbo]
GO

EXEC sp_addrolemember N'db_backupoperator', N'Бушмакин'
GO
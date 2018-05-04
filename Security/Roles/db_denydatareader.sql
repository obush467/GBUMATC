CREATE ROLE [db_denydatareader] AUTHORIZATION [dbo]
GO

EXEC sp_addrolemember N'db_denydatareader', N'Бушмакин'
GO
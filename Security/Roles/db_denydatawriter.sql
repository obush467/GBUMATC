CREATE ROLE [db_denydatawriter] AUTHORIZATION [dbo]
GO

EXEC sp_addrolemember N'db_denydatawriter', N'Бушмакин'
GO
CREATE ROLE [db_datawriter] AUTHORIZATION [dbo]
GO

EXEC sp_addrolemember N'db_datawriter', N'dbase'
GO

EXEC sp_addrolemember N'db_datawriter', N'iisuser'
GO

EXEC sp_addrolemember N'db_datawriter', N'user'
GO

EXEC sp_addrolemember N'db_datawriter', N'Бушмакин'
GO
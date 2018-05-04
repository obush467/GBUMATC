CREATE ROLE [db_datareader] AUTHORIZATION [dbo]
GO

EXEC sp_addrolemember N'db_datareader', N'iisuser'
GO

EXEC sp_addrolemember N'db_datareader', N'user'
GO
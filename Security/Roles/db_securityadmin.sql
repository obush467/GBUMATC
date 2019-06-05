CREATE ROLE [db_securityadmin] AUTHORIZATION [dbo]
GO

EXEC sp_addrolemember N'db_securityadmin', N'Бушмакин'
GO
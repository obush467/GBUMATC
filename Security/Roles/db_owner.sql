CREATE ROLE [db_owner] AUTHORIZATION [dbo]
GO

EXEC sp_addrolemember N'db_owner', N'dbase'
GO

EXEC sp_addrolemember N'db_owner', N'dbo'
GO

EXEC sp_addrolemember N'db_owner', N'iisuser'
GO

EXEC sp_addrolemember N'db_owner', N'NT AUTHORITY\IUSR'
GO

EXEC sp_addrolemember N'db_owner', N'Бушмакин'
GO

EXEC sp_addrolemember N'db_owner', N'Колбунцова М.В.'
GO

EXEC sp_addrolemember N'db_owner', N'Малых А.В.'
GO

EXEC sp_addrolemember N'db_owner', N'Митителу П.Д.'
GO

EXEC sp_addrolemember N'db_owner', N'Ней К.Н.'
GO

EXEC sp_addrolemember N'db_owner', N'Петрусенко Н.А.'
GO

EXEC sp_addrolemember N'db_owner', N'Рыжкова Т.Ф.'
GO

EXEC sp_addrolemember N'db_owner', N'Сорокина Ю.А.'
GO

EXEC sp_addrolemember N'db_owner', N'Хусаинова Е.Т.'
GO
SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [dbo].[Okrug]
as
SELECT [ID]
      ,[fullName]
      ,[shortName]
      ,[OKATO]
      ,[geoData]
  FROM [dbo].[AdminArea]
  where Type='02'
GO
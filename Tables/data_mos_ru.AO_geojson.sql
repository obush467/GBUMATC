CREATE TABLE [data_mos_ru].[AO_geojson] (
  [ID] [int] IDENTITY NOT FOR REPLICATION,
  [NAME] [nvarchar](150) NULL,
  [OKATO] [nvarchar](150) NULL,
  [ABBREV] [nvarchar](150) NULL,
  [geometry] [geography] NULL,
  CONSTRAINT [PK_dbo.AO_geojson] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO
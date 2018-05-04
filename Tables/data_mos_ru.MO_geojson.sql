CREATE TABLE [data_mos_ru].[MO_geojson] (
  [ID] [int] IDENTITY NOT FOR REPLICATION,
  [NAME] [nvarchar](150) NULL,
  [OKATO] [nvarchar](150) NULL,
  [OKTMO] [nvarchar](150) NULL,
  [NAME_AO] [nvarchar](150) NULL,
  [OKATO_AO] [nvarchar](150) NULL,
  [TYPE_MO] [nvarchar](150) NULL,
  [ABBREV_AO] [nvarchar](150) NULL,
  [geometry] [geography] NULL,
  CONSTRAINT [PK_data_mos_ru.MO_geojson] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [data_mos_ru].[MO] (
  [id] [int] IDENTITY NOT FOR REPLICATION,
  [global_id] [int] NOT NULL,
  [system_object_id] [nvarchar](max) NULL,
  [MO_Code] [nvarchar](4000) NULL,
  [MO_Name] [nvarchar](4000) NULL,
  [MO_Trans] [nvarchar](4000) NULL,
  [MO_Type] [nvarchar](4000) NULL,
  [MO_TE] [nvarchar](4000) NULL,
  [MO_OKTMO] [nvarchar](4000) NULL,
  [geoData] [nvarchar](4000) NULL,
  CONSTRAINT [PK_data_mos_ru.MO] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO
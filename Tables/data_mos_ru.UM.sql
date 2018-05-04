CREATE TABLE [data_mos_ru].[UM] (
  [id] [int] IDENTITY NOT FOR REPLICATION,
  [global_id] [int] NOT NULL,
  [UM_CODE] [nvarchar](4000) NULL,
  [system_object_id] [nvarchar](4000) NULL,
  [UM_NAMEF] [nvarchar](4000) NULL,
  [UM_NAMES] [nvarchar](4000) NULL,
  [UM_TRANS] [nvarchar](4000) NULL,
  [UM_TYPE] [nvarchar](4000) NULL,
  [UM_TM] [nvarchar](4000) NULL,
  [UM_TE] [nvarchar](4000) NULL,
  [UM_KLADR] [nvarchar](4000) NULL,
  [geoData] [nvarchar](4000) NULL,
  CONSTRAINT [PK_data_mos_ru.UM] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO
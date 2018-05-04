CREATE TABLE [data_mos_ru].[TM_Type] (
  [id] [int] IDENTITY NOT FOR REPLICATION,
  [global_id] [int] NOT NULL,
  [TM_TYPEC] [nvarchar](max) NULL,
  [TM_TYPEN] [nvarchar](4000) NULL,
  CONSTRAINT [PK_data_mos_ru.TM_Type] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO
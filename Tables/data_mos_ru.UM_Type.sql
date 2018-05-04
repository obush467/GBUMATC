CREATE TABLE [data_mos_ru].[UM_Type] (
  [id] [int] IDENTITY NOT FOR REPLICATION,
  [global_id] [int] NOT NULL,
  [system_object_id] [nvarchar](4000) NULL,
  [UM_STAT] [nvarchar](4000) NULL,
  [UM_TYPEC] [nvarchar](4000) NULL,
  [UM_TYPEN] [nvarchar](4000) NULL,
  CONSTRAINT [PK_data_mos_ru.UM_Type] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO
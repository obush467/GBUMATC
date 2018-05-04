CREATE TABLE [data_mos_ru].[TM] (
  [global_id] [int] NOT NULL,
  [TM_CODE] [nvarchar](4000) NULL,
  [TM_NAMEF] [nvarchar](4000) NULL,
  [TM_NAMES] [nvarchar](4000) NULL,
  [TM_TRANS] [nvarchar](4000) NULL,
  [TM_TYPE] [nvarchar](4000) NULL,
  [TM_TE] [nvarchar](4000) NULL,
  [TM_KLADR] [nvarchar](4000) NULL,
  [TM_STAT] [nvarchar](4000) NULL,
  [Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
  CONSTRAINT [PK_data_mos_ru.TM] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO
CREATE TABLE [data_mos_ru].[TMED] (
  [Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TMED_Id] DEFAULT (newid()) ROWGUIDCOL,
  [global_id] [int] NOT NULL,
  [TM_COMM] [nvarchar](4000) NULL,
  [TM_NAMES] [nvarchar](4000) NULL,
  [TM_TRANS] [nvarchar](4000) NULL,
  [TM_TYPE] [nvarchar](4000) NULL,
  [TM_TE] [nvarchar](4000) NULL,
  [TM_KLADR] [nvarchar](4000) NULL,
  [TM_NAMEF] [nvarchar](4000) NULL,
  CONSTRAINT [PK_data_mos_ru.TMED] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO
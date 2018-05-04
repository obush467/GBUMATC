CREATE TABLE [dbo].[sotr] (
  [id] [int] IDENTITY NOT FOR REPLICATION,
  [fio] [nvarchar](255) NULL,
  [doljnost] [nvarchar](255) NULL,
  [org] [nvarchar](50) NULL,
  [pass] [nvarchar](50) NULL,
  [imaorg] [nvarchar](50) NULL,
  [kod] [nvarchar](50) NULL,
  [sortirovka] [nchar](10) NULL,
  [page] [nvarchar](50) NULL,
  [zanatie] [nvarchar](20) NULL,
  [iskl] [nchar](10) NULL,
  [UID] [int] NULL,
  [Sotr_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_sotr_Sotr_ID] DEFAULT (newid()) ROWGUIDCOL,
  CONSTRAINT [PK__sotr__3213E83F2A01329B] PRIMARY KEY CLUSTERED ([Sotr_ID])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [ux_sotr_fio]
  ON [dbo].[sotr] ([fio])
  ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'запуск формы по умалчанию', 'SCHEMA', N'dbo', 'TABLE', N'sotr', 'COLUMN', N'page'
GO
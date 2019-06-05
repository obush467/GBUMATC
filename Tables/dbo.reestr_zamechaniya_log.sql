CREATE TABLE [dbo].[reestr_zamechaniya_log] (
  [id_log] [int] IDENTITY NOT FOR REPLICATION,
  [changedate] [datetimeoffset] NOT NULL DEFAULT (sysdatetimeoffset()),
  [id] [uniqueidentifier] NOT NULL,
  [kod] [int] NOT NULL,
  [zam_type] [varchar](50) NOT NULL,
  [status] [varchar](50) NULL,
  [text] [varchar](1000) NULL,
  [key] [varchar](1) NULL,
  [pic] [varchar](255) NULL,
  [zam] [varchar](1000) NULL,
  [memo] [varchar](1000) NULL,
  [foto] [varchar](255) NULL,
  [podtverjd_memo] [varchar](1000) NULL,
  [podtverjd_foto] [varchar](255) NULL,
  [podtverjd_status] [varchar](50) NULL,
  [napravleno] [date] NULL,
  [updated] [datetimeoffset] NULL,
  CONSTRAINT [PK_reestr_zamechaniya_log_1] PRIMARY KEY CLUSTERED ([id_log])
)
ON [PRIMARY]
GO
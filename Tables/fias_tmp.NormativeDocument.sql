CREATE TABLE [fias_tmp].[NormativeDocument] (
  [NORMDOCID] [uniqueidentifier] NOT NULL,
  [DOCNAME] [varchar](500) NULL,
  [DOCDATE] [datetime] NULL,
  [DOCNUM] [varchar](20) NULL,
  [DOCTYPE] [int] NOT NULL,
  [DOCIMGID] [int] NULL
)
ON [PRIMARY]
GO

CREATE CLUSTERED INDEX [ClusteredIndex-20180424-153938]
  ON [fias_tmp].[NormativeDocument] ([NORMDOCID], [DOCTYPE], [DOCIMGID], [DOCNAME], [DOCDATE], [DOCNUM])
  ON [PRIMARY]
GO
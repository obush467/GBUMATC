CREATE TABLE [fias].[NormativeDocument] (
  [NORMDOCID] [uniqueidentifier] NOT NULL,
  [DOCNAME] [varchar](500) NULL,
  [DOCDATE] [smalldatetime] NULL,
  [DOCNUM] [varchar](20) NULL,
  [DOCTYPE] [bigint] NOT NULL,
  [DOCIMGID] [int] NULL,
  CONSTRAINT [PK_NormativeDocument] PRIMARY KEY CLUSTERED ([NORMDOCID])
)
ON [PRIMARY]
GO

ALTER TABLE [fias].[NormativeDocument]
  ADD CONSTRAINT [FK_NormativeDocument_NormativeDocument] FOREIGN KEY ([NORMDOCID]) REFERENCES [fias].[NormativeDocument] ([NORMDOCID])
GO

ALTER TABLE [fias].[NormativeDocument]
  ADD CONSTRAINT [FK_NormativeDocument_NormativeDocumentType] FOREIGN KEY ([DOCTYPE]) REFERENCES [fias].[NormativeDocumentType] ([NDTYPEID])
GO
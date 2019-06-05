CREATE TABLE [fias].[NormativeDocumentType] (
  [NDTYPEID] [bigint] NOT NULL,
  [NAME] [varchar](250) NOT NULL,
  CONSTRAINT [PK_NormativeDocumentType] PRIMARY KEY CLUSTERED ([NDTYPEID])
)
ON [PRIMARY]
GO
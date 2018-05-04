CREATE TABLE [fias_tmp].[StructureStatus] (
  [STRSTATID] [int] NOT NULL,
  [NAME] [nvarchar](50) NOT NULL,
  [SHORTNAME] [nvarchar](50) NULL,
  CONSTRAINT [PK_StructureStatus] PRIMARY KEY CLUSTERED ([STRSTATID])
)
ON [PRIMARY]
GO
CREATE TABLE [fias_tmp].[EstateStatus] (
  [ESTSTATID] [int] NOT NULL,
  [NAME] [nvarchar](50) NOT NULL,
  [SHORTNAME] [nvarchar](50) NULL,
  CONSTRAINT [PK_EstateStatus] PRIMARY KEY CLUSTERED ([ESTSTATID])
)
ON [PRIMARY]
GO
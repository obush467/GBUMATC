CREATE TABLE [dbo].[nastroyki] (
  [kod] [uniqueidentifier] NOT NULL CONSTRAINT [DF_nastroyki_kod1] DEFAULT (newid()),
  [id] [nvarchar](100) NULL,
  [tip] [nvarchar](100) NULL,
  [znachenie] [nvarchar](4000) NULL,
  [memo] [nvarchar](max) NULL,
  [PGP] [varbinary](max) NULL,
  [CultureNativeName] [nvarchar](50) NULL,
  CONSTRAINT [PK_nastroyki] PRIMARY KEY CLUSTERED ([kod])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO
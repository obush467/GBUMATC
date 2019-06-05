CREATE TABLE [dbo].[nas_punkt] (
  [id] [int] IDENTITY NOT FOR REPLICATION,
  [Name] [nvarchar](255) NULL,
  [Prim] [nvarchar](max) NULL,
  [type_full] [nvarchar](50) NULL,
  [type_short] [nvarchar](50) NULL,
  [unID] [uniqueidentifier] NULL,
  CONSTRAINT [PK_nas_punkt] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO
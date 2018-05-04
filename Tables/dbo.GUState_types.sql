CREATE TABLE [dbo].[GUState_types] (
  [id] [int] IDENTITY NOT FOR REPLICATION,
  [TypeName] [nvarchar](250) NOT NULL,
  [TypeDescription] [nvarchar](max) NULL,
  [RegEx] [nvarchar](250) NULL,
  [dataType] [nvarchar](50) NULL,
  CONSTRAINT [PK_typeState] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[DUFiles_DataBase_log1] (
  [id] [uniqueidentifier] NOT NULL,
  [DUFiles_DataBase_ID] [uniqueidentifier] NOT NULL,
  [inserted] [datetimeoffset] NOT NULL,
  CONSTRAINT [PK_DUFiles_DataBase_log1] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO
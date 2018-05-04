CREATE TABLE [dbo].[doljnosti] (
  [kod] [int] IDENTITY NOT FOR REPLICATION,
  [doljnost] [nvarchar](max) NULL,
  [sortirovka] [nvarchar](max) NULL
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO
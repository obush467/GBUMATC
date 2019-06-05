CREATE TABLE [dbo].[standardValues] (
  [id] [int] IDENTITY NOT FOR REPLICATION,
  [Value] [varchar](50) NULL,
  CONSTRAINT [PK_standardValues] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [NonClusteredIndex-20170824-163241]
  ON [dbo].[standardValues] ([id], [Value])
  ON [PRIMARY]
GO
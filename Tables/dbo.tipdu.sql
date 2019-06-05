CREATE TABLE [dbo].[tipdu] (
  [kod] [int] IDENTITY NOT FOR REPLICATION,
  [tip] [varchar](50) NULL,
  [opisanie] [varchar](255) NULL,
  [razmer] [varchar](255) NULL,
  [ploshad] [float] NULL,
  CONSTRAINT [PK_tipdu] PRIMARY KEY NONCLUSTERED ([kod])
)
ON [PRIMARY]
GO
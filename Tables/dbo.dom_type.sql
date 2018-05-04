CREATE TABLE [dbo].[dom_type] (
  [id] [int] IDENTITY NOT FOR REPLICATION,
  [domtype_full] [nvarchar](50) NULL,
  [domtype_shot] [nvarchar](50) NULL,
  [priznak] [nvarchar](50) NULL,
  CONSTRAINT [PK_dom_type] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [NonClusteredIndex-20171130-125947]
  ON [dbo].[dom_type] ([id])
  INCLUDE ([domtype_full], [domtype_shot], [priznak])
  ON [PRIMARY]
GO
CREATE TABLE [dbo].[Organizations] (
  [id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Organizations_id] DEFAULT (newid()) ROWGUIDCOL,
  [FullName] [nvarchar](500) NOT NULL,
  [INN] [nvarchar](50) NULL,
  [shortName] [nvarchar](500) NULL,
  [OGRN] [nvarchar](50) NULL,
  [global_id] [int] NULL,
  CONSTRAINT [PK_Organizations] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [NonClusteredIndex-20171025-162410]
  ON [dbo].[Organizations] ([id], [FullName], [INN])
  ON [PRIMARY]
GO
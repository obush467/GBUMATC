CREATE TABLE [dbo].[Adress_datamosruAO] (
  [id] [int] IDENTITY NOT FOR REPLICATION,
  [Adress_id] [int] NOT NULL,
  [global_id] [int] NOT NULL,
  [houseguid] [uniqueidentifier] NOT NULL,
  CONSTRAINT [PK_Adress_datamosruAO] PRIMARY KEY NONCLUSTERED ([id])
)
ON [PRIMARY]
GO

CREATE UNIQUE CLUSTERED INDEX [ClusteredIndex-20180301-175849]
  ON [dbo].[Adress_datamosruAO] ([id])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20180301-175914]
  ON [dbo].[Adress_datamosruAO] ([Adress_id])
  INCLUDE ([id], [global_id], [houseguid])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20180301-180042]
  ON [dbo].[Adress_datamosruAO] ([Adress_id])
  INCLUDE ([id], [global_id], [houseguid])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20180301-180059]
  ON [dbo].[Adress_datamosruAO] ([global_id])
  INCLUDE ([id], [Adress_id], [houseguid])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20180301-180114]
  ON [dbo].[Adress_datamosruAO] ([houseguid])
  INCLUDE ([id], [Adress_id], [global_id])
  ON [PRIMARY]
GO
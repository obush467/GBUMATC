CREATE TABLE [dbo].[GU_zamechaniya] (
  [ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_GU_zamechaniya_ID] DEFAULT (newid()) ROWGUIDCOL,
  [GU_ID] [uniqueidentifier] NOT NULL,
  [Sotr_ID] [uniqueidentifier] NULL,
  [zamtext] [nvarchar](4000) NOT NULL,
  [inserted] [datetimeoffset] NOT NULL CONSTRAINT [DF_GU_zamechaniya_inserted] DEFAULT (sysdatetimeoffset()),
  [tsc] [timestamp],
  [reverse] [datetimeoffset] NULL,
  [order] [int] NULL,
  CONSTRAINT [PK_GU_zamechaniya] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20171107-180418]
  ON [dbo].[GU_zamechaniya] ([GU_ID])
  INCLUDE ([ID], [order], [zamtext], [tsc], [reverse])
  ON [PRIMARY]
GO
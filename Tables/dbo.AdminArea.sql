CREATE TABLE [dbo].[AdminArea] (
  [ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_AdminArea_ID] DEFAULT (newid()) ROWGUIDCOL,
  [Parent_ID] [uniqueidentifier] NULL,
  [fullName] [nvarchar](150) NOT NULL,
  [shortName] [nvarchar](50) NOT NULL,
  [OKATO] [nvarchar](50) NULL,
  [global_id] [int] NULL,
  [Kod] [nvarchar](50) NULL,
  [Latin_fullName] [nvarchar](150) NULL,
  [Type] [nvarchar](50) NULL,
  [geoData] [geography] NULL,
  CONSTRAINT [PK_AdminArea] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [_dta_index_AdminArea_5_951882658__K1_4]
  ON [dbo].[AdminArea] ([ID])
  INCLUDE ([shortName])
  ON [PRIMARY]
GO

CREATE INDEX [_dta_index_AdminArea_5_951882658__K9_1_3_4_5_10]
  ON [dbo].[AdminArea] ([Type])
  INCLUDE ([ID], [fullName], [shortName], [OKATO], [geoData])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[AdminArea]
  ADD CONSTRAINT [FK_AdminArea_AdminArea] FOREIGN KEY ([Parent_ID]) REFERENCES [dbo].[AdminArea] ([ID])
GO
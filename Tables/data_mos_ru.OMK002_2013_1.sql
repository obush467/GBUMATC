CREATE TABLE [data_mos_ru].[OMK002_2013_1] (
  [ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_OMK002_2013_1_ID] DEFAULT (newid()) ROWGUIDCOL,
  [global_id] [int] NOT NULL,
  [Kod] [nvarchar](4000) NULL,
  [Name] [nvarchar](4000) NULL,
  [Latin_Name] [nvarchar](4000) NULL,
  [Type] [nvarchar](4000) NULL,
  [Kod_okato] [nvarchar](4000) NULL
)
ON [PRIMARY]
GO
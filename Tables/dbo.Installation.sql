CREATE TABLE [dbo].[Installation] (
  [ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Installation_ID] DEFAULT (newid()) ROWGUIDCOL,
  [tsc] [timestamp],
  [upserted] [datetimeoffset] NOT NULL CONSTRAINT [DF_Installation_upserted] DEFAULT (sysdatetimeoffset()),
  [Persons_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Installation_Persons_ID] DEFAULT ([dbo].[currentUser_ID]()),
  [UNOM] [nvarchar](50) NULL,
  CONSTRAINT [PK_Installation] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[WorkTask_Installation] (
  [ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WorkTask_Installation_ID] DEFAULT (newid()) ROWGUIDCOL,
  [WorkTask_ID] [uniqueidentifier] NOT NULL,
  [Installation_ID] [uniqueidentifier] NOT NULL,
  [upserted] [datetimeoffset] NOT NULL CONSTRAINT [DF_WorkTask_Installation_upserted] DEFAULT (sysdatetimeoffset()),
  [upserter] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WorkTask_Installation_upserter] DEFAULT ([dbo].[currentuser_ID]()),
  [tsc] [timestamp],
  CONSTRAINT [PK_WorkTask_Installation] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[WorkTask] (
  [ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WorkTasks_ID] DEFAULT (newid()) ROWGUIDCOL,
  [tcs] [timestamp],
  [upserted] [datetimeoffset] NOT NULL CONSTRAINT [DF_WorkTask_upserted] DEFAULT (sysdatetimeoffset()),
  [upserter] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WorkTask_upserter] DEFAULT ([dbo].[currentUser_ID]()),
  [Name] [nvarchar](150) NOT NULL,
  CONSTRAINT [PK_WorkTasks] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO
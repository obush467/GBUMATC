CREATE TABLE [dbo].[Program] (
  [ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Programs_ID] DEFAULT (newid()) ROWGUIDCOL,
  [tsc] [timestamp],
  [NextID] [uniqueidentifier] NULL,
  [ParentID] [uniqueidentifier] NULL,
  [Name] [nvarchar](500) NOT NULL,
  [upserted] [datetimeoffset] NOT NULL CONSTRAINT [DF_Programs_upserted] DEFAULT (sysdatetimeoffset()),
  [upserter] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Programs_upserter] DEFAULT ([dbo].[currentUser_ID]()),
  [startdate] [smalldatetime] NULL,
  [enddate] [smalldatetime] NULL,
  CONSTRAINT [PK_Programs] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO
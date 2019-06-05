CREATE TABLE [dbo].[Person] (
  [ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Persons_ID] DEFAULT (newid()) ROWGUIDCOL,
  [tsc] [timestamp],
  [upserted] [datetimeoffset] NOT NULL CONSTRAINT [DF_Persons_upserted] DEFAULT (sysdatetimeoffset()),
  [NextID] [uniqueidentifier] NULL,
  [Name] [nvarchar](150) NOT NULL,
  [Patronymic] [nvarchar](150) NULL,
  [Family] [nvarchar](150) NOT NULL,
  [birthday] [smalldatetime] NULL,
  [startdate] [smalldatetime] NOT NULL CONSTRAINT [DF_Persons_startdate] DEFAULT (getdate()),
  [enddate] [smalldatetime] NULL,
  CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Person]
  ADD CONSTRAINT [FK_Persons_Persons] FOREIGN KEY ([NextID]) REFERENCES [dbo].[Person] ([ID])
GO
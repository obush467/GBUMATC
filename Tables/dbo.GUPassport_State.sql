CREATE TABLE [dbo].[GUPassport_State] (
  [id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_GUPasssport_States_id] DEFAULT (newid()) ROWGUIDCOL,
  [GUPassport_ID] [uniqueidentifier] NOT NULL,
  [State] [nvarchar](50) NOT NULL,
  [startdate] [datetimeoffset] NOT NULL CONSTRAINT [DF_GUPasssport_States_State_Date] DEFAULT (sysdatetimeoffset()),
  [upserted] [datetimeoffset] NOT NULL CONSTRAINT [DF_GUPasssport_States_insertdate] DEFAULT (sysdatetimeoffset()),
  [Sotr_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_GUPasssport_States_Sotr_ID] DEFAULT ([dbo].[currentUser_ID]()),
  [tsc] [timestamp],
  [NextID] [uniqueidentifier] NULL,
  CONSTRAINT [PK_GUPasssport_States] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[GUPassport_State]
  ADD CONSTRAINT [FK_GUPasssport_States_GUPassports] FOREIGN KEY ([GUPassport_ID]) REFERENCES [dbo].[GUPassport] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[GUPassport_State]
  ADD CONSTRAINT [FK_GUPasssport_States_sotr] FOREIGN KEY ([Sotr_ID]) REFERENCES [dbo].[sotr] ([Sotr_ID])
GO
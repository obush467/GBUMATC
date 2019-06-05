CREATE TABLE [dbo].[GUState_zam] (
  [id] [int] IDENTITY NOT FOR REPLICATION,
  [state_id] [uniqueidentifier] NOT NULL,
  [type_id] [int] NOT NULL,
  [ts] [timestamp],
  CONSTRAINT [PK_GUState_zam] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[GUState_zam]
  ADD CONSTRAINT [FK_GUState_zam_GUState] FOREIGN KEY ([state_id]) REFERENCES [dbo].[GUState] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[GUState_zam]
  ADD CONSTRAINT [FK_GUState_zam_GUState_types] FOREIGN KEY ([type_id]) REFERENCES [dbo].[GUState_types] ([id]) ON UPDATE CASCADE
GO
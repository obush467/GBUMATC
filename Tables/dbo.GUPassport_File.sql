CREATE TABLE [dbo].[GUPassport_File] (
  [ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_GUPassport_File_ID] DEFAULT (newid()) ROWGUIDCOL,
  [Passport_ID] [uniqueidentifier] NOT NULL,
  [File_ID] [hierarchyid] NOT NULL,
  [tsc] [timestamp],
  [upserted] [datetimeoffset] NOT NULL CONSTRAINT [DF_GUPassport_File_upserted] DEFAULT (sysdatetimeoffset()),
  [upserter] [uniqueidentifier] NOT NULL CONSTRAINT [DF_GUPassport_File_upserter] DEFAULT ([dbo].[currentUser_ID]()),
  CONSTRAINT [PK_GUPassport_File] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [NonClusteredIndex-20180426-135203]
  ON [dbo].[GUPassport_File] ([ID])
  INCLUDE ([Passport_ID], [File_ID])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[GUPassport_File]
  ADD CONSTRAINT [FK_GUPassport_File_GUPassport] FOREIGN KEY ([Passport_ID]) REFERENCES [dbo].[GUPassport] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[GUPassport_File]
  ADD CONSTRAINT [FK_GUPassport_File_mainFileContainer] FOREIGN KEY ([File_ID]) REFERENCES [dbo].[mainFileContainer] ([path_locator])
GO
CREATE TABLE [dbo].[GUState] (
  [id] [uniqueidentifier] NOT NULL,
  [GU_ID] [uniqueidentifier] NOT NULL,
  [Persons_ID] [uniqueidentifier] NOT NULL,
  [Date] [date] NOT NULL,
  [Availability] [bit] NOT NULL,
  [DocumentName] [nvarchar](500) NULL,
  [ProgramName] [uniqueidentifier] NULL,
  [ts] [timestamp],
  [vneseno_IP] [varchar](50) NOT NULL CONSTRAINT [DF_GUState_vneseno_IP] DEFAULT (CONVERT([char](15),connectionproperty('client_net_address'),(0))),
  [vneseno_Host_Name] [nvarchar](50) NOT NULL CONSTRAINT [DF_GUState_vneseno_Host_name] DEFAULT (host_name()),
  [vneseno_user] [nvarchar](50) NOT NULL CONSTRAINT [DF_GUState_vneseno_user] DEFAULT (suser_sname()),
  [vneseno] [datetimeoffset] NOT NULL CONSTRAINT [DF_GUState_vneseno] DEFAULT (getutcdate()),
  CONSTRAINT [PK_GUState] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[GUState]
  ADD CONSTRAINT [FK_GUState_GUState] FOREIGN KEY ([id]) REFERENCES [dbo].[GUState] ([id])
GO

ALTER TABLE [dbo].[GUState]
  ADD CONSTRAINT [FK_GUState_GUState1] FOREIGN KEY ([id]) REFERENCES [dbo].[GUState] ([id])
GO
CREATE TABLE [dbo].[GUPassport] (
  [id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_GUPassport_id] DEFAULT (newid()) ROWGUIDCOL,
  [tsc] [timestamp],
  [Installation_ID] [uniqueidentifier] NOT NULL,
  [Sotr_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_GUPassports_Sotr_ID] DEFAULT ([dbo].[currentUser_ID]()),
  [HouseID] [uniqueidentifier] NULL,
  [AdminArea_ID] [uniqueidentifier] NOT NULL,
  [Ground_Type_ID] [uniqueidentifier] NOT NULL,
  [Program_ID] [uniqueidentifier] NULL,
  [nextID] [uniqueidentifier] NULL,
  [startdate] [date] NOT NULL CONSTRAINT [DF_GUPassport_startdate] DEFAULT (getdate()),
  [enddate] [date] NULL,
  [upserted] [datetimeoffset] NOT NULL CONSTRAINT [DF_GUPassport_insertdate] DEFAULT (sysdatetimeoffset()),
  [UNOM] [nvarchar](50) NOT NULL,
  [WGS84] [geography] NULL,
  [EGKO] [geometry] NULL,
  [Visibility] [nvarchar](50) NULL,
  [Sidewalk_width] [nvarchar](50) NULL,
  [Condition] [nvarchar](50) NULL,
  [Patency] [nvarchar](50) NULL,
  [Reconstruction] [nvarchar](50) NULL,
  [Closed_loop] [nvarchar](50) NULL,
  [Electricity_connection] [nvarchar](50) NULL,
  [Foto] [varbinary](max) NULL,
  [Plan] [varbinary](max) NULL,
  CONSTRAINT [PK_GUPassport] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[GUPassport]
  ADD CONSTRAINT [FK_GUPassports_AdminArea] FOREIGN KEY ([AdminArea_ID]) REFERENCES [dbo].[AdminArea] ([ID])
GO

ALTER TABLE [dbo].[GUPassport]
  ADD CONSTRAINT [FK_GUPassports_Ground_Types] FOREIGN KEY ([Ground_Type_ID]) REFERENCES [dbo].[Ground_Types] ([id]) ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[GUPassport]
  ADD CONSTRAINT [FK_GUPassports_House] FOREIGN KEY ([HouseID]) REFERENCES [fias].[House] ([HOUSEID])
GO

ALTER TABLE [dbo].[GUPassport]
  ADD CONSTRAINT [FK_GUPassports_Installation] FOREIGN KEY ([Installation_ID]) REFERENCES [dbo].[Installation] ([ID])
GO

ALTER TABLE [dbo].[GUPassport]
  ADD CONSTRAINT [FK_GUPassports_sotr] FOREIGN KEY ([Sotr_ID]) REFERENCES [dbo].[sotr] ([Sotr_ID])
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Проходимость', 'SCHEMA', N'dbo', 'TABLE', N'GUPassport', 'COLUMN', N'Patency'
GO
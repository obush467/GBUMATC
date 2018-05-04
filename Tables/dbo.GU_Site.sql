CREATE TABLE [dbo].[GU_Site] (
  [id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_GU_Sites_id] DEFAULT (newid()) ROWGUIDCOL,
  [tsc] [timestamp],
  [upserted] [datetimeoffset] NOT NULL CONSTRAINT [DF_GU_Sites_updated] DEFAULT (sysdatetimeoffset()),
  [GU_ID] [uniqueidentifier] NOT NULL,
  [Object_ID] [uniqueidentifier] NULL,
  [HouseID] [uniqueidentifier] NULL,
  [Sotr_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_GU_Sites_updater] DEFAULT ([dbo].[currentUser_ID]()),
  [Program_ID] [uniqueidentifier] NULL,
  [Block_Number] [smallint] NOT NULL,
  [Row_Number] [smallint] NULL,
  [Site_Number] [nvarchar](1) NOT NULL,
  [Content_Text] [nvarchar](500) NOT NULL,
  [Content_Transliteration] [nvarchar](500) NULL,
  [Content_Address] [nvarchar](500) NULL,
  [Content_Direction] [nvarchar](20) NULL,
  [Minutes] [smallint] NULL,
  CONSTRAINT [PK_GU_Sites] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[GU_Site]
  ADD CONSTRAINT [FK_GU_Sites_House] FOREIGN KEY ([HouseID]) REFERENCES [fias].[House] ([HOUSEID])
GO
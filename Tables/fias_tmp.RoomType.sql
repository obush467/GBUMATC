CREATE TABLE [fias_tmp].[RoomType] (
  [RMTYPEID] [bigint] NOT NULL,
  [NAME] [varchar](8000) NOT NULL,
  [SHORTNAME] [varchar](8000) NOT NULL,
  CONSTRAINT [PK_RoomType] PRIMARY KEY CLUSTERED ([RMTYPEID])
)
ON [PRIMARY]
GO
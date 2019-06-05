CREATE TABLE [fias].[Room] (
  [ROOMGUID] [varchar](50) NULL,
  [FLATNUMBER] [varchar](50) NOT NULL,
  [FLATTYPE] [int] NOT NULL,
  [ROOMNUMBER] [varchar](50) NULL,
  [ROOMTYPE] [int] NULL,
  [REGIONCODE] [varchar](2) NULL,
  [POSTALCODE] [varchar](6) NULL,
  [UPDATEDATE] [smalldatetime] NOT NULL,
  [HOUSEGUID] [varchar](50) NULL,
  [ROOMID] [varchar](50) NOT NULL,
  [PREVID] [varchar](50) NULL,
  [NEXTID] [varchar](50) NULL,
  [STARTDATE] [smalldatetime] NOT NULL,
  [ENDDATE] [smalldatetime] NOT NULL,
  [LIVESTATUS] [bit] NOT NULL,
  [NORMDOC] [varchar](50) NULL,
  [OPERSTATUS] [bigint] NOT NULL,
  [CADNUM] [varchar](100) NULL,
  [ROOMCADNUM] [varchar](100) NULL,
  CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED ([ROOMID])
)
ON [PRIMARY]
GO
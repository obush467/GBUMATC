CREATE TABLE [fias_tmp].[Room] (
  [ROOMGUID] [varchar](50) NULL,
  [FLATNUMBER] [varchar](50) NOT NULL,
  [FLATTYPE] [int] NOT NULL,
  [ROOMNUMBER] [varchar](50) NULL,
  [ROOMTYPE] [int] NULL,
  [REGIONCODE] [varchar](2) NULL,
  [POSTALCODE] [varchar](6) NULL,
  [UPDATEDATE] [datetime] NOT NULL,
  [HOUSEGUID] [varchar](50) NULL,
  [ROOMID] [varchar](50) NOT NULL,
  [PREVID] [varchar](50) NULL,
  [NEXTID] [varchar](50) NULL,
  [STARTDATE] [datetime] NOT NULL,
  [ENDDATE] [datetime] NOT NULL,
  [LIVESTATUS] [bit] NOT NULL,
  [NORMDOC] [varchar](50) NULL,
  [OPERSTATUS] [bigint] NOT NULL,
  [CADNUM] [varchar](100) NULL,
  [ROOMCADNUM] [varchar](100) NULL,
  CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED ([ROOMID])
)
ON [PRIMARY]
GO
CREATE TABLE [fias].[Stead] (
  [STEADGUID] [uniqueidentifier] NULL,
  [NUMBER] [varchar](120) NULL,
  [REGIONCODE] [varchar](2) NULL,
  [POSTALCODE] [varchar](6) NULL,
  [IFNSFL] [varchar](4) NULL,
  [TERRIFNSFL] [varchar](4) NULL,
  [IFNSUL] [varchar](4) NULL,
  [TERRIFNSUL] [varchar](4) NULL,
  [OKATO] [varchar](11) NULL,
  [OKTMO] [varchar](11) NULL,
  [UPDATEDATE] [smalldatetime] NOT NULL,
  [PARENTGUID] [uniqueidentifier] NULL,
  [STEADID] [uniqueidentifier] NOT NULL,
  [PREVID] [uniqueidentifier] NULL,
  [NEXTID] [uniqueidentifier] NULL,
  [OPERSTATUS] [bigint] NOT NULL,
  [STARTDATE] [smalldatetime] NOT NULL,
  [ENDDATE] [smalldatetime] NOT NULL,
  [NORMDOC] [uniqueidentifier] NULL,
  [LIVESTATUS] [int] NOT NULL,
  [CADNUM] [varchar](100) NULL,
  [DIVTYPE] [int] NOT NULL,
  [COUNTER] [int] NULL,
  CONSTRAINT [PK_Stead] PRIMARY KEY CLUSTERED ([STEADID])
)
ON [PRIMARY]
GO
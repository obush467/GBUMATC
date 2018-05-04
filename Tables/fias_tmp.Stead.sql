CREATE TABLE [fias_tmp].[Stead] (
  [STEADGUID] [varchar](50) NULL,
  [NUMBER] [varchar](120) NULL,
  [REGIONCODE] [varchar](2) NULL,
  [POSTALCODE] [varchar](6) NULL,
  [IFNSFL] [varchar](4) NULL,
  [TERRIFNSFL] [varchar](4) NULL,
  [IFNSUL] [varchar](4) NULL,
  [TERRIFNSUL] [varchar](4) NULL,
  [OKATO] [varchar](11) NULL,
  [OKTMO] [varchar](11) NULL,
  [UPDATEDATE] [datetime] NOT NULL,
  [PARENTGUID] [varchar](50) NULL,
  [STEADID] [varchar](50) NOT NULL,
  [PREVID] [varchar](50) NULL,
  [NEXTID] [varchar](50) NULL,
  [OPERSTATUS] [bigint] NOT NULL,
  [STARTDATE] [datetime] NOT NULL,
  [ENDDATE] [datetime] NOT NULL,
  [NORMDOC] [varchar](50) NULL,
  [LIVESTATUS] [int] NOT NULL,
  [CADNUM] [varchar](100) NULL,
  [DIVTYPE] [int] NOT NULL,
  [COUNTER] [int] NULL,
  CONSTRAINT [PK_Stead] PRIMARY KEY CLUSTERED ([STEADID])
)
ON [PRIMARY]
GO
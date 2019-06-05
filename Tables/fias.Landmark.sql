CREATE TABLE [fias].[Landmark] (
  [LOCATION] [varchar](1000) NULL,
  [REGIONCODE] [varchar](2) NULL,
  [POSTALCODE] [varchar](6) NULL,
  [IFNSFL] [varchar](4) NULL,
  [TERRIFNSFL] [varchar](4) NULL,
  [IFNSUL] [varchar](4) NULL,
  [TERRIFNSUL] [varchar](4) NULL,
  [OKATO] [varchar](11) NULL,
  [OKTMO] [varchar](11) NULL,
  [UPDATEDATE] [smalldatetime] NOT NULL,
  [LANDID] [varchar](50) NOT NULL,
  [LANDGUID] [varchar](50) NULL,
  [AOGUID] [uniqueidentifier] NULL,
  [STARTDATE] [smalldatetime] NOT NULL,
  [ENDDATE] [smalldatetime] NOT NULL,
  [NORMDOC] [uniqueidentifier] NULL,
  [CADNUM] [varchar](1000) NULL,
  CONSTRAINT [PK_Landmark] PRIMARY KEY CLUSTERED ([LANDID])
)
ON [PRIMARY]
GO
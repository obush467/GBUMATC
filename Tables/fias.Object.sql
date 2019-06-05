CREATE TABLE [fias].[Object] (
  [AOGUID] [uniqueidentifier] NULL,
  [FORMALNAME] [nvarchar](120) NULL,
  [REGIONCODE] [nvarchar](2) NULL,
  [AUTOCODE] [nvarchar](1) NULL,
  [AREACODE] [nvarchar](3) NULL,
  [CITYCODE] [nvarchar](3) NULL,
  [CTARCODE] [nvarchar](3) NULL,
  [PLACECODE] [nvarchar](3) NULL,
  [STREETCODE] [nvarchar](4) NULL,
  [EXTRCODE] [nvarchar](4) NULL,
  [SEXTCODE] [nvarchar](3) NULL,
  [OFFNAME] [nvarchar](120) NULL,
  [POSTALCODE] [nvarchar](6) NULL,
  [IFNSFL] [nvarchar](4) NULL,
  [TERRIFNSFL] [nvarchar](4) NULL,
  [IFNSUL] [nvarchar](4) NULL,
  [TERRIFNSUL] [nvarchar](4) NULL,
  [OKATO] [nvarchar](11) NULL,
  [OKTMO] [nvarchar](11) NULL,
  [UPDATEDATE] [datetime2](3) NULL,
  [SHORTNAME] [nvarchar](10) NULL,
  [AOLEVEL] [int] NOT NULL CONSTRAINT [DF_Object_AOLEVEL] DEFAULT (100000000),
  [PARENTGUID] [uniqueidentifier] NULL,
  [AOID] [uniqueidentifier] NOT NULL,
  [PREVID] [uniqueidentifier] NULL,
  [NEXTID] [uniqueidentifier] NULL,
  [CODE] [nvarchar](17) NULL,
  [PLAINCODE] [nvarchar](15) NULL,
  [ACTSTATUS] [int] NULL,
  [CENTSTATUS] [int] NULL,
  [OPERSTATUS] [int] NULL,
  [CURRSTATUS] [int] NULL,
  [STARTDATE] [datetime2](3) NULL,
  [ENDDATE] [datetime2](3) NULL,
  [NORMDOC] [uniqueidentifier] NULL,
  [LIVESTATUS] [nvarchar](1) NULL,
  [CADNUM] [nvarchar](100) NULL,
  [DIVTYPE] [int] NULL,
  [OFFNAME_NUM_TYPE] [int] NULL,
  [OFFNAME_NUM_NUMBER] [int] NULL,
  [OFFNAME_NUM_PREFIX] [int] NULL,
  [OFFNAME_NUMBER] [varchar](20) NULL,
  [OFFNAME_PREFIX] [varchar](20) NULL,
  [OFFNAME_NAME] [varchar](80) NULL,
  [CONVERTSTREET] [nvarchar](500) NULL,
  [OFFNAME_NUM_NAME] [int] NULL,
  [PLANCODE] [nvarchar](15) NULL,
  CONSTRAINT [PK_Key] PRIMARY KEY CLUSTERED ([AOID])
)
ON [PRIMARY]
GO

CREATE INDEX [_dta_index_Object_5_1858873739__K25_K24_K26_K12]
  ON [fias].[Object] ([PREVID], [AOID], [NEXTID], [OFFNAME])
  ON [PRIMARY]
GO

CREATE INDEX [_dta_index_Object_5_575549334__K23_K24_K25_K26_K1]
  ON [fias].[Object] ([PARENTGUID], [AOID], [PREVID], [NEXTID], [AOGUID])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20171208-103405]
  ON [fias].[Object] ([AOGUID], [FORMALNAME], [REGIONCODE], [OFFNAME], [AOLEVEL], [PARENTGUID], [AOID], [PREVID], [NEXTID], [ACTSTATUS], [STARTDATE], [ENDDATE], [LIVESTATUS])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20180124-212553]
  ON [fias].[Object] ([AOGUID])
  INCLUDE ([FORMALNAME], [REGIONCODE], [AUTOCODE], [AREACODE], [CITYCODE], [EXTRCODE], [SEXTCODE], [OFFNAME], [IFNSUL], [TERRIFNSUL], [OKATO], [CTARCODE], [PLACECODE], [STREETCODE], [AOLEVEL], [PARENTGUID], [AOID], [POSTALCODE], [IFNSFL], [TERRIFNSFL], [PLAINCODE], [ACTSTATUS], [CENTSTATUS], [OKTMO], [UPDATEDATE], [SHORTNAME], [ENDDATE], [NORMDOC], [LIVESTATUS], [PREVID], [NEXTID], [CODE], [OFFNAME_NUM_NUMBER], [OFFNAME_NUM_PREFIX], [OFFNAME_NUMBER], [OPERSTATUS], [CURRSTATUS], [STARTDATE], [OFFNAME_PREFIX], [OFFNAME_NAME], [CONVERTSTREET], [CADNUM], [DIVTYPE], [OFFNAME_NUM_TYPE])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20180412-100403]
  ON [fias].[Object] ([PARENTGUID])
  INCLUDE ([AOGUID], [FORMALNAME], [SHORTNAME], [AOLEVEL], [AOID], [PREVID], [NEXTID], [ACTSTATUS], [STARTDATE], [ENDDATE])
  ON [PRIMARY]
GO

CREATE STATISTICS [_dta_stat_575549334_24_25_26_1]
  ON [fias].[Object] ([AOID], [PREVID], [NEXTID], [AOGUID])
GO
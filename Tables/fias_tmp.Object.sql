﻿CREATE TABLE [fias_tmp].[Object] (
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
  [UPDATEDATE] [datetime] NULL,
  [SHORTNAME] [nvarchar](10) NULL,
  [AOLEVEL] [int] NULL,
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
  [STARTDATE] [datetime] NULL,
  [ENDDATE] [datetime] NULL,
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
  [CONVERTSTREET] [nvarchar](50) NULL,
  [PLANCODE] [nvarchar](50) NULL,
  CONSTRAINT [PK_Object] PRIMARY KEY CLUSTERED ([AOID])
)
ON [PRIMARY]
GO

CREATE INDEX [_dta_index_Object_5_1287219886__K23_K24_K25_K26_K1]
  ON [fias_tmp].[Object] ([PARENTGUID], [AOID], [PREVID], [NEXTID], [AOGUID])
  ON [PRIMARY]
GO

CREATE INDEX [_dta_index_Object_5_1287219886__K23_K3_K24_K25_K26_K1]
  ON [fias_tmp].[Object] ([PARENTGUID], [REGIONCODE], [AOID], [PREVID], [NEXTID], [AOGUID])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [NonClusteredIndex-20180425-093615]
  ON [fias_tmp].[Object] ([AOID])
  INCLUDE ([AOGUID], [FORMALNAME], [REGIONCODE], [AUTOCODE], [AREACODE], [CITYCODE], [CTARCODE], [PLACECODE], [STREETCODE], [EXTRCODE], [SEXTCODE], [OFFNAME], [POSTALCODE], [IFNSFL], [TERRIFNSFL], [IFNSUL], [TERRIFNSUL], [OKATO], [OKTMO], [UPDATEDATE], [SHORTNAME], [AOLEVEL], [PARENTGUID], [PREVID], [NEXTID], [CODE], [PLAINCODE], [ACTSTATUS], [CENTSTATUS], [OPERSTATUS], [CURRSTATUS], [STARTDATE], [ENDDATE], [NORMDOC], [LIVESTATUS], [CADNUM], [DIVTYPE], [OFFNAME_NUM_TYPE], [OFFNAME_NUM_NUMBER], [OFFNAME_NUM_PREFIX], [OFFNAME_NUMBER], [OFFNAME_PREFIX], [OFFNAME_NAME], [CONVERTSTREET], [PLANCODE])
  ON [PRIMARY]
GO

CREATE STATISTICS [_dta_stat_1287219886_24_23_25_26_1_3]
  ON [fias_tmp].[Object] ([AOID], [PARENTGUID], [PREVID], [NEXTID], [AOGUID], [REGIONCODE])
GO

CREATE STATISTICS [_dta_stat_1287219886_24_25_26_1]
  ON [fias_tmp].[Object] ([AOID], [PREVID], [NEXTID], [AOGUID])
GO

CREATE STATISTICS [_dta_stat_1287219886_3_24_23_25_26]
  ON [fias_tmp].[Object] ([REGIONCODE], [AOID], [PARENTGUID], [PREVID], [NEXTID])
GO
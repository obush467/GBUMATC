﻿CREATE TABLE [fias].[House] (
  [POSTALCODE] [varchar](6) NULL,
  [IFNSFL] [varchar](4) NULL,
  [TERRIFNSFL] [varchar](4) NULL,
  [IFNSUL] [varchar](4) NULL,
  [TERRIFNSUL] [varchar](4) NULL,
  [OKATO] [varchar](11) NULL,
  [OKTMO] [varchar](11) NULL,
  [UPDATEDATE] [smalldatetime] NULL,
  [HOUSENUM] [varchar](20) NULL,
  [ESTSTATUS] [int] NOT NULL,
  [BUILDNUM] [varchar](10) NULL,
  [STRUCNUM] [varchar](10) NULL,
  [STRSTATUS] [int] NULL,
  [HOUSEID] [uniqueidentifier] NOT NULL,
  [HOUSEGUID] [uniqueidentifier] NOT NULL,
  [AOGUID] [uniqueidentifier] NULL,
  [STARTDATE] [smalldatetime] NOT NULL,
  [ENDDATE] [smalldatetime] NOT NULL,
  [STATSTATUS] [int] NULL,
  [NORMDOC] [uniqueidentifier] NULL,
  [COUNTER] [int] NULL,
  [CADNUM] [varchar](100) NULL,
  [DIVTYPE] [int] NULL,
  CONSTRAINT [PK_House] PRIMARY KEY CLUSTERED ([HOUSEID])
)
ON [PRIMARY]
GO

CREATE INDEX [4455]
  ON [fias].[House] ([HOUSEGUID], [STARTDATE], [ENDDATE])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20171208-143359]
  ON [fias].[House] ([HOUSEID], [HOUSEGUID], [AOGUID], [STARTDATE], [ENDDATE])
  INCLUDE ([POSTALCODE], [STATSTATUS], [NORMDOC], [COUNTER], [CADNUM], [DIVTYPE], [UPDATEDATE], [HOUSENUM], [ESTSTATUS], [BUILDNUM], [STRUCNUM], [STRSTATUS], [IFNSFL], [TERRIFNSFL], [IFNSUL], [TERRIFNSUL], [OKATO], [OKTMO])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20171208-143750]
  ON [fias].[House] ([AOGUID], [POSTALCODE], [HOUSENUM], [ESTSTATUS], [BUILDNUM], [STRUCNUM], [STRSTATUS], [HOUSEID], [HOUSEGUID], [STARTDATE], [ENDDATE], [STATSTATUS], [COUNTER])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20180124-212750]
  ON [fias].[House] ([AOGUID])
  INCLUDE ([POSTALCODE], [IFNSFL], [TERRIFNSFL], [IFNSUL], [TERRIFNSUL], [OKATO], [OKTMO], [UPDATEDATE], [HOUSENUM], [ESTSTATUS], [BUILDNUM], [STRUCNUM], [STRSTATUS], [HOUSEID], [HOUSEGUID], [STARTDATE], [ENDDATE], [STATSTATUS], [NORMDOC], [COUNTER], [CADNUM], [DIVTYPE])
  ON [PRIMARY]
GO

ALTER TABLE [fias].[House]
  ADD CONSTRAINT [FK_House_EstateStatus] FOREIGN KEY ([ESTSTATUS]) REFERENCES [fias].[EstateStatus] ([ESTSTATID])
GO

ALTER TABLE [fias].[House]
  ADD CONSTRAINT [FK_House_HouseStateStatus] FOREIGN KEY ([STATSTATUS]) REFERENCES [fias].[HouseStateStatus] ([HOUSESTID])
GO

ALTER TABLE [fias].[House]
  ADD CONSTRAINT [FK_House_StructureStatus] FOREIGN KEY ([STRSTATUS]) REFERENCES [fias].[StructureStatus] ([STRSTATID])
GO
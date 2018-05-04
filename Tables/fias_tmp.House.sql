CREATE TABLE [fias_tmp].[House] (
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

CREATE INDEX [NonClusteredIndex-20180424-181904]
  ON [fias_tmp].[House] ([HOUSEID], [HOUSEGUID], [AOGUID])
  ON [PRIMARY]
GO

ALTER TABLE [fias_tmp].[House] WITH NOCHECK
  ADD CONSTRAINT [FK_House_EstateStatus] FOREIGN KEY ([ESTSTATUS]) REFERENCES [fias_tmp].[EstateStatus] ([ESTSTATID])
GO

ALTER TABLE [fias_tmp].[House] WITH NOCHECK
  ADD CONSTRAINT [FK_House_HouseStateStatus] FOREIGN KEY ([STATSTATUS]) REFERENCES [fias_tmp].[HouseStateStatus] ([HOUSESTID])
GO

ALTER TABLE [fias_tmp].[House] WITH NOCHECK
  ADD CONSTRAINT [FK_House_StructureStatus] FOREIGN KEY ([STRSTATUS]) REFERENCES [fias_tmp].[StructureStatus] ([STRSTATID])
GO
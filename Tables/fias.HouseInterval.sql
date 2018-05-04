CREATE TABLE [fias].[HouseInterval] (
  [POSTALCODE] [varchar](6) NULL,
  [IFNSFL] [varchar](4) NULL,
  [TERRIFNSFL] [varchar](4) NULL,
  [IFNSUL] [varchar](4) NULL,
  [TERRIFNSUL] [varchar](4) NULL,
  [OKATO] [varchar](11) NULL,
  [OKTMO] [varchar](11) NULL,
  [UPDATEDATE] [smalldatetime] NOT NULL,
  [INTSTART] [int] NOT NULL,
  [INTEND] [int] NOT NULL,
  [HOUSEINTID] [uniqueidentifier] NOT NULL,
  [INTGUID] [uniqueidentifier] NULL,
  [AOGUID] [uniqueidentifier] NULL,
  [STARTDATE] [smalldatetime] NOT NULL,
  [ENDDATE] [smalldatetime] NOT NULL,
  [INTSTATUS] [int] NULL,
  [NORMDOC] [uniqueidentifier] NULL,
  [COUNTER] [int] NOT NULL,
  CONSTRAINT [PK_HouseInterval] PRIMARY KEY CLUSTERED ([HOUSEINTID])
)
ON [PRIMARY]
GO

ALTER TABLE [fias].[HouseInterval]
  ADD CONSTRAINT [FK_HouseInterval_IntervalStatus] FOREIGN KEY ([INTSTATUS]) REFERENCES [fias].[IntervalStatus] ([INTVSTATID])
GO
CREATE TABLE [fias_tmp].[HouseInterval] (
  [POSTALCODE] [varchar](6) NULL,
  [IFNSFL] [varchar](4) NULL,
  [TERRIFNSFL] [varchar](4) NULL,
  [IFNSUL] [varchar](4) NULL,
  [TERRIFNSUL] [varchar](4) NULL,
  [OKATO] [varchar](11) NULL,
  [OKTMO] [varchar](11) NULL,
  [UPDATEDATE] [datetime] NOT NULL,
  [INTSTART] [int] NOT NULL,
  [INTEND] [int] NOT NULL,
  [HOUSEINTID] [uniqueidentifier] NOT NULL,
  [INTGUID] [uniqueidentifier] NULL,
  [AOGUID] [uniqueidentifier] NULL,
  [STARTDATE] [datetime] NOT NULL,
  [ENDDATE] [datetime] NOT NULL,
  [INTSTATUS] [int] NULL,
  [NORMDOC] [uniqueidentifier] NULL,
  [COUNTER] [int] NOT NULL,
  CONSTRAINT [PK_HouseInterval] PRIMARY KEY CLUSTERED ([HOUSEINTID])
)
ON [PRIMARY]
GO
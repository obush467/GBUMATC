CREATE TABLE [fias].[AddressObjectType] (
  [LEVEL] [int] NOT NULL,
  [SCNAME] [nvarchar](10) NULL,
  [SOCRNAME] [nvarchar](50) NULL,
  [KOD_T_ST] [varchar](4) NOT NULL,
  CONSTRAINT [PK_AddressObjectType_2] PRIMARY KEY CLUSTERED ([LEVEL], [KOD_T_ST])
)
ON [PRIMARY]
GO
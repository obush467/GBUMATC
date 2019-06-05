CREATE TABLE [data_mos_ru].[AO] (
  [id] [int] IDENTITY NOT FOR REPLICATION,
  [global_id] [int] NOT NULL,
  [AdmArea] [nvarchar](4000) NULL,
  [system_object_id] [nvarchar](4000) NULL,
  [UNOM] [int] NULL,
  [KAD_RN] [int] NULL,
  [KAD_KV] [int] NULL,
  [KAD_ZU] [int] NULL,
  [DMT] [nvarchar](4000) NULL,
  [KRT] [nvarchar](4000) NULL,
  [VLD] [nvarchar](4000) NULL,
  [STRT] [nvarchar](4000) NULL,
  [SOOR] [nvarchar](4000) NULL,
  [TDOC] [nvarchar](4000) NULL,
  [NDOC] [nvarchar](4000) NULL,
  [DDOC] [datetime] NULL,
  [NREG] [int] NULL,
  [DREG] [datetime] NULL,
  [VYVAD] [nvarchar](4000) NULL,
  [ADRES] [nvarchar](4000) NULL,
  [geoData] [geography] NULL,
  CONSTRAINT [PK_data_mos_ru.AO] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20180227-194719]
  ON [data_mos_ru].[AO] ([id], [global_id], [ADRES])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20180301-180720]
  ON [data_mos_ru].[AO] ([global_id])
  INCLUDE ([id], [AdmArea], [system_object_id], [UNOM], [KAD_RN], [KAD_KV], [KAD_ZU], [DMT], [KRT], [VLD], [STRT], [SOOR], [TDOC], [NDOC], [DDOC], [NREG], [DREG], [VYVAD], [ADRES], [geoData])
  ON [PRIMARY]
GO
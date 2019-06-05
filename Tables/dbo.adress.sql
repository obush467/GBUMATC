CREATE TABLE [dbo].[adress] (
  [id] [int] IDENTITY NOT FOR REPLICATION,
  [#] [int] NULL,
  [nazvanie_ulitsi] [nvarchar](255) NULL,
  [ulitsa_id] [int] NULL,
  [ulitsa_unid] [uniqueidentifier] NULL,
  [polniy_adres] [nvarchar](255) NULL,
  [dom] [nvarchar](255) NULL,
  [dom_type] [int] NULL,
  [korpus] [nvarchar](255) NULL,
  [stroenie] [nvarchar](255) NULL,
  [stroenie_type] [int] NULL,
  [ulitsa_only] [nvarchar](255) NULL,
  [type_full] [nvarchar](255) NULL,
  [ulitsa_num] [nvarchar](255) NULL,
  [propis] [nvarchar](255) NULL,
  [ulitsa_sokr] [nvarchar](255) NULL,
  [kod_adresa] [nvarchar](255) NULL,
  [bti_for_find] [nvarchar](255) NULL,
  [bti_adres] [nvarchar](255) NULL,
  [bti_naznachenie] [nvarchar](255) NULL,
  [bti_god_postroyki] [nvarchar](50) NULL,
  [bti_etaji] [nvarchar](50) NULL,
  [bti_alt_adres] [nvarchar](2000) NULL,
  [adres_bti_proverka] [nvarchar](255) NULL,
  [vneseno] [datetimeoffset] NULL CONSTRAINT [DF_adress_vneseno] DEFAULT (getutcdate()),
  [ts] [timestamp],
  [Prim] [nvarchar](4000) NULL,
  [AdminArea_ID] [uniqueidentifier] NULL,
  [nas_punkt_id] [uniqueidentifier] NULL,
  [House_ID] [uniqueidentifier] NULL,
  [okrug_id] [uniqueidentifier] NULL,
  [dom_verified] [bit] NULL,
  CONSTRAINT [PK_adress] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO

CREATE INDEX [_dta_index_adress_5_1884741967__K1_8_11_12_13_14_15_16_23_24_25_26_27_28_29_33_36]
  ON [dbo].[adress] ([id])
  INCLUDE ([nazvanie_ulitsi], [polniy_adres], [dom], [dom_type], [korpus], [stroenie], [stroenie_type], [bti_for_find], [bti_adres], [bti_naznachenie], [bti_god_postroyki], [bti_etaji], [bti_alt_adres], [adres_bti_proverka], [AdminArea_ID], [okrug_id])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20180227-170620]
  ON [dbo].[adress] ([okrug_id])
  INCLUDE ([id], [#], [nazvanie_ulitsi], [ulitsa_id], [ulitsa_unid], [polniy_adres], [dom], [dom_type], [korpus], [stroenie], [stroenie_type], [ulitsa_only], [type_full], [ulitsa_num], [propis], [ulitsa_sokr], [kod_adresa], [bti_for_find], [bti_adres], [bti_naznachenie], [bti_god_postroyki], [bti_etaji], [bti_alt_adres], [adres_bti_proverka], [vneseno], [ts], [Prim], [AdminArea_ID], [nas_punkt_id], [House_ID])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20180227-170708]
  ON [dbo].[adress] ([House_ID])
  INCLUDE ([id], [#], [nazvanie_ulitsi], [ulitsa_id], [ulitsa_unid], [polniy_adres], [dom], [dom_type], [korpus], [stroenie], [stroenie_type], [ulitsa_only], [type_full], [ulitsa_num], [propis], [ulitsa_sokr], [kod_adresa], [bti_for_find], [bti_adres], [bti_naznachenie], [bti_god_postroyki], [bti_etaji], [bti_alt_adres], [adres_bti_proverka], [vneseno], [ts], [Prim], [AdminArea_ID], [nas_punkt_id], [okrug_id])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20180227-170736]
  ON [dbo].[adress] ([nas_punkt_id])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20180227-170801]
  ON [dbo].[adress] ([AdminArea_ID])
  INCLUDE ([id], [#], [nazvanie_ulitsi], [ulitsa_id], [ulitsa_unid], [polniy_adres], [dom], [dom_type], [korpus], [stroenie], [stroenie_type], [ulitsa_only], [type_full], [ulitsa_num], [propis], [ulitsa_sokr], [kod_adresa], [bti_for_find], [bti_adres], [bti_naznachenie], [bti_god_postroyki], [bti_etaji], [bti_alt_adres], [adres_bti_proverka], [vneseno], [ts], [Prim], [nas_punkt_id], [House_ID], [okrug_id])
  ON [PRIMARY]
GO

CREATE STATISTICS [_dta_stat_1884741967_16_13_36]
  ON [dbo].[adress] ([stroenie_type], [dom_type], [okrug_id])
GO

CREATE STATISTICS [_dta_stat_1884741967_36_1_16_13]
  ON [dbo].[adress] ([okrug_id], [id], [stroenie_type], [dom_type])
GO

CREATE STATISTICS [_dta_stat_1884741967_36_16]
  ON [dbo].[adress] ([okrug_id], [stroenie_type])
GO

CREATE STATISTICS [_dta_stat_1884741967_36_33_16_13_1]
  ON [dbo].[adress] ([okrug_id], [AdminArea_ID], [stroenie_type], [dom_type], [id])
GO

CREATE FULLTEXT INDEX
  ON [dbo].[adress]([nazvanie_ulitsi] LANGUAGE 1049, [polniy_adres] LANGUAGE 1049, [ulitsa_only] LANGUAGE 1049, [propis] LANGUAGE 1049, [ulitsa_sokr] LANGUAGE 1049, [bti_for_find] LANGUAGE 1049)
  KEY INDEX [PK_adress]
  ON [1]
  WITH CHANGE_TRACKING AUTO, STOPLIST SYSTEM
GO
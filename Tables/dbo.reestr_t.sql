CREATE TABLE [dbo].[reestr_t] (
  [kod] [int] IDENTITY NOT FOR REPLICATION,
  [num] [int] NULL,
  [project] [varchar](50) NULL,
  [Program_ID] [uniqueidentifier] NULL,
  [kategoriya] [varchar](50) NULL,
  [unikalniy] [varchar](50) NULL,
  [razmerdu] [varchar](50) NULL,
  [ploshaddu] [varchar](50) NULL,
  [ulitsadu] [varchar](50) NULL,
  [domdu_ilion] [varchar](50) NULL,
  [domdu] [varchar](50) NULL,
  [montaj] [date] NULL,
  [montaj_plan] [date] NULL,
  [podradchik_id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_reestr_t_podradchik_id] DEFAULT ('C6B4A59A-49FB-425A-99E8-9252674F5924'),
  [subpodradchik_id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_reestr_t_subpodradchik_id] DEFAULT ('CCE60512-09F7-4E8B-B75A-FEC18CE2DAE4'),
  [date1] [date] NULL,
  [pic1] [varchar](50) NULL,
  [checkpic1] [nchar](10) NULL,
  [pic2] [varchar](50) NULL,
  [pic3] [varchar](50) NULL,
  [checkpic3] [varchar](10) NULL,
  [egko_map_txt] [varchar](50) NULL,
  [proverka_karti] [varchar](50) NULL,
  [fio] [varchar](50) NULL,
  [doljnost] [varchar](50) NULL,
  [organization_id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_reestr_t_organization_id] DEFAULT ('4A60A83D-FFD2-4A0F-8762-7CEA80FF5C79'),
  [history] [varchar](2000) NULL,
  [data_osmotra] [date] NULL,
  [data_osmotra_fio] [varchar](50) NULL,
  [data_osmotra_doljnost] [varchar](50) NULL,
  [fact_ustanovki] [varchar](50) NULL CONSTRAINT [DF_reestr_t_fact_ustanovki] DEFAULT ('1'),
  [proverka_podsveta_foto] [varchar](50) NULL,
  [data_proverka_podsveta] [date] NULL,
  [proverka_podsveta_sost] [varchar](50) NULL,
  [proverka_podsveta_dojnost] [varchar](50) NULL,
  [proverka_podsveta_fio] [varchar](50) NULL,
  [egko_fio] [varchar](50) NULL,
  [egko_doljnost] [varchar](50) NULL,
  [egko_data] [date] NULL,
  [tip_neobkhodimix_rabot] [varchar](50) NULL,
  [nesootv_tipa] [varchar](50) NULL,
  [nesootv_kategorii] [varchar](50) NULL,
  [nedemontirovan_stariy] [varchar](50) NULL,
  [vvost_fasad] [varchar](50) NULL,
  [ne_ustanovlen] [varchar](50) NULL,
  [zamechaniy_net] [varchar](50) NULL,
  [status] [varchar](50) NULL,
  [status_fio] [varchar](50) NULL,
  [data_vvoda_akt] [date] NULL,
  [fio_vvoda_akt] [varchar](50) NULL,
  [doljnost_vvoda_akt] [varchar](50) NULL,
  [data_ekpertnogo_zakl] [date] NULL,
  [nomer_ekpertnogo_zakl] [varchar](50) NULL,
  [naimenov_ekspert_org] [varchar](50) NULL,
  [fio_vneseniya] [varchar](50) NULL,
  [naimenov_upr_org] [varchar](50) NULL,
  [istochnik_dannich] [varchar](50) NULL,
  [fio_vneseniya1] [varchar](50) NULL,
  [oprosniy_list] [varchar](50) NULL,
  [zakluchenie_du] [varchar](1000) NULL,
  [zakluchenie_du1] [varchar](1000) NULL,
  [qr] [varchar](50) NULL,
  [qrpath] [varchar](50) NULL,
  [memo] [varchar](1000) NULL,
  [v_plane_key] [int] NOT NULL CONSTRAINT [DF_reestr_t_v_plane_key] DEFAULT (1),
  [osmotren_key] [int] NOT NULL CONSTRAINT [DF_reestr_t_osmotren_key] DEFAULT (0),
  [isklucheno_key] [int] NOT NULL CONSTRAINT [DF_reestr_t_isklucheno_key] DEFAULT (0),
  [isklucheno_memo] [varchar](1000) NULL,
  [isklucheno_pic] [nchar](10) NULL,
  [isklucheno_date] [date] NULL,
  [zamechaniya_key] [int] NULL CONSTRAINT [DF_reestr_t_zamechaniya_key] DEFAULT (0),
  [zamechaniya_nashi_key] [int] NULL,
  [zamechaniya_nashi_text] [varchar](2000) NULL,
  [zamechaniya_nashi_text_boss] [varchar](2000) NULL,
  [zamechaniya_nashi_date] [date] NULL,
  [zamechaniya_nashi_date_ustr] [date] NULL,
  [akt_v_ogs_key] [int] NOT NULL CONSTRAINT [DF_reestr_t_akt_v_ogs_key] DEFAULT (0),
  [akt_podpisan_key] [int] NOT NULL CONSTRAINT [DF_reestr_t_akt_podpisan_key] DEFAULT (0),
  [ustraneno_key] [int] NOT NULL CONSTRAINT [DF_reestr_t_ustraneno_key] DEFAULT (0),
  [new_key] [int] NULL CONSTRAINT [DF_reestr_t_new_key] DEFAULT (0),
  [dlinafasada_key] [int] NULL,
  [piktogrammi_key] [int] NULL,
  [elektrpodkl_key] [int] NULL,
  [vse_ok_key] [int] NOT NULL CONSTRAINT [DF_reestr_t_vse_ok_key] DEFAULT (0),
  [proverka_timer] [varchar](50) NULL,
  [koordinati_timer] [varchar](50) NULL,
  [v_plane_v_rabote] [varchar](1) NOT NULL CONSTRAINT [DF_reestr_t_v_plane_v_rabote] DEFAULT (0),
  [prinato_status] [int] NULL,
  [prinato_data] [date] NULL,
  [prinato_memo] [varchar](500) NULL,
  [zakluchenie_du_history] [varchar](2000) NULL,
  [dom_marshrut] [int] NULL,
  [data_v_proverku] [date] NULL,
  [data_ustr_zam] [date] NULL,
  [adres_bti_proverka] [varchar](1000) NULL,
  [fasad_summa] [int] NULL,
  [nalichie_summa] [int] NULL,
  [drugie_summa] [int] NULL,
  [montaj_summa] [int] NULL,
  [electrika_summa] [int] NULL,
  [tipdu_summa] [int] NULL,
  [kategoriya_summa] [int] NULL,
  [priznak] [varchar](50) NULL,
  [domdu2] [varchar](50) NULL,
  [log_file] [varchar](2000) NULL,
  [kartograf_zam] [varchar](1000) NULL,
  [wgs84] [geography] NULL,
  [inserted] [datetime] NULL CONSTRAINT [DF_reestr_inserted] DEFAULT (getdate()),
  [tipdu_kod] [int] NOT NULL,
  [tipdumatc_kod] [int] NOT NULL CONSTRAINT [DF_reestr_t_tipdumatc_kod] DEFAULT (16),
  [adress_id] [int] NOT NULL,
  [EGKO] [geometry] NULL,
  [raspayachnaya_korobka_b] [int] NOT NULL,
  [vospriyatie_b] [int] NOT NULL,
  [dlina_fasada_b] [int] NOT NULL,
  [koldu_b] [int] NOT NULL,
  [piktogrammi_b] [int] NOT NULL,
  [nalichie_podkl_b] [int] NOT NULL,
  [vozmojnost_podkl_b] [int] NOT NULL,
  [demontaj_b] [int] NOT NULL,
  [ust_na_linii_b] [int] NOT NULL,
  [k_priemke_b] [int] NOT NULL,
  [vost_fasada_b] [int] NOT NULL,
  [sootvetstvie_tipa_b] [int] NOT NULL,
  [sootv_bti_b] [int] NOT NULL,
  [wgs84_leg] [geography] NULL,
  [sootv_bti] [varchar](50) NULL,
  [raspayachnaya_korobka] [varchar](50) NULL,
  [vospriyatie] [varchar](50) NULL,
  [dlina_fasada] [varchar](50) NULL,
  [koldu] [varchar](50) NULL,
  [piktogrammi] [varchar](50) NULL,
  [nalichie_podkl] [varchar](50) NULL,
  [vozmojnost_podkl] [varchar](50) NULL,
  [demontaj] [varchar](50) NULL,
  [ust_na_linii] [varchar](50) NULL,
  [k_priemke] [varchar](50) NULL,
  [vost_fasada] [varchar](50) NULL,
  [sootvetstvie_tipa] [varchar](50) NULL,
  CONSTRAINT [PK_reestr_t] PRIMARY KEY CLUSTERED ([kod])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [_dta_index_reestr_t_5_1872217920__K110]
  ON [dbo].[reestr_t] ([adress_id])
  ON [PRIMARY]
GO

CREATE INDEX [_dta_index_reestr_t_5_1872217920__K110_K1_K119_K118_K117_K116_K115_K114_K113_K112_K122_K121_K120_K123_K108_K14_2_3_4_5_6_7_8_9_]
  ON [dbo].[reestr_t] ([adress_id], [kod], [demontaj_b], [vozmojnost_podkl_b], [nalichie_podkl_b], [piktogrammi_b], [koldu_b], [dlina_fasada_b], [vospriyatie_b], [raspayachnaya_korobka_b], [vost_fasada_b], [k_priemke_b], [ust_na_linii_b], [sootvetstvie_tipa_b], [tipdu_kod], [subpodradchik_id])
  INCLUDE ([num], [project], [sootv_bti], [domdu2], [log_file], [kartograf_zam], [wgs84], [tipdumatc_kod], [EGKO], [drugie_summa], [montaj_summa], [electrika_summa], [tipdu_summa], [kategoriya_summa], [priznak], [zakluchenie_du_history], [dom_marshrut], [data_v_proverku], [data_ustr_zam], [fasad_summa], [nalichie_summa], [proverka_timer], [koordinati_timer], [v_plane_v_rabote], [prinato_status], [prinato_data], [prinato_memo], [ustraneno_key], [new_key], [dlinafasada_key], [piktogrammi_key], [elektrpodkl_key], [vse_ok_key], [zamechaniya_nashi_text], [zamechaniya_nashi_text_boss], [zamechaniya_nashi_date], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [akt_podpisan_key], [isklucheno_key], [isklucheno_memo], [isklucheno_pic], [isklucheno_date], [zamechaniya_key], [zamechaniya_nashi_key], [zakluchenie_du1], [qr], [qrpath], [memo], [v_plane_key], [osmotren_key], [fio_vneseniya], [naimenov_upr_org], [istochnik_dannich], [fio_vneseniya1], [oprosniy_list], [zakluchenie_du], [data_vvoda_akt], [fio_vvoda_akt], [doljnost_vvoda_akt], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [nedemontirovan_stariy], [vvost_fasad], [ne_ustanovlen], [zamechaniy_net], [status], [status_fio], [egko_fio], [egko_doljnost], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [nesootv_kategorii], [fact_ustanovki], [proverka_podsveta_foto], [data_proverka_podsveta], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [doljnost], [organization_id], [history], [data_osmotra], [data_osmotra_fio], [data_osmotra_doljnost], [pic2], [pic3], [checkpic3], [egko_map_txt], [proverka_karti], [fio], [domdu], [montaj], [montaj_plan], [date1], [pic1], [checkpic1], [kategoriya], [unikalniy], [razmerdu], [ploshaddu], [ulitsadu], [domdu_ilion])
  ON [PRIMARY]
GO

CREATE INDEX [_dta_index_reestr_t_5_873926335__K110_K28_K1_K109_K108_2_3_4_5_8_9_10_15_16_17_18_19_20_21_22_26_27_29_30_31_32_33_34_35_36_37_]
  ON [dbo].[reestr_t] ([adress_id], [data_osmotra_fio], [kod], [tipdumatc_kod], [tipdu_kod])
  INCLUDE ([num], [ust_na_linii], [k_priemke], [vost_fasada], [sootvetstvie_tipa], [vospriyatie], [koldu], [piktogrammi], [nalichie_podkl], [vozmojnost_podkl], [kartograf_zam], [demontaj], [EGKO], [wgs84_leg], [sootv_bti], [raspayachnaya_korobka], [electrika_summa], [dlina_fasada], [kategoriya_summa], [priznak], [domdu2], [log_file], [data_v_proverku], [wgs84], [fasad_summa], [nalichie_summa], [drugie_summa], [montaj_summa], [v_plane_v_rabote], [tipdu_summa], [prinato_data], [prinato_memo], [zakluchenie_du_history], [dom_marshrut], [dlinafasada_key], [data_ustr_zam], [elektrpodkl_key], [vse_ok_key], [proverka_timer], [koordinati_timer], [zamechaniya_nashi_date], [prinato_status], [akt_v_ogs_key], [akt_podpisan_key], [ustraneno_key], [new_key], [isklucheno_pic], [piktogrammi_key], [zamechaniya_key], [zamechaniya_nashi_key], [zamechaniya_nashi_text], [zamechaniya_nashi_text_boss], [qrpath], [zamechaniya_nashi_date_ustr], [v_plane_key], [osmotren_key], [isklucheno_key], [isklucheno_memo], [istochnik_dannich], [isklucheno_date], [oprosniy_list], [zakluchenie_du], [zakluchenie_du1], [qr], [doljnost_vvoda_akt], [memo], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [fio_vneseniya], [naimenov_upr_org], [vvost_fasad], [fio_vneseniya1], [zamechaniy_net], [status], [data_vvoda_akt], [fio_vvoda_akt], [egko_doljnost], [data_ekpertnogo_zakl], [tip_neobkhodimix_rabot], [nesootv_tipa], [nesootv_kategorii], [nedemontirovan_stariy], [proverka_podsveta_foto], [ne_ustanovlen], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [egko_fio], [egko_map_txt], [egko_data], [history], [data_osmotra], [data_osmotra_doljnost], [fact_ustanovki], [date1], [data_proverka_podsveta], [checkpic1], [pic2], [pic3], [checkpic3], [project], [proverka_karti], [kategoriya], [unikalniy], [ulitsadu], [domdu_ilion], [domdu], [pic1])
  ON [PRIMARY]
GO

CREATE INDEX [adress_id]
  ON [dbo].[reestr_t] ([adress_id])
  INCLUDE ([kod], [num], [project], [kategoriya], [unikalniy], [sootv_bti_b], [wgs84_leg], [vozmojnost_podkl_b], [demontaj_b], [ust_na_linii_b], [k_priemke_b], [vost_fasada_b], [sootvetstvie_tipa_b], [raspayachnaya_korobka_b], [vospriyatie_b], [dlina_fasada_b], [koldu_b], [piktogrammi_b], [nalichie_podkl_b], [log_file], [kartograf_zam], [wgs84], [tipdu_kod], [tipdumatc_kod], [EGKO], [montaj_summa], [electrika_summa], [tipdu_summa], [kategoriya_summa], [priznak], [domdu2], [dom_marshrut], [data_v_proverku], [data_ustr_zam], [fasad_summa], [nalichie_summa], [drugie_summa], [koordinati_timer], [v_plane_v_rabote], [prinato_status], [prinato_data], [prinato_memo], [zakluchenie_du_history], [new_key], [dlinafasada_key], [piktogrammi_key], [elektrpodkl_key], [vse_ok_key], [proverka_timer], [zamechaniya_nashi_text_boss], [zamechaniya_nashi_date], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [akt_podpisan_key], [ustraneno_key], [isklucheno_memo], [isklucheno_pic], [isklucheno_date], [zamechaniya_key], [zamechaniya_nashi_key], [zamechaniya_nashi_text], [qr], [qrpath], [memo], [v_plane_key], [osmotren_key], [isklucheno_key], [naimenov_upr_org], [istochnik_dannich], [fio_vneseniya1], [oprosniy_list], [zakluchenie_du], [zakluchenie_du1], [fio_vvoda_akt], [doljnost_vvoda_akt], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [fio_vneseniya], [vvost_fasad], [ne_ustanovlen], [zamechaniy_net], [status], [status_fio], [data_vvoda_akt], [egko_doljnost], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [nesootv_kategorii], [nedemontirovan_stariy], [proverka_podsveta_foto], [data_proverka_podsveta], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [proverka_karti], [proverka_podsveta_fio], [egko_fio], [history], [data_osmotra], [data_osmotra_fio], [pic1], [data_osmotra_doljnost], [fact_ustanovki], [pic3], [checkpic3], [egko_map_txt], [ulitsadu], [domdu_ilion], [fio], [doljnost], [montaj_plan], [date1], [domdu], [montaj], [checkpic1], [pic2], [razmerdu], [ploshaddu])
  ON [PRIMARY]
GO

CREATE INDEX [adress_id2]
  ON [dbo].[reestr_t] ([kod], [adress_id], [tipdu_kod], [tipdumatc_kod])
  INCLUDE ([num], [project], [sootv_bti_b], [wgs84_leg], [vozmojnost_podkl_b], [demontaj_b], [ust_na_linii_b], [k_priemke_b], [vost_fasada_b], [sootvetstvie_tipa_b], [raspayachnaya_korobka_b], [vospriyatie_b], [dlina_fasada_b], [koldu_b], [piktogrammi_b], [nalichie_podkl_b], [priznak], [domdu2], [log_file], [kartograf_zam], [wgs84], [EGKO], [nalichie_summa], [drugie_summa], [montaj_summa], [electrika_summa], [tipdu_summa], [kategoriya_summa], [prinato_memo], [zakluchenie_du_history], [dom_marshrut], [data_v_proverku], [data_ustr_zam], [fasad_summa], [vse_ok_key], [proverka_timer], [koordinati_timer], [v_plane_v_rabote], [prinato_status], [prinato_data], [akt_podpisan_key], [ustraneno_key], [new_key], [dlinafasada_key], [piktogrammi_key], [elektrpodkl_key], [zamechaniya_nashi_key], [zamechaniya_nashi_text], [zamechaniya_nashi_text_boss], [zamechaniya_nashi_date], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [osmotren_key], [isklucheno_key], [isklucheno_memo], [isklucheno_pic], [isklucheno_date], [zamechaniya_key], [zakluchenie_du], [zakluchenie_du1], [qr], [qrpath], [memo], [v_plane_key], [naimenov_ekspert_org], [fio_vneseniya], [naimenov_upr_org], [istochnik_dannich], [fio_vneseniya1], [oprosniy_list], [status_fio], [data_vvoda_akt], [fio_vvoda_akt], [doljnost_vvoda_akt], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [nesootv_kategorii], [nedemontirovan_stariy], [vvost_fasad], [ne_ustanovlen], [zamechaniy_net], [status], [proverka_podsveta_fio], [egko_fio], [egko_doljnost], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [data_osmotra_doljnost], [fact_ustanovki], [proverka_podsveta_foto], [data_proverka_podsveta], [checkpic3], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [fio], [doljnost], [history], [montaj_plan], [data_osmotra], [data_osmotra_fio], [checkpic1], [pic2], [pic3], [razmerdu], [ploshaddu], [egko_map_txt], [proverka_karti], [domdu], [montaj], [ulitsadu], [domdu_ilion], [date1], [pic1], [kategoriya], [unikalniy])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [NonClusteredIndex-20170824-161017]
  ON [dbo].[reestr_t] ([kod], [unikalniy], [isklucheno_key], [tipdu_kod], [tipdumatc_kod], [adress_id], [podradchik_id], [subpodradchik_id], [organization_id], [raspayachnaya_korobka_b], [vospriyatie_b], [dlina_fasada_b], [koldu_b], [piktogrammi_b], [nalichie_podkl_b], [vozmojnost_podkl_b])
  INCLUDE ([num], [project], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [kartograf_zam], [inserted], [demontaj_b], [ust_na_linii_b], [electrika_summa], [k_priemke_b], [kategoriya_summa], [vost_fasada_b], [domdu2], [log_file], [data_ustr_zam], [wgs84], [fasad_summa], [EGKO], [drugie_summa], [montaj_summa], [prinato_status], [tipdu_summa], [prinato_memo], [priznak], [dom_marshrut], [data_v_proverku], [piktogrammi_key], [adres_bti_proverka], [vse_ok_key], [nalichie_summa], [koordinati_timer], [v_plane_v_rabote], [zamechaniya_nashi_date_ustr], [prinato_data], [akt_podpisan_key], [zakluchenie_du_history], [new_key], [dlinafasada_key], [isklucheno_date], [elektrpodkl_key], [zamechaniya_nashi_key], [proverka_timer], [zamechaniya_nashi_text_boss], [zamechaniya_nashi_date], [qrpath], [akt_v_ogs_key], [v_plane_key], [ustraneno_key], [isklucheno_memo], [isklucheno_pic], [istochnik_dannich], [zamechaniya_key], [oprosniy_list], [zamechaniya_nashi_text], [zakluchenie_du1], [qr], [doljnost_vvoda_akt], [memo], [nomer_ekpertnogo_zakl], [osmotren_key], [fio_vneseniya], [naimenov_upr_org], [ne_ustanovlen], [fio_vneseniya1], [status], [zakluchenie_du], [data_vvoda_akt], [fio_vvoda_akt], [egko_data], [data_ekpertnogo_zakl], [nesootv_tipa], [naimenov_ekspert_org], [nedemontirovan_stariy], [vvost_fasad], [data_proverka_podsveta], [zamechaniy_net], [proverka_podsveta_dojnost], [status_fio], [egko_fio], [egko_doljnost], [history], [tip_neobkhodimix_rabot], [data_osmotra_fio], [nesootv_kategorii], [fact_ustanovki], [proverka_podsveta_foto], [pic3], [proverka_podsveta_sost], [egko_map_txt], [proverka_podsveta_fio], [fio], [doljnost], [montaj], [data_osmotra], [date1], [data_osmotra_doljnost], [checkpic1], [pic2], [kategoriya], [checkpic3], [razmerdu], [proverka_karti], [ploshaddu], [ulitsadu], [domdu_ilion], [domdu], [montaj_plan], [pic1])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [NonClusteredIndex-20170824-161708]
  ON [dbo].[reestr_t] ([kod], [isklucheno_key], [adress_id])
  INCLUDE ([num], [project], [kategoriya], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [koldu_b], [nalichie_podkl_b], [demontaj_b], [ust_na_linii_b], [tipdu_kod], [k_priemke_b], [EGKO], [vost_fasada_b], [vospriyatie_b], [dlina_fasada_b], [priznak], [piktogrammi_b], [log_file], [vozmojnost_podkl_b], [wgs84], [inserted], [nalichie_summa], [tipdumatc_kod], [montaj_summa], [raspayachnaya_korobka_b], [tipdu_summa], [kategoriya_summa], [zakluchenie_du_history], [domdu2], [data_v_proverku], [kartograf_zam], [adres_bti_proverka], [fasad_summa], [proverka_timer], [drugie_summa], [v_plane_v_rabote], [electrika_summa], [prinato_data], [prinato_memo], [ustraneno_key], [dom_marshrut], [dlinafasada_key], [data_ustr_zam], [elektrpodkl_key], [vse_ok_key], [zamechaniya_nashi_text], [koordinati_timer], [zamechaniya_nashi_date], [prinato_status], [akt_v_ogs_key], [akt_podpisan_key], [osmotren_key], [new_key], [isklucheno_pic], [piktogrammi_key], [zamechaniya_key], [zamechaniya_nashi_key], [zakluchenie_du], [zamechaniya_nashi_text_boss], [qr], [zamechaniya_nashi_date_ustr], [memo], [v_plane_key], [naimenov_ekspert_org], [isklucheno_memo], [naimenov_upr_org], [isklucheno_date], [fio_vneseniya1], [oprosniy_list], [status_fio], [zakluchenie_du1], [fio_vvoda_akt], [qrpath], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [nesootv_kategorii], [fio_vneseniya], [vvost_fasad], [istochnik_dannich], [zamechaniy_net], [status], [proverka_podsveta_fio], [data_vvoda_akt], [egko_doljnost], [doljnost_vvoda_akt], [tip_neobkhodimix_rabot], [nesootv_tipa], [data_osmotra_doljnost], [nedemontirovan_stariy], [proverka_podsveta_foto], [ne_ustanovlen], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [fio], [egko_fio], [organization_id], [egko_data], [data_osmotra], [data_osmotra_fio], [checkpic1], [fact_ustanovki], [pic3], [data_proverka_podsveta], [egko_map_txt], [proverka_karti], [montaj], [doljnost], [podradchik_id], [history], [date1], [pic1], [unikalniy], [pic2], [razmerdu], [checkpic3], [ploshaddu], [ulitsadu], [domdu_ilion], [domdu], [montaj_plan], [subpodradchik_id])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [NonClusteredIndex-20170824-162547]
  ON [dbo].[reestr_t] ([kod], [date1])
  INCLUDE ([num], [project], [kategoriya], [unikalniy], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [koldu_b], [nalichie_podkl_b], [demontaj_b], [ust_na_linii_b], [tipdumatc_kod], [k_priemke_b], [EGKO], [vost_fasada_b], [vospriyatie_b], [dlina_fasada_b], [domdu2], [piktogrammi_b], [kartograf_zam], [vozmojnost_podkl_b], [inserted], [tipdu_kod], [drugie_summa], [adress_id], [electrika_summa], [raspayachnaya_korobka_b], [kategoriya_summa], [priznak], [dom_marshrut], [log_file], [data_ustr_zam], [wgs84], [fasad_summa], [nalichie_summa], [koordinati_timer], [montaj_summa], [prinato_status], [tipdu_summa], [prinato_memo], [zakluchenie_du_history], [new_key], [data_v_proverku], [piktogrammi_key], [adres_bti_proverka], [vse_ok_key], [proverka_timer], [zamechaniya_nashi_text_boss], [v_plane_v_rabote], [zamechaniya_nashi_date_ustr], [prinato_data], [akt_podpisan_key], [ustraneno_key], [isklucheno_memo], [dlinafasada_key], [isklucheno_date], [elektrpodkl_key], [zamechaniya_nashi_key], [zamechaniya_nashi_text], [qr], [zamechaniya_nashi_date], [memo], [akt_v_ogs_key], [osmotren_key], [isklucheno_key], [naimenov_upr_org], [isklucheno_pic], [fio_vneseniya1], [zamechaniya_key], [zakluchenie_du], [zakluchenie_du1], [fio_vvoda_akt], [qrpath], [data_ekpertnogo_zakl], [v_plane_key], [naimenov_ekspert_org], [fio_vneseniya], [vvost_fasad], [istochnik_dannich], [zamechaniy_net], [oprosniy_list], [status_fio], [data_vvoda_akt], [egko_doljnost], [doljnost_vvoda_akt], [tip_neobkhodimix_rabot], [nomer_ekpertnogo_zakl], [nesootv_kategorii], [nedemontirovan_stariy], [proverka_podsveta_foto], [ne_ustanovlen], [proverka_podsveta_sost], [status], [proverka_podsveta_fio], [egko_fio], [organization_id], [egko_data], [data_osmotra], [nesootv_tipa], [data_osmotra_doljnost], [fact_ustanovki], [pic3], [data_proverka_podsveta], [egko_map_txt], [proverka_podsveta_dojnost], [fio], [doljnost], [montaj_plan], [history], [subpodradchik_id], [data_osmotra_fio], [checkpic1], [pic2], [razmerdu], [checkpic3], [ploshaddu], [proverka_karti], [ulitsadu], [domdu_ilion], [domdu], [montaj], [podradchik_id], [pic1])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [NonClusteredIndex-20170824-164346]
  ON [dbo].[reestr_t] ([tipdu_kod], [tipdumatc_kod], [kod])
  INCLUDE ([num], [project], [kategoriya], [sootv_bti_b], [k_priemke_b], [nalichie_podkl_b], [EGKO], [demontaj_b], [vospriyatie_b], [sootvetstvie_tipa_b], [koldu_b], [wgs84_leg], [domdu2], [vozmojnost_podkl_b], [kartograf_zam], [ust_na_linii_b], [inserted], [vost_fasada_b], [drugie_summa], [raspayachnaya_korobka_b], [electrika_summa], [dlina_fasada_b], [kategoriya_summa], [piktogrammi_b], [zakluchenie_du_history], [log_file], [data_v_proverku], [wgs84], [fasad_summa], [adress_id], [proverka_timer], [montaj_summa], [v_plane_v_rabote], [tipdu_summa], [prinato_data], [priznak], [ustraneno_key], [dom_marshrut], [dlinafasada_key], [data_ustr_zam], [elektrpodkl_key], [nalichie_summa], [zamechaniya_nashi_text], [koordinati_timer], [zamechaniya_nashi_date], [prinato_status], [akt_v_ogs_key], [prinato_memo], [isklucheno_key], [new_key], [isklucheno_pic], [piktogrammi_key], [zamechaniya_key], [vse_ok_key], [zakluchenie_du1], [zamechaniya_nashi_text_boss], [qrpath], [zamechaniya_nashi_date_ustr], [v_plane_key], [akt_podpisan_key], [fio_vneseniya], [isklucheno_memo], [istochnik_dannich], [isklucheno_date], [oprosniy_list], [zamechaniya_nashi_key], [data_vvoda_akt], [qr], [doljnost_vvoda_akt], [memo], [nomer_ekpertnogo_zakl], [osmotren_key], [nedemontirovan_stariy], [naimenov_upr_org], [ne_ustanovlen], [fio_vneseniya1], [status], [zakluchenie_du], [egko_fio], [fio_vvoda_akt], [egko_data], [data_ekpertnogo_zakl], [nesootv_tipa], [naimenov_ekspert_org], [fact_ustanovki], [vvost_fasad], [data_proverka_podsveta], [zamechaniy_net], [proverka_podsveta_sost], [status_fio], [proverka_podsveta_fio], [egko_doljnost], [history], [tip_neobkhodimix_rabot], [data_osmotra], [nesootv_kategorii], [data_osmotra_doljnost], [proverka_podsveta_foto], [pic3], [checkpic3], [ploshaddu], [proverka_podsveta_dojnost], [proverka_karti], [doljnost], [montaj], [montaj_plan], [domdu], [data_osmotra_fio], [pic1], [pic2], [unikalniy], [razmerdu], [date1], [egko_map_txt], [checkpic1], [fio], [ulitsadu], [domdu_ilion])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [NonClusteredIndex-20170824-164440]
  ON [dbo].[reestr_t] ([raspayachnaya_korobka_b], [vospriyatie_b], [dlina_fasada_b], [koldu_b], [piktogrammi_b], [nalichie_podkl_b], [vozmojnost_podkl_b], [demontaj_b], [ust_na_linii_b], [k_priemke_b], [vost_fasada_b], [sootvetstvie_tipa_b], [sootv_bti_b], [kod])
  INCLUDE ([tipdu_kod], [prinato_status], [kategoriya_summa], [priznak], [EGKO], [data_ustr_zam], [inserted], [piktogrammi_key], [fasad_summa], [nalichie_summa], [wgs84], [tipdu_summa], [adress_id], [zamechaniya_nashi_date_ustr], [prinato_data], [prinato_memo], [wgs84_leg], [log_file], [kartograf_zam], [isklucheno_date], [elektrpodkl_key], [vse_ok_key], [tipdumatc_kod], [montaj_summa], [electrika_summa], [memo], [akt_v_ogs_key], [akt_podpisan_key], [domdu2], [dom_marshrut], [data_v_proverku], [fio_vneseniya1], [zamechaniya_key], [zamechaniya_nashi_key], [drugie_summa], [koordinati_timer], [v_plane_v_rabote], [data_ekpertnogo_zakl], [v_plane_key], [osmotren_key], [zakluchenie_du_history], [new_key], [dlinafasada_key], [zamechaniy_net], [oprosniy_list], [zakluchenie_du], [proverka_timer], [zamechaniya_nashi_text_boss], [zamechaniya_nashi_date], [tip_neobkhodimix_rabot], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [ustraneno_key], [isklucheno_memo], [isklucheno_pic], [proverka_podsveta_sost], [status], [status_fio], [zamechaniya_nashi_text], [qr], [qrpath], [data_osmotra], [nesootv_tipa], [nesootv_kategorii], [isklucheno_key], [naimenov_upr_org], [istochnik_dannich], [checkpic3], [egko_map_txt], [proverka_podsveta_dojnost], [zakluchenie_du1], [fio_vvoda_akt], [doljnost_vvoda_akt], [montaj_plan], [date1], [data_osmotra_fio], [fio_vneseniya], [vvost_fasad], [ne_ustanovlen], [razmerdu], [ploshaddu], [ulitsadu], [data_vvoda_akt], [egko_doljnost], [egko_data], [domdu_ilion], [domdu], [montaj], [nedemontirovan_stariy], [proverka_podsveta_foto], [data_proverka_podsveta], [num], [project], [kategoriya], [proverka_podsveta_fio], [egko_fio], [history], [unikalniy], [pic1], [checkpic1], [data_osmotra_doljnost], [fact_ustanovki], [pic3], [pic2], [proverka_karti], [fio], [doljnost])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20171025-174442]
  ON [dbo].[reestr_t] ([organization_id])
  INCLUDE ([kod], [num], [project], [kategoriya], [unikalniy], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [koldu_b], [nalichie_podkl_b], [demontaj_b], [ust_na_linii_b], [tipdumatc_kod], [k_priemke_b], [EGKO], [vost_fasada_b], [vospriyatie_b], [dlina_fasada_b], [domdu2], [piktogrammi_b], [kartograf_zam], [vozmojnost_podkl_b], [inserted], [tipdu_kod], [drugie_summa], [adress_id], [electrika_summa], [raspayachnaya_korobka_b], [kategoriya_summa], [priznak], [dom_marshrut], [log_file], [data_ustr_zam], [wgs84], [fasad_summa], [nalichie_summa], [koordinati_timer], [montaj_summa], [prinato_status], [tipdu_summa], [prinato_memo], [zakluchenie_du_history], [new_key], [data_v_proverku], [piktogrammi_key], [adres_bti_proverka], [vse_ok_key], [proverka_timer], [zamechaniya_nashi_text_boss], [v_plane_v_rabote], [zamechaniya_nashi_date_ustr], [prinato_data], [akt_podpisan_key], [ustraneno_key], [isklucheno_memo], [dlinafasada_key], [isklucheno_date], [elektrpodkl_key], [zamechaniya_nashi_key], [zamechaniya_nashi_text], [qr], [zamechaniya_nashi_date], [memo], [akt_v_ogs_key], [osmotren_key], [isklucheno_key], [naimenov_upr_org], [isklucheno_pic], [fio_vneseniya1], [zamechaniya_key], [zakluchenie_du], [zakluchenie_du1], [fio_vvoda_akt], [qrpath], [data_ekpertnogo_zakl], [v_plane_key], [naimenov_ekspert_org], [fio_vneseniya], [vvost_fasad], [istochnik_dannich], [zamechaniy_net], [oprosniy_list], [status_fio], [data_vvoda_akt], [egko_doljnost], [doljnost_vvoda_akt], [tip_neobkhodimix_rabot], [nomer_ekpertnogo_zakl], [nesootv_kategorii], [nedemontirovan_stariy], [proverka_podsveta_foto], [ne_ustanovlen], [proverka_podsveta_sost], [status], [proverka_podsveta_fio], [egko_fio], [doljnost], [egko_data], [data_osmotra], [nesootv_tipa], [data_osmotra_doljnost], [fact_ustanovki], [pic2], [data_proverka_podsveta], [checkpic3], [proverka_podsveta_dojnost], [proverka_karti], [fio], [montaj_plan], [history], [subpodradchik_id], [data_osmotra_fio], [pic1], [checkpic1], [razmerdu], [pic3], [ploshaddu], [egko_map_txt], [ulitsadu], [domdu_ilion], [domdu], [montaj], [podradchik_id], [date1])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20171025-174517]
  ON [dbo].[reestr_t] ([subpodradchik_id])
  INCLUDE ([kod], [num], [project], [kategoriya], [unikalniy], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [koldu_b], [nalichie_podkl_b], [demontaj_b], [ust_na_linii_b], [tipdumatc_kod], [k_priemke_b], [EGKO], [vost_fasada_b], [vospriyatie_b], [dlina_fasada_b], [domdu2], [piktogrammi_b], [kartograf_zam], [vozmojnost_podkl_b], [inserted], [tipdu_kod], [drugie_summa], [adress_id], [electrika_summa], [raspayachnaya_korobka_b], [kategoriya_summa], [priznak], [dom_marshrut], [log_file], [data_ustr_zam], [wgs84], [fasad_summa], [nalichie_summa], [koordinati_timer], [montaj_summa], [prinato_status], [tipdu_summa], [prinato_memo], [zakluchenie_du_history], [new_key], [data_v_proverku], [piktogrammi_key], [adres_bti_proverka], [vse_ok_key], [proverka_timer], [zamechaniya_nashi_text_boss], [v_plane_v_rabote], [zamechaniya_nashi_date_ustr], [prinato_data], [akt_podpisan_key], [ustraneno_key], [isklucheno_memo], [dlinafasada_key], [isklucheno_date], [elektrpodkl_key], [zamechaniya_nashi_key], [zamechaniya_nashi_text], [qr], [zamechaniya_nashi_date], [memo], [akt_v_ogs_key], [osmotren_key], [isklucheno_key], [naimenov_upr_org], [isklucheno_pic], [fio_vneseniya1], [zamechaniya_key], [zakluchenie_du], [zakluchenie_du1], [fio_vvoda_akt], [qrpath], [data_ekpertnogo_zakl], [v_plane_key], [naimenov_ekspert_org], [fio_vneseniya], [vvost_fasad], [istochnik_dannich], [zamechaniy_net], [oprosniy_list], [status_fio], [data_vvoda_akt], [egko_doljnost], [doljnost_vvoda_akt], [tip_neobkhodimix_rabot], [nomer_ekpertnogo_zakl], [nesootv_kategorii], [nedemontirovan_stariy], [proverka_podsveta_foto], [ne_ustanovlen], [proverka_podsveta_sost], [status], [proverka_podsveta_fio], [egko_fio], [organization_id], [egko_data], [data_osmotra], [nesootv_tipa], [data_osmotra_doljnost], [fact_ustanovki], [pic3], [data_proverka_podsveta], [egko_map_txt], [proverka_podsveta_dojnost], [fio], [doljnost], [montaj_plan], [history], [date1], [data_osmotra_fio], [checkpic1], [pic2], [razmerdu], [checkpic3], [ploshaddu], [proverka_karti], [ulitsadu], [domdu_ilion], [domdu], [montaj], [podradchik_id], [pic1])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20171025-174537]
  ON [dbo].[reestr_t] ([podradchik_id])
  INCLUDE ([kod], [num], [project], [kategoriya], [unikalniy], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [koldu_b], [nalichie_podkl_b], [demontaj_b], [ust_na_linii_b], [tipdumatc_kod], [k_priemke_b], [EGKO], [vost_fasada_b], [vospriyatie_b], [dlina_fasada_b], [domdu2], [piktogrammi_b], [kartograf_zam], [vozmojnost_podkl_b], [inserted], [tipdu_kod], [drugie_summa], [adress_id], [electrika_summa], [raspayachnaya_korobka_b], [kategoriya_summa], [priznak], [dom_marshrut], [log_file], [data_ustr_zam], [wgs84], [fasad_summa], [nalichie_summa], [koordinati_timer], [montaj_summa], [prinato_status], [tipdu_summa], [prinato_memo], [zakluchenie_du_history], [new_key], [data_v_proverku], [piktogrammi_key], [adres_bti_proverka], [vse_ok_key], [proverka_timer], [zamechaniya_nashi_text_boss], [v_plane_v_rabote], [zamechaniya_nashi_date_ustr], [prinato_data], [akt_podpisan_key], [ustraneno_key], [isklucheno_memo], [dlinafasada_key], [isklucheno_date], [elektrpodkl_key], [zamechaniya_nashi_key], [zamechaniya_nashi_text], [qr], [zamechaniya_nashi_date], [memo], [akt_v_ogs_key], [osmotren_key], [isklucheno_key], [naimenov_upr_org], [isklucheno_pic], [fio_vneseniya1], [zamechaniya_key], [zakluchenie_du], [zakluchenie_du1], [fio_vvoda_akt], [qrpath], [data_ekpertnogo_zakl], [v_plane_key], [naimenov_ekspert_org], [fio_vneseniya], [vvost_fasad], [istochnik_dannich], [zamechaniy_net], [oprosniy_list], [status_fio], [data_vvoda_akt], [egko_doljnost], [doljnost_vvoda_akt], [tip_neobkhodimix_rabot], [nomer_ekpertnogo_zakl], [nesootv_kategorii], [nedemontirovan_stariy], [proverka_podsveta_foto], [ne_ustanovlen], [proverka_podsveta_sost], [status], [proverka_podsveta_fio], [egko_fio], [organization_id], [egko_data], [data_osmotra], [nesootv_tipa], [data_osmotra_doljnost], [fact_ustanovki], [pic3], [data_proverka_podsveta], [egko_map_txt], [proverka_podsveta_dojnost], [fio], [doljnost], [montaj_plan], [history], [date1], [data_osmotra_fio], [checkpic1], [pic2], [razmerdu], [checkpic3], [ploshaddu], [proverka_karti], [ulitsadu], [domdu_ilion], [domdu], [montaj], [subpodradchik_id], [pic1])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20171129-144803]
  ON [dbo].[reestr_t] ([sootvetstvie_tipa_b])
  INCLUDE ([kod], [num], [project], [kategoriya], [unikalniy], [ust_na_linii_b], [k_priemke_b], [vost_fasada_b], [sootv_bti_b], [wgs84_leg], [dlina_fasada_b], [koldu_b], [piktogrammi_b], [nalichie_podkl_b], [vozmojnost_podkl_b], [demontaj_b], [tipdu_kod], [tipdumatc_kod], [adress_id], [EGKO], [raspayachnaya_korobka_b], [vospriyatie_b], [priznak], [domdu2], [log_file], [kartograf_zam], [wgs84], [inserted], [nalichie_summa], [drugie_summa], [montaj_summa], [electrika_summa], [tipdu_summa], [kategoriya_summa], [zakluchenie_du_history], [dom_marshrut], [data_v_proverku], [data_ustr_zam], [adres_bti_proverka], [fasad_summa], [proverka_timer], [koordinati_timer], [v_plane_v_rabote], [prinato_status], [prinato_data], [prinato_memo], [ustraneno_key], [new_key], [dlinafasada_key], [piktogrammi_key], [elektrpodkl_key], [vse_ok_key], [zamechaniya_nashi_text], [zamechaniya_nashi_text_boss], [zamechaniya_nashi_date], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [akt_podpisan_key], [isklucheno_key], [isklucheno_memo], [isklucheno_pic], [isklucheno_date], [zamechaniya_key], [zamechaniya_nashi_key], [zakluchenie_du1], [qr], [qrpath], [memo], [v_plane_key], [osmotren_key], [fio_vneseniya], [naimenov_upr_org], [istochnik_dannich], [fio_vneseniya1], [oprosniy_list], [zakluchenie_du], [data_vvoda_akt], [fio_vvoda_akt], [doljnost_vvoda_akt], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [nedemontirovan_stariy], [vvost_fasad], [ne_ustanovlen], [zamechaniy_net], [status], [status_fio], [egko_fio], [egko_doljnost], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [nesootv_kategorii], [fact_ustanovki], [proverka_podsveta_foto], [data_proverka_podsveta], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [doljnost], [organization_id], [history], [data_osmotra], [data_osmotra_fio], [data_osmotra_doljnost], [pic2], [pic3], [checkpic3], [egko_map_txt], [proverka_karti], [fio], [montaj_plan], [podradchik_id], [subpodradchik_id], [date1], [pic1], [checkpic1], [razmerdu], [ploshaddu], [ulitsadu], [domdu_ilion], [domdu], [montaj])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20171129-144846]
  ON [dbo].[reestr_t] ([vost_fasada_b])
  INCLUDE ([kod], [num], [project], [kategoriya], [unikalniy], [k_priemke_b], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [dlina_fasada_b], [piktogrammi_b], [nalichie_podkl_b], [vozmojnost_podkl_b], [demontaj_b], [tipdu_kod], [ust_na_linii_b], [adress_id], [EGKO], [raspayachnaya_korobka_b], [vospriyatie_b], [priznak], [koldu_b], [log_file], [kartograf_zam], [wgs84], [inserted], [nalichie_summa], [tipdumatc_kod], [montaj_summa], [electrika_summa], [tipdu_summa], [kategoriya_summa], [zakluchenie_du_history], [domdu2], [data_v_proverku], [data_ustr_zam], [adres_bti_proverka], [fasad_summa], [proverka_timer], [drugie_summa], [v_plane_v_rabote], [prinato_status], [prinato_data], [prinato_memo], [ustraneno_key], [dom_marshrut], [dlinafasada_key], [piktogrammi_key], [elektrpodkl_key], [vse_ok_key], [zamechaniya_nashi_text], [koordinati_timer], [zamechaniya_nashi_date], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [akt_podpisan_key], [isklucheno_key], [new_key], [isklucheno_pic], [isklucheno_date], [zamechaniya_key], [zamechaniya_nashi_key], [zakluchenie_du1], [zamechaniya_nashi_text_boss], [qrpath], [memo], [v_plane_key], [osmotren_key], [fio_vneseniya], [isklucheno_memo], [istochnik_dannich], [fio_vneseniya1], [oprosniy_list], [zakluchenie_du], [data_vvoda_akt], [qr], [doljnost_vvoda_akt], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [nedemontirovan_stariy], [naimenov_upr_org], [ne_ustanovlen], [zamechaniy_net], [status], [status_fio], [egko_fio], [fio_vvoda_akt], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [nesootv_kategorii], [fact_ustanovki], [vvost_fasad], [data_proverka_podsveta], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [doljnost], [egko_doljnost], [history], [data_osmotra], [data_osmotra_fio], [data_osmotra_doljnost], [pic2], [proverka_podsveta_foto], [checkpic3], [egko_map_txt], [proverka_karti], [fio], [montaj_plan], [organization_id], [subpodradchik_id], [date1], [pic1], [checkpic1], [razmerdu], [pic3], [ploshaddu], [ulitsadu], [domdu_ilion], [domdu], [montaj], [podradchik_id])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20171129-145001]
  ON [dbo].[reestr_t] ([k_priemke_b])
  INCLUDE ([kod], [num], [project], [kategoriya], [unikalniy], [vost_fasada_b], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [dlina_fasada_b], [piktogrammi_b], [nalichie_podkl_b], [vozmojnost_podkl_b], [demontaj_b], [tipdu_kod], [ust_na_linii_b], [adress_id], [EGKO], [raspayachnaya_korobka_b], [vospriyatie_b], [priznak], [koldu_b], [log_file], [kartograf_zam], [wgs84], [inserted], [nalichie_summa], [tipdumatc_kod], [montaj_summa], [electrika_summa], [tipdu_summa], [kategoriya_summa], [zakluchenie_du_history], [domdu2], [data_v_proverku], [data_ustr_zam], [adres_bti_proverka], [fasad_summa], [proverka_timer], [drugie_summa], [v_plane_v_rabote], [prinato_status], [prinato_data], [prinato_memo], [ustraneno_key], [dom_marshrut], [dlinafasada_key], [piktogrammi_key], [elektrpodkl_key], [vse_ok_key], [zamechaniya_nashi_text], [koordinati_timer], [zamechaniya_nashi_date], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [akt_podpisan_key], [isklucheno_key], [new_key], [isklucheno_pic], [isklucheno_date], [zamechaniya_key], [zamechaniya_nashi_key], [zakluchenie_du1], [zamechaniya_nashi_text_boss], [qrpath], [memo], [v_plane_key], [osmotren_key], [fio_vneseniya], [isklucheno_memo], [istochnik_dannich], [fio_vneseniya1], [oprosniy_list], [zakluchenie_du], [data_vvoda_akt], [qr], [doljnost_vvoda_akt], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [nedemontirovan_stariy], [naimenov_upr_org], [ne_ustanovlen], [zamechaniy_net], [status], [status_fio], [egko_fio], [fio_vvoda_akt], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [nesootv_kategorii], [fact_ustanovki], [vvost_fasad], [data_proverka_podsveta], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [doljnost], [egko_doljnost], [history], [data_osmotra], [data_osmotra_fio], [data_osmotra_doljnost], [pic2], [proverka_podsveta_foto], [checkpic3], [egko_map_txt], [proverka_karti], [fio], [montaj_plan], [organization_id], [subpodradchik_id], [date1], [pic1], [checkpic1], [razmerdu], [pic3], [ploshaddu], [ulitsadu], [domdu_ilion], [domdu], [montaj], [podradchik_id])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20171129-145059]
  ON [dbo].[reestr_t] ([ust_na_linii_b])
  INCLUDE ([kod], [num], [project], [kategoriya], [unikalniy], [vost_fasada_b], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [dlina_fasada_b], [piktogrammi_b], [nalichie_podkl_b], [vozmojnost_podkl_b], [demontaj_b], [tipdu_kod], [k_priemke_b], [adress_id], [EGKO], [raspayachnaya_korobka_b], [vospriyatie_b], [priznak], [koldu_b], [log_file], [kartograf_zam], [wgs84], [inserted], [nalichie_summa], [tipdumatc_kod], [montaj_summa], [electrika_summa], [tipdu_summa], [kategoriya_summa], [zakluchenie_du_history], [domdu2], [data_v_proverku], [data_ustr_zam], [adres_bti_proverka], [fasad_summa], [proverka_timer], [drugie_summa], [v_plane_v_rabote], [prinato_status], [prinato_data], [prinato_memo], [ustraneno_key], [dom_marshrut], [dlinafasada_key], [piktogrammi_key], [elektrpodkl_key], [vse_ok_key], [zamechaniya_nashi_text], [koordinati_timer], [zamechaniya_nashi_date], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [akt_podpisan_key], [isklucheno_key], [new_key], [isklucheno_pic], [isklucheno_date], [zamechaniya_key], [zamechaniya_nashi_key], [zakluchenie_du1], [zamechaniya_nashi_text_boss], [qrpath], [memo], [v_plane_key], [osmotren_key], [fio_vneseniya], [isklucheno_memo], [istochnik_dannich], [fio_vneseniya1], [oprosniy_list], [zakluchenie_du], [data_vvoda_akt], [qr], [doljnost_vvoda_akt], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [nedemontirovan_stariy], [naimenov_upr_org], [ne_ustanovlen], [zamechaniy_net], [status], [status_fio], [egko_fio], [fio_vvoda_akt], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [nesootv_kategorii], [fact_ustanovki], [vvost_fasad], [data_proverka_podsveta], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [doljnost], [egko_doljnost], [history], [data_osmotra], [data_osmotra_fio], [data_osmotra_doljnost], [pic2], [proverka_podsveta_foto], [checkpic3], [egko_map_txt], [proverka_karti], [fio], [montaj_plan], [organization_id], [subpodradchik_id], [date1], [pic1], [checkpic1], [razmerdu], [pic3], [ploshaddu], [ulitsadu], [domdu_ilion], [domdu], [montaj], [podradchik_id])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20171129-145131]
  ON [dbo].[reestr_t] ([demontaj_b])
  INCLUDE ([kod], [num], [project], [kategoriya], [unikalniy], [vost_fasada_b], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [dlina_fasada_b], [piktogrammi_b], [nalichie_podkl_b], [vozmojnost_podkl_b], [ust_na_linii_b], [tipdu_kod], [k_priemke_b], [adress_id], [EGKO], [raspayachnaya_korobka_b], [vospriyatie_b], [priznak], [koldu_b], [log_file], [kartograf_zam], [wgs84], [inserted], [nalichie_summa], [tipdumatc_kod], [montaj_summa], [electrika_summa], [tipdu_summa], [kategoriya_summa], [zakluchenie_du_history], [domdu2], [data_v_proverku], [data_ustr_zam], [adres_bti_proverka], [fasad_summa], [proverka_timer], [drugie_summa], [v_plane_v_rabote], [prinato_status], [prinato_data], [prinato_memo], [ustraneno_key], [dom_marshrut], [dlinafasada_key], [piktogrammi_key], [elektrpodkl_key], [vse_ok_key], [zamechaniya_nashi_text], [koordinati_timer], [zamechaniya_nashi_date], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [akt_podpisan_key], [isklucheno_key], [new_key], [isklucheno_pic], [isklucheno_date], [zamechaniya_key], [zamechaniya_nashi_key], [zakluchenie_du1], [zamechaniya_nashi_text_boss], [qrpath], [memo], [v_plane_key], [osmotren_key], [fio_vneseniya], [isklucheno_memo], [istochnik_dannich], [fio_vneseniya1], [oprosniy_list], [zakluchenie_du], [data_vvoda_akt], [qr], [doljnost_vvoda_akt], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [nedemontirovan_stariy], [naimenov_upr_org], [ne_ustanovlen], [zamechaniy_net], [status], [status_fio], [egko_fio], [fio_vvoda_akt], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [nesootv_kategorii], [fact_ustanovki], [vvost_fasad], [data_proverka_podsveta], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [doljnost], [egko_doljnost], [history], [data_osmotra], [data_osmotra_fio], [data_osmotra_doljnost], [pic2], [proverka_podsveta_foto], [checkpic3], [egko_map_txt], [proverka_karti], [fio], [montaj_plan], [organization_id], [subpodradchik_id], [date1], [pic1], [checkpic1], [razmerdu], [pic3], [ploshaddu], [ulitsadu], [domdu_ilion], [domdu], [montaj], [podradchik_id])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [NonClusteredIndex-20180123-090238]
  ON [dbo].[reestr_t] ([unikalniy])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20180423-115419]
  ON [dbo].[reestr_t] ([Program_ID])
  INCLUDE ([kod], [num], [project], [kategoriya], [unikalniy], [razmerdu], [ploshaddu], [ulitsadu], [domdu_ilion], [domdu], [montaj], [montaj_plan], [podradchik_id], [subpodradchik_id], [date1], [pic1], [checkpic1], [pic2], [pic3], [checkpic3], [egko_map_txt], [proverka_karti], [fio], [doljnost], [organization_id], [history], [data_osmotra], [data_osmotra_fio], [data_osmotra_doljnost], [fact_ustanovki], [proverka_podsveta_foto], [data_proverka_podsveta], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [egko_fio], [egko_doljnost], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [nesootv_kategorii], [nedemontirovan_stariy], [vvost_fasad], [ne_ustanovlen], [zamechaniy_net], [status], [status_fio], [data_vvoda_akt], [fio_vvoda_akt], [doljnost_vvoda_akt], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [fio_vneseniya], [naimenov_upr_org], [istochnik_dannich], [fio_vneseniya1], [oprosniy_list], [zakluchenie_du], [zakluchenie_du1], [qr], [qrpath], [memo], [v_plane_key], [osmotren_key], [isklucheno_key], [isklucheno_memo], [isklucheno_pic], [isklucheno_date], [zamechaniya_key], [zamechaniya_nashi_key], [zamechaniya_nashi_text], [zamechaniya_nashi_text_boss], [zamechaniya_nashi_date], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [akt_podpisan_key], [ustraneno_key], [new_key], [dlinafasada_key], [piktogrammi_key], [elektrpodkl_key], [vse_ok_key], [proverka_timer], [koordinati_timer], [v_plane_v_rabote], [prinato_status], [prinato_data], [prinato_memo], [zakluchenie_du_history], [dom_marshrut], [data_v_proverku], [data_ustr_zam], [adres_bti_proverka], [fasad_summa], [nalichie_summa], [drugie_summa], [montaj_summa], [electrika_summa], [tipdu_summa], [kategoriya_summa], [priznak], [domdu2], [log_file], [kartograf_zam], [wgs84], [inserted], [tipdu_kod], [tipdumatc_kod], [adress_id], [EGKO], [raspayachnaya_korobka_b], [vospriyatie_b], [dlina_fasada_b], [koldu_b], [piktogrammi_b], [nalichie_podkl_b], [vozmojnost_podkl_b], [demontaj_b], [ust_na_linii_b], [k_priemke_b], [vost_fasada_b], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [sootv_bti], [raspayachnaya_korobka], [vospriyatie], [dlina_fasada], [koldu], [piktogrammi], [nalichie_podkl], [vozmojnost_podkl], [demontaj], [ust_na_linii], [k_priemke], [vost_fasada], [sootvetstvie_tipa])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [organization_id]
  ON [dbo].[reestr_t] ([organization_id], [subpodradchik_id], [podradchik_id], [kod])
  INCLUDE ([num], [project], [vozmojnost_podkl_b], [demontaj_b], [sootv_bti_b], [wgs84_leg], [kategoriya], [unikalniy], [ust_na_linii_b], [k_priemke_b], [vost_fasada_b], [sootvetstvie_tipa_b], [raspayachnaya_korobka_b], [vospriyatie_b], [dlina_fasada_b], [koldu_b], [piktogrammi_b], [nalichie_podkl_b], [log_file], [kartograf_zam], [wgs84], [tipdu_kod], [tipdumatc_kod], [EGKO], [montaj_summa], [electrika_summa], [tipdu_summa], [kategoriya_summa], [priznak], [domdu2], [dom_marshrut], [data_v_proverku], [data_ustr_zam], [fasad_summa], [nalichie_summa], [drugie_summa], [koordinati_timer], [v_plane_v_rabote], [prinato_status], [prinato_data], [prinato_memo], [zakluchenie_du_history], [new_key], [dlinafasada_key], [piktogrammi_key], [elektrpodkl_key], [vse_ok_key], [proverka_timer], [zamechaniya_nashi_text_boss], [zamechaniya_nashi_date], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [akt_podpisan_key], [ustraneno_key], [isklucheno_memo], [isklucheno_pic], [isklucheno_date], [zamechaniya_key], [zamechaniya_nashi_key], [zamechaniya_nashi_text], [qr], [qrpath], [memo], [v_plane_key], [osmotren_key], [isklucheno_key], [naimenov_upr_org], [istochnik_dannich], [fio_vneseniya1], [oprosniy_list], [zakluchenie_du], [zakluchenie_du1], [fio_vvoda_akt], [doljnost_vvoda_akt], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [fio_vneseniya], [vvost_fasad], [ne_ustanovlen], [zamechaniy_net], [status], [status_fio], [data_vvoda_akt], [egko_doljnost], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [nesootv_kategorii], [nedemontirovan_stariy], [proverka_podsveta_foto], [data_proverka_podsveta], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [egko_fio], [history], [data_osmotra], [data_osmotra_fio], [data_osmotra_doljnost], [fact_ustanovki], [pic3], [checkpic3], [egko_map_txt], [proverka_karti], [fio], [doljnost], [montaj_plan], [date1], [pic1], [checkpic1], [pic2], [domdu], [montaj], [ulitsadu], [domdu_ilion], [razmerdu], [ploshaddu])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [reestr_t_1]
  ON [dbo].[reestr_t] ([kod])
  INCLUDE ([num], [project], [kategoriya], [unikalniy], [tipdumatc_kod], [sootv_bti_b], [k_priemke_b], [nalichie_podkl_b], [adress_id], [demontaj_b], [vospriyatie_b], [sootvetstvie_tipa_b], [koldu_b], [wgs84_leg], [domdu2], [vozmojnost_podkl_b], [kartograf_zam], [ust_na_linii_b], [inserted], [vost_fasada_b], [drugie_summa], [raspayachnaya_korobka_b], [electrika_summa], [dlina_fasada_b], [kategoriya_summa], [piktogrammi_b], [zakluchenie_du_history], [log_file], [data_v_proverku], [wgs84], [fasad_summa], [tipdu_kod], [proverka_timer], [montaj_summa], [v_plane_v_rabote], [tipdu_summa], [prinato_data], [priznak], [ustraneno_key], [dom_marshrut], [dlinafasada_key], [data_ustr_zam], [elektrpodkl_key], [nalichie_summa], [zamechaniya_nashi_text], [koordinati_timer], [zamechaniya_nashi_date], [prinato_status], [akt_v_ogs_key], [prinato_memo], [isklucheno_key], [new_key], [isklucheno_pic], [piktogrammi_key], [zamechaniya_key], [vse_ok_key], [zakluchenie_du1], [zamechaniya_nashi_text_boss], [qrpath], [zamechaniya_nashi_date_ustr], [v_plane_key], [akt_podpisan_key], [fio_vneseniya], [isklucheno_memo], [istochnik_dannich], [isklucheno_date], [oprosniy_list], [zamechaniya_nashi_key], [data_vvoda_akt], [qr], [doljnost_vvoda_akt], [memo], [nomer_ekpertnogo_zakl], [osmotren_key], [nedemontirovan_stariy], [naimenov_upr_org], [ne_ustanovlen], [fio_vneseniya1], [status], [zakluchenie_du], [egko_fio], [fio_vvoda_akt], [egko_data], [data_ekpertnogo_zakl], [nesootv_tipa], [naimenov_ekspert_org], [proverka_podsveta_foto], [vvost_fasad], [proverka_podsveta_sost], [zamechaniy_net], [proverka_podsveta_dojnost], [status_fio], [EGKO], [egko_doljnost], [data_osmotra], [tip_neobkhodimix_rabot], [data_osmotra_fio], [nesootv_kategorii], [fact_ustanovki], [data_proverka_podsveta], [checkpic3], [egko_map_txt], [ulitsadu], [proverka_podsveta_fio], [fio], [history], [montaj_plan], [date1], [montaj], [data_osmotra_doljnost], [checkpic1], [pic3], [razmerdu], [ploshaddu], [pic1], [proverka_karti], [pic2], [doljnost], [domdu_ilion], [domdu])
  ON [PRIMARY]
GO

CREATE INDEX [sootv_bti_b]
  ON [dbo].[reestr_t] ([sootv_bti_b])
  INCLUDE ([kod], [num], [project], [kategoriya], [unikalniy], [vost_fasada_b], [sootvetstvie_tipa_b], [wgs84_leg], [dlina_fasada_b], [piktogrammi_b], [vozmojnost_podkl_b], [demontaj_b], [tipdu_kod], [ust_na_linii_b], [adress_id], [k_priemke_b], [raspayachnaya_korobka_b], [vospriyatie_b], [priznak], [koldu_b], [log_file], [nalichie_podkl_b], [wgs84], [inserted], [nalichie_summa], [tipdumatc_kod], [montaj_summa], [EGKO], [tipdu_summa], [kategoriya_summa], [zakluchenie_du_history], [domdu2], [data_v_proverku], [kartograf_zam], [adres_bti_proverka], [fasad_summa], [proverka_timer], [drugie_summa], [v_plane_v_rabote], [electrika_summa], [prinato_data], [prinato_memo], [ustraneno_key], [dom_marshrut], [dlinafasada_key], [data_ustr_zam], [elektrpodkl_key], [vse_ok_key], [zamechaniya_nashi_text], [koordinati_timer], [zamechaniya_nashi_date], [prinato_status], [akt_v_ogs_key], [akt_podpisan_key], [isklucheno_key], [new_key], [isklucheno_pic], [piktogrammi_key], [zamechaniya_key], [zamechaniya_nashi_key], [zakluchenie_du1], [zamechaniya_nashi_text_boss], [qrpath], [zamechaniya_nashi_date_ustr], [v_plane_key], [osmotren_key], [fio_vneseniya], [isklucheno_memo], [istochnik_dannich], [isklucheno_date], [oprosniy_list], [zakluchenie_du], [data_vvoda_akt], [qr], [doljnost_vvoda_akt], [memo], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [nedemontirovan_stariy], [naimenov_upr_org], [ne_ustanovlen], [fio_vneseniya1], [status], [status_fio], [egko_fio], [fio_vvoda_akt], [egko_data], [data_ekpertnogo_zakl], [nesootv_tipa], [nesootv_kategorii], [fact_ustanovki], [vvost_fasad], [data_proverka_podsveta], [zamechaniy_net], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [doljnost], [egko_doljnost], [history], [tip_neobkhodimix_rabot], [data_osmotra_fio], [data_osmotra_doljnost], [pic2], [proverka_podsveta_foto], [checkpic3], [proverka_podsveta_sost], [proverka_karti], [fio], [montaj_plan], [organization_id], [subpodradchik_id], [data_osmotra], [pic1], [checkpic1], [razmerdu], [pic3], [ploshaddu], [egko_map_txt], [ulitsadu], [domdu_ilion], [domdu], [montaj], [podradchik_id], [date1])
  ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE SPATIAL INDEX [SIndx_Spatial1]
  ON [dbo].[reestr_t] ([wgs84])
  ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE SPATIAL INDEX [SIndx_Spatial2]
  ON [dbo].[reestr_t] ([wgs84_leg])
  ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE SPATIAL INDEX [SIndx_Spatial3]
  ON [dbo].[reestr_t] ([EGKO])
USING GEOMETRY_GRID
  WITH (BOUNDING_BOX = (XMIN = -30000, YMIN = -30000, XMAX = 30000, YMAX = 30000))
  ON [PRIMARY]
GO

DENY SELECT ([adres_bti_proverka]) ON [dbo].[reestr_t] TO [Перевощиков С.А.]
GO

GRANT
  SELECT,
  UPDATE
ON [dbo].[reestr_t] TO [esn_viewers]
GO

DENY
  DELETE,
  INSERT
ON [dbo].[reestr_t] TO [esn_viewers]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'идентификатор', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'kod'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'порядковый номер', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'num'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'название проекта', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'project'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'категория улицы (Магистральная, пешеходная...)', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'kategoriya'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Уникальный номер ДУ', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'unikalniy'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Размер ДУ', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'razmerdu'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Площадь ДУ', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'ploshaddu'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Информационное содержание указателя (улица)', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'ulitsadu'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Информационное содержание указателя (дом)', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'domdu'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Дата монтажа ДУ', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'montaj'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Дата внесения в базу', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'date1'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Фото - Общий вид', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'pic1'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'рисована стрелка или нет на Фото - Общий вид', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'checkpic1'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Фото - Крупный вид', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'pic2'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Фото - карта БТИ', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'pic3'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'есть метка на карте БТИ', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'checkpic3'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Фото - карта ЕГКО', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'egko_map_txt'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Проверка карты произведена', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'proverka_karti'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Сотрудник, внёсший запись в БД', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'fio'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Должность сотрудника, внёсшего запись в БД', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'doljnost'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'кто собрался проверять ДУ', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'status_fio'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Дата ввода опросного листа', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'data_vvoda_akt'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'ФИО кто ввел опросный лист', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'fio_vvoda_akt'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Дата экспертного заключения', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'data_ekpertnogo_zakl'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Номер экспертного заключения', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'nomer_ekpertnogo_zakl'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Наименование экспертной организации', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'naimenov_ekspert_org'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Сотрудник, внесший данные: ', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'fio_vneseniya'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Наименование управляющей компании', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'naimenov_upr_org'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Источник данных', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'istochnik_dannich'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'вводился опросный лист или нет. 1-вводился, 0- нет', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'oprosniy_list'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Общие заключение по ду', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'zakluchenie_du'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'заключение для экселевской таблицы с замечаниями', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'zakluchenie_du1'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Вероятно сделан на перспективу. Не похоже что используется, поскольку везде 0', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'akt_v_ogs_key'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Время затраченное за заполнение формы проверка', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'proverka_timer'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Время затраченное за заполнение формы координаты', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'koordinati_timer'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'метка для проверки. брали ДУ на проперку или нет. 1-печатали, 0 или "" нет', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'v_plane_v_rabote'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'выбираем номер дома для рисования маршрута (для сортировки по номеру дома и чет-нечет)', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'dom_marshrut'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'дата когда получено задание', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'data_v_proverku'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'проверка адреса БТИ. данные вносятся картографами.', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'adres_bti_proverka'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'для расчета количества замечаний по фасадам', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'fasad_summa'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'для расчета количества замечаний по не установленным указателям', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'nalichie_summa'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'для расчета количества других не стандартных замечаний ', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'drugie_summa'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'для расчета количества замечаний не снятым старым указателям', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'montaj_summa'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'для расчета количества замечаний не соответствию типа ДУ', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'tipdu_summa'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'для расчета количества замечаний по категории ду', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'kategoriya_summa'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'количество ду в присланой таблице илиона', 'SCHEMA', N'dbo', 'TABLE', N'reestr_t', 'COLUMN', N'priznak'
GO
CREATE TABLE [dbo].[gu] (
  [kod] [int] IDENTITY NOT FOR REPLICATION,
  [project] [nvarchar](max) NULL,
  [num] [nchar](10) NULL,
  [data_montaja] [date] NULL,
  [status] [nvarchar](max) NULL,
  [fio] [nvarchar](max) NULL,
  [fio_doljnost] [nvarchar](max) NULL,
  [data_v_proverku] [date] NULL,
  [data_osmotra] [date] NULL,
  [fact_ustanovki] [nvarchar](max) NULL,
  [unikalniy] [nvarchar](max) NULL,
  [tipgu] [nvarchar](50) NULL,
  [okrug] [nvarchar](max) NULL,
  [ulitsa] [nvarchar](max) NULL,
  [nazvanie_ulitsi] [nvarchar](max) NULL,
  [dom_korp_str] [nvarchar](max) NULL,
  [odnostoronie_dvijenie] [nchar](10) NULL,
  [izmerennaya_shirina_trotuara] [nvarchar](max) NULL,
  [otsenochaya_shirina_trotuara] [nvarchar](max) NULL,
  [rastoyanie_ot_opori] [nvarchar](max) NULL,
  [tip_poverchnosti] [nvarchar](max) NULL,
  [prokhodimost] [nvarchar](max) NULL,
  [rekonstruktsiya] [nvarchar](max) NULL,
  [prosmatrivaemost] [nvarchar](max) NULL,
  [sostoyaniegu] [nvarchar](max) NULL,
  [orientatsiyagu] [nvarchar](max) NULL,
  [sootv_tech_pasport] [nvarchar](max) NULL,
  [rastoyanie_do_mesta_ust_po_pasportu] [nvarchar](max) NULL,
  [po_prosmatrivaemosti] [nvarchar](max) NULL,
  [po_shirine_trotuara_v_meste_ustanovki] [nvarchar](max) NULL,
  [po_otsutstviyu_navisaniya_nad_proezzhej_chastyu] [nvarchar](max) NULL,
  [po_raspolozheniyu_otnositelno_zelenykh_nasazhdenij] [nvarchar](max) NULL,
  [po_rasstoyaniyu_ot_vkhoda_v_transportnye_uzly_i_doma] [nvarchar](max) NULL,
  [po_rasstoyaniyu_do_kraya_velosipednoj_dorozhki] [nvarchar](max) NULL,
  [po_soderzhaniyu] [nvarchar](max) NULL,
  [po_kolichestvu_i_pravilnomu_raspolozheniyu] [nvarchar](max) NULL,
  [kolichestvo_informatsionnykh_polej] [nchar](10) NULL,
  [nalichie_modulya_s_kartoj_mestnosti] [nvarchar](max) NULL,
  [oformlenie_osnovaniya] [nvarchar](max) NULL,
  [territoriya] [nvarchar](max) NULL,
  [razmer_betonnogo_bloka_dlina] [nvarchar](max) NULL,
  [razmer_betonnogo_bloka_shirina] [nvarchar](max) NULL,
  [ploschad_vosstanovitelnykh_rabot_posle_zaglubleniya] [nvarchar](max) NULL,
  [vyvoz_tekhniki_inventarya_oborudovaniya] [nvarchar](max) NULL,
  [inye_narusheniya_trebovanij_tekhnicheskikh_pravil_k_gorodskim_uk] [nvarchar](max) NULL,
  [zaklyuchenie] [nvarchar](max) NULL,
  [tip_narusheniya_vneshnego_vida_i_tekhnicheskogo_sostoyaniya] [nvarchar](max) NULL,
  [data_otpravki_inforiatsii_ispolnitelyu] [date] NULL,
  [egko_x] [nvarchar](max) NULL,
  [egko_y] [nvarchar](max) NULL,
  [adres_v_moskve] [nchar](10) NULL,
  [naimenovaniya_i_narpavleniya_ukazannye_na_inf_polyakh_verny] [nvarchar](max) NULL,
  [otmetka_o_zanesenii_v_asu_inventarnyj_nomer] [nvarchar](max) NULL,
  [data_zaneseniya_informatsii_v_asu] [date] NULL,
  [sotrudnik_zanesshij_dannye_v_asu] [nvarchar](max) NULL,
  [data_ustanovki_po_grafiku] [date] NULL,
  [god_realizatsii] [int] NULL,
  [etap_rabot] [nvarchar](max) NULL,
  [proekt] [nvarchar](max) NULL,
  [data_montaja_plan] [date] NULL,
  [data_postupleniya_informatsiya_v_otdel_monitoringa] [date] NULL,
  [ploschad_betonnogo_bloka_kvm] [nvarchar](max) NULL,
  [dolzhnost_sotrudnika_obsledovavshego_gu] [nvarchar](max) NULL,
  [dolzhnost_sotrudnika_zanesshego_nformatsiyu_v_asu] [nvarchar](max) NULL,
  [prim] [nvarchar](max) NULL,
  [akt_v_arkhive] [nchar](10) NULL,
  [inf_pole_blok_1_storona_a] [nvarchar](max) NULL,
  [inf_pole_blok_1_storona_b] [nvarchar](max) NULL,
  [inf_pole_blok_2_storona_a] [nvarchar](max) NULL,
  [inf_pole_blok_2_storona_b] [nvarchar](max) NULL,
  [inf_pole_blok_3_storona_a] [nvarchar](max) NULL,
  [inf_pole_blok_3_storona_b] [nvarchar](max) NULL,
  [inf_pole_blok_4_storona_a] [nvarchar](max) NULL,
  [inf_pole_blok_4_storona_b] [nvarchar](max) NULL,
  [foto_storona_a] [nvarchar](max) NULL,
  [foto_storona_b] [nvarchar](max) NULL,
  [foto_text_1] [nvarchar](max) NULL,
  [foto_text_2] [nvarchar](max) NULL,
  [foto_text_3] [nvarchar](max) NULL,
  [foto_text_4] [nvarchar](max) NULL,
  [geogr_koordinati] [nvarchar](max) NULL,
  [koordinati_leg] [nvarchar](max) NULL,
  [zamechaniya_key] [int] NULL,
  [v_plane_v_rabote] [int] NULL,
  [vse_ok_key] [int] NULL,
  [v_plane_key] [int] NULL,
  [ustraneno_key] [int] NULL,
  [akt_v_ogs_key] [int] NULL,
  [prinato_key] [int] NULL,
  [zam1_key] [int] NULL,
  [zam2_key] [int] NULL,
  [zam3_key] [int] NULL,
  [zam4_key] [int] NULL,
  [data_prinatiya] [date] NULL,
  [obkhodchik_timer] [nvarchar](max) NULL,
  [zam1_text] [nvarchar](max) NULL,
  [zam2_text] [nvarchar](max) NULL,
  [zam3_text] [nvarchar](max) NULL,
  [zam4_text] [nvarchar](max) NULL,
  [zam1_foto] [nvarchar](max) NULL,
  [zam2_foto] [nvarchar](max) NULL,
  [zam3_foto] [nvarchar](max) NULL,
  [zam4_foto] [nvarchar](max) NULL,
  [memo] [nvarchar](max) NULL,
  [isklucheno_key] [int] NULL,
  [isklucheno_date] [date] NULL,
  [isklucheno_memo] [nvarchar](max) NULL,
  [isklucheno_pic] [nvarchar](max) NULL,
  [qr] [nvarchar](max) NULL,
  CONSTRAINT [PK_gu] PRIMARY KEY CLUSTERED ([kod])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create TRIGGER [gu_update]
ON [dbo].[gu]  AFTER  UPDATE 
AS 
BEGIN
	SET NOCOUNT ON;
INSERT INTO [GBUMATC].[dbo].[gu_log]
           ([kod]
           ,[project]
           ,[num]
           ,[data_montaja]
           ,[status]
           ,[fio]
           ,[fio_doljnost]
           ,[data_v_proverku]
           ,[data_osmotra]
           ,[fact_ustanovki]
           ,[unikalniy]
           ,[tipgu]
           ,[okrug]
           ,[ulitsa]
           ,[nazvanie_ulitsi]
           ,[dom_korp_str]
           ,[odnostoronie_dvijenie]
           ,[izmerennaya_shirina_trotuara]
           ,[otsenochaya_shirina_trotuara]
           ,[rastoyanie_ot_opori]
           ,[tip_poverchnosti]
           ,[prokhodimost]
           ,[rekonstruktsiya]
           ,[prosmatrivaemost]
           ,[sostoyaniegu]
           ,[orientatsiyagu]
           ,[sootv_tech_pasport]
           ,[rastoyanie_do_mesta_ust_po_pasportu]
           ,[po_prosmatrivaemosti]
           ,[po_shirine_trotuara_v_meste_ustanovki]
           ,[po_otsutstviyu_navisaniya_nad_proezzhej_chastyu]
           ,[po_raspolozheniyu_otnositelno_zelenykh_nasazhdenij]
           ,[po_rasstoyaniyu_ot_vkhoda_v_transportnye_uzly_i_doma]
           ,[po_rasstoyaniyu_do_kraya_velosipednoj_dorozhki]
           ,[po_soderzhaniyu]
           ,[po_kolichestvu_i_pravilnomu_raspolozheniyu]
           ,[kolichestvo_informatsionnykh_polej]
           ,[nalichie_modulya_s_kartoj_mestnosti]
           ,[oformlenie_osnovaniya]
           ,[territoriya]
           ,[razmer_betonnogo_bloka_dlina]
           ,[razmer_betonnogo_bloka_shirina]
           ,[ploschad_vosstanovitelnykh_rabot_posle_zaglubleniya]
           ,[vyvoz_tekhniki_inventarya_oborudovaniya]
           ,[inye_narusheniya_trebovanij_tekhnicheskikh_pravil_k_gorodskim_uk]
           ,[zaklyuchenie]
           ,[tip_narusheniya_vneshnego_vida_i_tekhnicheskogo_sostoyaniya]
           ,[data_otpravki_inforiatsii_ispolnitelyu]
           ,[egko_x]
           ,[egko_y]
           ,[adres_v_moskve]
           ,[naimenovaniya_i_narpavleniya_ukazannye_na_inf_polyakh_verny]
           ,[otmetka_o_zanesenii_v_asu_inventarnyj_nomer]
           ,[data_zaneseniya_informatsii_v_asu]
           ,[sotrudnik_zanesshij_dannye_v_asu]
           ,[data_ustanovki_po_grafiku]
           ,[god_realizatsii]
           ,[etap_rabot]
           ,[proekt]
           ,[data_montaja_plan]
           ,[data_postupleniya_informatsiya_v_otdel_monitoringa]
           ,[ploschad_betonnogo_bloka_kvm]
           ,[dolzhnost_sotrudnika_obsledovavshego_gu]
           ,[dolzhnost_sotrudnika_zanesshego_nformatsiyu_v_asu]
           ,[prim]
           ,[akt_v_arkhive]
           ,[inf_pole_blok_1_storona_a]
           ,[inf_pole_blok_1_storona_b]
           ,[inf_pole_blok_2_storona_a]
           ,[inf_pole_blok_2_storona_b]
           ,[inf_pole_blok_3_storona_a]
           ,[inf_pole_blok_3_storona_b]
           ,[inf_pole_blok_4_storona_a]
           ,[inf_pole_blok_4_storona_b]
           ,[foto_storona_a]
           ,[foto_storona_b]
           ,[foto_text_1]
           ,[foto_text_2]
           ,[foto_text_3]
           ,[foto_text_4]
           ,[geogr_koordinati]
           ,[koordinati_leg]
           ,[zamechaniya_key]
           ,[v_plane_v_rabote]
           ,[vse_ok_key]
           ,[v_plane_key]
           ,[ustraneno_key]
           ,[akt_v_ogs_key]
           ,[prinato_key]
           ,[zam1_key]
           ,[zam2_key]
           ,[zam3_key]
           ,[zam4_key]
           ,[data_prinatiya]
           ,[obkhodchik_timer]
           ,[zam1_text]
           ,[zam2_text]
           ,[zam3_text]
           ,[zam4_text]
           ,[zam1_foto]
           ,[zam2_foto]
         ,[zam3_foto]
           ,[zam4_foto]
           ,[memo]
           ,[isklucheno_key]
           ,[isklucheno_date]
           ,[isklucheno_memo]
           ,[isklucheno_pic]
           ,[qr])
     SELECT 
		[kod]
           ,[project]
           ,[num]
           ,[data_montaja]
           ,[status]
           ,[fio]
           ,[fio_doljnost]
           ,[data_v_proverku]
           ,[data_osmotra]
           ,[fact_ustanovki]
           ,[unikalniy]
           ,[tipgu]
           ,[okrug]
           ,[ulitsa]
           ,[nazvanie_ulitsi]
           ,[dom_korp_str]
           ,[odnostoronie_dvijenie]
           ,[izmerennaya_shirina_trotuara]
           ,[otsenochaya_shirina_trotuara]
           ,[rastoyanie_ot_opori]
           ,[tip_poverchnosti]
           ,[prokhodimost]
           ,[rekonstruktsiya]
           ,[prosmatrivaemost]
           ,[sostoyaniegu]
           ,[orientatsiyagu]
           ,[sootv_tech_pasport]
           ,[rastoyanie_do_mesta_ust_po_pasportu]
           ,[po_prosmatrivaemosti]
           ,[po_shirine_trotuara_v_meste_ustanovki]
           ,[po_otsutstviyu_navisaniya_nad_proezzhej_chastyu]
           ,[po_raspolozheniyu_otnositelno_zelenykh_nasazhdenij]
           ,[po_rasstoyaniyu_ot_vkhoda_v_transportnye_uzly_i_doma]
           ,[po_rasstoyaniyu_do_kraya_velosipednoj_dorozhki]
           ,[po_soderzhaniyu]
           ,[po_kolichestvu_i_pravilnomu_raspolozheniyu]
           ,[kolichestvo_informatsionnykh_polej]
           ,[nalichie_modulya_s_kartoj_mestnosti]
           ,[oformlenie_osnovaniya]
           ,[territoriya]
           ,[razmer_betonnogo_bloka_dlina]
           ,[razmer_betonnogo_bloka_shirina]
           ,[ploschad_vosstanovitelnykh_rabot_posle_zaglubleniya]
           ,[vyvoz_tekhniki_inventarya_oborudovaniya]
           ,[inye_narusheniya_trebovanij_tekhnicheskikh_pravil_k_gorodskim_uk]
           ,[zaklyuchenie]
           ,[tip_narusheniya_vneshnego_vida_i_tekhnicheskogo_sostoyaniya]
           ,[data_otpravki_inforiatsii_ispolnitelyu]
           ,[egko_x]
           ,[egko_y]
           ,[adres_v_moskve]
           ,[naimenovaniya_i_narpavleniya_ukazannye_na_inf_polyakh_verny]
           ,[otmetka_o_zanesenii_v_asu_inventarnyj_nomer]
           ,[data_zaneseniya_informatsii_v_asu]
           ,[sotrudnik_zanesshij_dannye_v_asu]
           ,[data_ustanovki_po_grafiku]
           ,[god_realizatsii]
           ,[etap_rabot]
           ,[proekt]
           ,[data_montaja_plan]
           ,[data_postupleniya_informatsiya_v_otdel_monitoringa]
           ,[ploschad_betonnogo_bloka_kvm]
           ,[dolzhnost_sotrudnika_obsledovavshego_gu]
           ,[dolzhnost_sotrudnika_zanesshego_nformatsiyu_v_asu]
           ,[prim]
           ,[akt_v_arkhive]
           ,[inf_pole_blok_1_storona_a]
           ,[inf_pole_blok_1_storona_b]
           ,[inf_pole_blok_2_storona_a]
           ,[inf_pole_blok_2_storona_b]
           ,[inf_pole_blok_3_storona_a]
           ,[inf_pole_blok_3_storona_b]
           ,[inf_pole_blok_4_storona_a]
           ,[inf_pole_blok_4_storona_b]
           ,[foto_storona_a]
           ,[foto_storona_b]
           ,[foto_text_1]
           ,[foto_text_2]
           ,[foto_text_3]
           ,[foto_text_4]
           ,[geogr_koordinati]
           ,[koordinati_leg]
           ,[zamechaniya_key]
           ,[v_plane_v_rabote]
           ,[vse_ok_key]
           ,[v_plane_key]
           ,[ustraneno_key]
           ,[akt_v_ogs_key]
           ,[prinato_key]
           ,[zam1_key]
           ,[zam2_key]
           ,[zam3_key]
           ,[zam4_key]
           ,[data_prinatiya]
           ,[obkhodchik_timer]
           ,[zam1_text]
           ,[zam2_text]
           ,[zam3_text]
           ,[zam4_text]
           ,[zam1_foto]
           ,[zam2_foto]
           ,[zam3_foto]
           ,[zam4_foto]
           ,[memo]
           ,[isklucheno_key]
     ,[isklucheno_date]
           ,[isklucheno_memo]
           ,[isklucheno_pic]
           ,[qr]
          FROM INSERTED
   END
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'для qr кода', 'SCHEMA', N'dbo', 'TABLE', N'gu', 'COLUMN', N'qr'
GO

CREATE FULLTEXT INDEX
  ON [dbo].[gu]([inf_pole_blok_1_storona_a] LANGUAGE 1049, [inf_pole_blok_1_storona_b] LANGUAGE 1049, [inf_pole_blok_2_storona_a] LANGUAGE 1049, [inf_pole_blok_2_storona_b] LANGUAGE 1049, [inf_pole_blok_3_storona_a] LANGUAGE 1049, [inf_pole_blok_3_storona_b] LANGUAGE 1049, [inf_pole_blok_4_storona_a] LANGUAGE 1049, [inf_pole_blok_4_storona_b] LANGUAGE 1049)
  KEY INDEX [PK_gu]
  ON [1]
  WITH CHANGE_TRACKING AUTO, STOPLIST SYSTEM
GO
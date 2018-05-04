/****** Object:  StoredProcedure [dbo].[find_reestr_by_kod]    Script Date: 08/05/2016 08:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[find_reestr_by_kod]
@kod int
as



select
kod
,nazvanie_ulitsi
,dom_korp_str
,kategoriya
,unikalniy
,tipdu
,ulitsadu
,domdu


/*,

 okrug [Округ], ulitsa [Район],
 tipdu [Тип ДУ], data_osmotra_fio [Сотрудник], proverka_karti [Наличие карты БТИ] */
from reestr 
where kod=@kod
GO

/****** Object:  StoredProcedure [dbo].[p_reestr_clear_fio]    Script Date: 08/05/2016 08:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [dbo].[p_reestr_clear_fio] 
@fio as varchar(3000)
as

exec ('update [reestr] set  data_osmotra_fio='''',data_osmotra_doljnost='''',data_v_proverku=null ,v_plane_v_rabote=''0'' where kod in('+@fio+')')
GO

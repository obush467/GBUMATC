/****** Object:  StoredProcedure [dbo].[p_readokrug]    Script Date: 08/05/2016 08:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[p_readokrug]
@dostup as varchar(255)
as 


set @dostup =isnull(''''+replace(replace(replace(@dostup,', ',','),' ,',','),',',''',''')+'''','')

if(@dostup not like '%all%')
 begin
  exec('select distinct okrug from tbo_adres a
  where okrug in ('+@dostup+')')
end
else
 begin
   select distinct okrug from tbo_adres a
 end
GO

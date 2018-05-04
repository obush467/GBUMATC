SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE procedure [dbo].[Сводная_помесячно_и_нарастающим]
as
begin
declare @t1 table (
	Округ varchar(50) null, 
	Район varchar(50) null,
	январь	int null,
	февраль	int null,
	март int null,
	апрель	int null,
	май int null,
	июнь int null,
	июль int null,
	август int null,
	сентябрь int null, 
	октябрь Int null,
	ноябрь int null, 
	декабрь int null,
	[Общий итог] int null
)

declare @t2 table (
	Округ varchar(50) null, 
	Район varchar(50) null,
	январь	int null,
	февраль	int null,
	март int null,
	апрель	int null,
	май int null,
	июнь int null,
	июль int null,
	август int null,
	сентябрь int null, 
	октябрь Int null,
	ноябрь int null, 
	декабрь int null,
	[Общий итог] int null
)
insert into @t1(Округ,Район,январь,февраль,март,апрель,май,июнь,июль,август,сентябрь,октябрь,ноябрь,декабрь,[Общий итог]) EXECUTE [dbo].[отчёт_Сводная_помесячно]
insert into @t2 (Округ,Район,январь,февраль,март,апрель,май,июнь,июль,август,сентябрь,октябрь,ноябрь,декабрь) EXECUTE [dbo].[отчёт_Сводная_нарастающим_итогом]

select 
	t1.Округ,
	t1.Район,
	t1.январь,
	t2.январь,
	t1.февраль,
	t2.февраль,
	t1.март,
	t2.март,
	t1.апрель,
	t2.апрель,
	t1.май,
	t2.май,
	t1.июнь,
	t2.июнь,
	t1.июль,
	t2.июль,
	t1.август,
	t2.август,
	t1.сентябрь,
	t2.сентябрь,
	t1.октябрь,
	t2.октябрь,
	t1.ноябрь,
	t2.ноябрь,
	t1.декабрь,
	t2.декабрь	
from 
	@t1 t1 
	inner join @t2 t2 
	on	dbo.lrtrim_isnull(t1.Округ)=dbo.lrtrim_isnull(t2.Округ) 
		and dbo.lrtrim_isnull(t1.Район)=dbo.lrtrim_isnull(t2.Район)

end

GO

GRANT EXECUTE ON [dbo].[Сводная_помесячно_и_нарастающим] TO [Гость]
GO
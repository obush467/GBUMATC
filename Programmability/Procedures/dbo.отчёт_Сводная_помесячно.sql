SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[отчёт_Сводная_помесячно]
AS
begin
set nocount on;
DECLARE @MONTH INT, @YEAR INT, @DATE DATE, @I INT
SET @DATE = getdate()
SET @YEAR=year(@DATE)
SET @MONTH=MONTH(@DATE)
DECLARE @T [dbo].[intTable]
SET @I=1
WHILE @I<=@MONTH 
	BEGIN 
	INSERT INTO @T(ID) VALUES(@I)
	SET @I=@I+1
	END

select
CASE WHEN GROUPING(Округ)=1 THEN 'Общий итог'
ELSE Округ END Округ,
CASE WHEN GROUPING(Район)=1 THEN 
	CASE WHEN GROUPING(Округ)=1 THEN ''
	ELSE 'Итого по округу' END
ELSE Район END Район,
sum([1]) январь, sum([2]) февраль, sum([3]) март, sum([4]) апрель, sum([5]) май, sum([6]) июнь, sum([7]) июль, sum([8]) август, sum([9]) сентябрь, sum([10]) октябрь, sum([11]) ноябрь, sum([12]) декабрь,
(isnull(sum([1]),0)+isnull(sum([2]),0)+isnull(sum([3]),0)+isnull(sum([4]),0)+isnull(sum([5]),0)+isnull(sum([6]),0) +isnull(sum([7]),0)+isnull(sum([8]),0)+ isnull(sum([9]),0)+isnull(sum([10]),0) + isnull(sum([11]),0)+ isnull(sum([12]),0)) [Общий итог]
from

(SELECT
	Месяц,
	Okrug.shortName Округ, 
	Район,
	SUM([За период]) [За период],
	SUM([Нарастающим итогом]) [Нарастающим итогом]
	FROM
	(SELECT D.*,isnull(S.[За период],0) [За период],		
		(select count(*) 
				from [dbo].[reestr] rinner
				where
					year(date1)=@YEAR
					and 
					month(rinner.date1)<=d.Месяц
					and
					d.Округ=rinner.okrug
					and
					d.Район=rinner.ulitsa
				) [Нарастающим итогом]	
	FROM
	(SELECT DISTINCT T.ID Месяц, [okrug] Округ,[ulitsa] Район from [dbo].[reestr] CROSS JOIN @T T WHERE year(date1)=@YEAR and isnull(isklucheno_key,0)=0) D
left OUTER JOIN
	(select
		month(date1) Месяц
		,[okrug] Округ
		,[ulitsa] Район
		,count(*) [За период]	
	FROM [dbo].[reestr] r
	where
	year(date1)=@YEAR and isklucheno_key=0
	group by 
		month(date1)
		,[okrug] 
		,[ulitsa]) S
ON D.Округ=S.Округ AND D.Район=S.Район and d.Месяц=s.Месяц) EE
inner join Okrug
on Okrug.shortName=EE.Округ
GROUP BY МЕСЯЦ, Okrug.shortName, РАЙОН) p
pivot
( max([За период]) for месяц in ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12])
) o

GROUP BY ОКРУГ, РАЙОН with rollup

END

GO

GRANT EXECUTE ON [dbo].[отчёт_Сводная_помесячно] TO [Гость]
GO
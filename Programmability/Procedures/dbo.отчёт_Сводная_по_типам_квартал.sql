SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[отчёт_Сводная_по_типам_квартал] 
(@year int,@Quarter int)
AS
BEGIN
	SET NOCOUNT ON;
	Select Округ, Район, sum ([ДУ-К-Д]) [ДУ-К-Д], sum ([ДУ-К-С]) [ДУ-К-С],sum ([ДУ-К-У]) [ДУ-К-У],	sum ([ДУ-К-УД]) [ДУ-К-УД],	sum ([ДУ-КЭ-Д]) [ДУ-КЭ-Д],	sum ([ДУ-КЭ-С]) [ДУ-КЭ-С],	sum ([ДУ-М-Д]) [ДУ-М-Д],	sum ([ДУ-М-С]) [ДУ-М-С],	sum ([ДУ-М-У]) [ДУ-М-У],	sum ([ДУ-М-УД]) [ДУ-М-УД] , sum ([ДУ-КП-Д]) [ДУ-КП-Д], sum ([ДУ-КП-УД]) [ДУ-КП-УД] 
	from 
	(SELECT [shortName] Округ
		  ,[ulitsa] Район
		  ,[tipdu] Тип
		  ,count([unikalniy]) Количество
      
      
	 FROM [reestr] inner join okrug on okrug.shortName=reestr.okrug
	 where DATEPART(yy,date1)=@YEAR 
		and datepart(qq,date1)=@Quarter 
		and isklucheno_key=0
	 group by [shortName]
		  ,[ulitsa]
		  ,[tipdu]) as eee
		  pivot
		  (
		  sum(Количество)
		  for Тип in ([ДУ-К-Д],	[ДУ-К-С],[ДУ-К-У],	[ДУ-К-УД],	[ДУ-КЭ-Д],	[ДУ-КЭ-С],	[ДУ-М-Д],	[ДУ-М-С],	[ДУ-М-У],	[ДУ-М-УД], [ДУ-КП-Д], [ДУ-КП-УД])
	) as ddd
	GROUP BY Округ, Район WITH ROLLUP
END



GO
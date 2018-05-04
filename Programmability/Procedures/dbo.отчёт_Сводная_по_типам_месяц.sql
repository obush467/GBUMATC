SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[отчёт_Сводная_по_типам_месяц] 
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @MONTH INT, @YEAR INT, @DATE DATE
	SET @DATE = DATEADD(mm,-1,getdate())
	SET @YEAR=year(@DATE)
	SET @MONTH=MONTH(@DATE)
	Select Округ, 
		Район, 
		sum ([ДУ-К-Д]) [ДУ-К-Д], 
		sum ([ДУ-К-С]) [ДУ-К-С],
		sum ([ДУ-К-У]) [ДУ-К-У],	
		sum ([ДУ-К-УД]) [ДУ-К-УД],	
		sum ([ДУ-КЭ-Д]) [ДУ-КЭ-Д],	
		sum ([ДУ-КЭ-У]) [ДУ-КЭ-У],
		sum ([ДУ-КЭ-УД]) [ДУ-КЭ-УД], 
		sum ([ДУ-КЭ-С]) [ДУ-КЭ-С],	
		sum ([ДУ-М-Д]) [ДУ-М-Д],	
		sum ([ДУ-М-С]) [ДУ-М-С],	
		sum ([ДУ-М-У]) [ДУ-М-У],	
		sum ([ДУ-М-УД]) [ДУ-М-УД] , 
		sum ([ДУ-КП-Д]) [ДУ-КП-Д], 
		sum ([ДУ-КП-УД]) [ДУ-КП-УД],
		sum ([ДУ-КП-У]) [ДУ-КП-У],
		(sum (isnull([ДУ-К-Д],0)) + 
		sum (isnull([ДУ-К-С],0)) +
		sum (isnull([ДУ-К-У],0)) +	
		sum (isnull([ДУ-К-УД],0)) +
		sum (isnull([ДУ-КЭ-Д],0)) +
		sum (isnull([ДУ-КЭ-У],0)) +
		sum (isnull([ДУ-КЭ-УД],0)) +
		sum (isnull([ДУ-КЭ-С],0)) +
		sum (isnull([ДУ-М-Д],0)) +
		sum (isnull([ДУ-М-С],0)) +
		sum (isnull([ДУ-М-У],0)) +
		sum (isnull([ДУ-М-УД],0)) +
		sum (isnull([ДУ-КП-Д],0)) +
		sum (isnull([ДУ-КП-УД],0)) +
		sum (isnull([ДУ-КП-У],0))) [Общий итог]
	from 
	(SELECT [shortName] Округ
		  ,[ulitsa] Район
		  ,[tipdu] Тип
		  ,count([unikalniy]) Количество
      
      
	 FROM [reestr] inner join okrug on okrug.shortName=reestr.okrug
	 where year(date1)=@YEAR and MONTH(date1)=@MONTH and isklucheno_key=0
	 group by [shortName]
		  ,[ulitsa]
		  ,[tipdu]) as eee
		  pivot
		  (
		  sum(Количество)
		  for Тип in ([ДУ-К-Д],	[ДУ-К-С],[ДУ-К-У],	[ДУ-К-УД],	[ДУ-КЭ-Д],[ДУ-КЭ-У],[ДУ-КЭ-УД],	[ДУ-КЭ-С],	[ДУ-М-Д],	[ДУ-М-С],	[ДУ-М-У],	[ДУ-М-УД], [ДУ-КП-Д], [ДУ-КП-УД],[ДУ-КП-У])
	) as ddd
	GROUP BY Округ, Район WITH ROLLUP
END


GO

GRANT EXECUTE ON [dbo].[отчёт_Сводная_по_типам_месяц] TO [Гость]
GO
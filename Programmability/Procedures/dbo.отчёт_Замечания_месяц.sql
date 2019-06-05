SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[отчёт_Замечания_месяц] 
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @MONTH INT, @YEAR INT, @DATE DATE
	SET @DATE = DATEADD(mm,0,getdate())
	SET @YEAR=year(@DATE)
	SET @MONTH=MONTH(@DATE)
	SELECT 
		rank() over ( order by ZS.Округ,ZS.Район,ZS.Улица,ZS.Дом,[unikalniy]) as Номер
		,[unikalniy] УНИУ
		,ZS.[Тип]
		,ZS.Округ
		,ZS.Район
		,ZS.Улица
		,ZS.Дом
		,ZS.[Тип замечания]
	FROM [dbo].[reestr_t] R
	INNER join zam_Sending ZS
	ON ZS.[Номер]=R.unikalniy
	where
	year(date1)=@YEAR and MONTH(date1)=@MONTH
	and isklucheno_key=0
	order by 
		ZS.Округ
		,ZS.Район
		,ZS.Улица
		,ZS.Дом
END


GO

GRANT EXECUTE ON [dbo].[отчёт_Замечания_месяц] TO [Гость]
GO
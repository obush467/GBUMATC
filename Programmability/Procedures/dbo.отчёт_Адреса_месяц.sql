SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[отчёт_Адреса_месяц] 
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @MONTH INT, @YEAR INT, @DATE DATE
	SET @DATE = DATEADD(mm,-1,getdate())
	SET @YEAR=year(@DATE)
	SET @MONTH=MONTH(@DATE)
	SELECT 
		rank() over ( order by [okrug],[ulitsa],[nazvanie_ulitsi],[dom_korp_str],[unikalniy]) as Номер,
		[unikalniy] УНИУ
		,[tipdu] Тип
		,[okrug] Округ
		,[ulitsa] Район
		,[nazvanie_ulitsi] Улица
		,[dom_korp_str] Дом
	FROM [dbo].[reestr]
	where
	year(date1)=@YEAR and MONTH(date1)=@MONTH
	and isklucheno_key=0
	order by 
		[okrug] 
		,[ulitsa] 
		,[nazvanie_ulitsi] 
		,[dom_korp_str]
END


GO

GRANT EXECUTE ON [dbo].[отчёт_Адреса_месяц] TO [Гость]
GO
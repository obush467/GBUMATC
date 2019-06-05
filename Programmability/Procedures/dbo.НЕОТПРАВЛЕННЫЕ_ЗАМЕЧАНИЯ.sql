SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE	[dbo].[НЕОТПРАВЛЕННЫЕ_ЗАМЕЧАНИЯ]
AS
BEGIN
SET NOCOUNT ON;
declare @DataNapr date
set @DataNapr=getdate()
declare @IDTable table (kod int, zam_type varchar(50))
update reestr_zamechaniya
set 
	napravleno=@DataNapr
OUTPUT inserted.kod, inserted.zam_type into @IDTable
FROM
	reestr_t t INNER JOIN reestr_zamechaniya AS z 
	ON t.kod = z.kod
	INNER JOIN adress a ON t.adress_id=a.id
	INNER JOIN Okrug
	ON 
	Okrug.ID=a.okrug_id
WHERE
	(NOT (ISNULL(z.status, N'') IN ('снято', 'устранено'))) 
	AND 
	(
		ISNULL(z.text, '') <> '' 
		OR
        ISNULL(z.zam, '') <> ''
	) 
	AND 
	(ISNULL(z.zam, '') <> 'установлен') 
	AND 
	(t.isklucheno_key = 0) 
	AND 
	(t.zamechaniya_key = 1) 
	AND 
	(t.vse_ok_key = 0) 
	AND 
	(t.k_priemke_b = 2) 
	AND 
	(NOT (t.data_osmotra IS NULL)) 
	AND 
	(z.napravleno IS NULL)
SELECT 
	R.unikalniy AS Номер, 
	Okrug.shortName AS Округ, 
	raion.shortName AS Район, 
	a.nazvanie_ulitsi AS Улица,
	[dbo].[dom_korp_str_toString](a.dom,a.korpus,a.stroenie,DT.domtype_full,ST.domtype_full,0) AS Дом, 
	tipdu.tip AS Тип, 
	R.data_osmotra_fio AS Ответственный, 
	CASE 
		WHEN ltrim(rtrim(isnull([text], ''))) <> '' THEN ltrim(rtrim(isnull([text], ''))) 
		WHEN ltrim(rtrim(isnull(zam, ''))) <> '' THEN ltrim(rtrim(isnull(zam, ''))) 
	END AS [Тип замечания], 
	CONVERT(VARCHAR, GETDATE(), 104) AS [Направлено Подрядчику], 
	z.status AS [Факт устранения замечания], 
	z.memo AS [Заключение эксперта Подрядчика], 
	z.foto AS Фото, 
    z.podtverjd_memo AS [Подтверждение устранения Заказчиком]
FROM 
	@IDTable IDT INNER JOIN reestr_zamechaniya Z
	ON IDT.kod=Z.kod AND IDT.zam_type=Z.zam_type
	INNER JOIN reestr_t R
	ON IDT.kod=R.kod
	INNER JOIN adress a ON R.adress_id=a.id
	INNER JOIN Okrug

	ON Okrug.ID=a.okrug_id
	INNER JOIN Raion
	ON raion.ID=a.AdminArea_ID
	INNER JOIN tipdu
	ON tipdu.kod=R.tipdu_KOD
	LEFT OUTER JOIN dom_type DT
	ON a.dom_type=DT.id
	LEFT OUTER JOIN dom_type ST
	ON a.stroenie_type=ST.id
END


GO

GRANT EXECUTE ON [dbo].[НЕОТПРАВЛЕННЫЕ_ЗАМЕЧАНИЯ] TO [Гость]
GO
SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO



CREATE FUNCTION [fias].[AllAddressObjects_withFull] 

(
	@Splitter nvarchar(10),
	@NameFull bit = 1
) 
RETURNS @Tbl TABLE 
		(ID uniqueidentifier NOT NULL PRIMARY KEY
		,PARENTGUID uniqueidentifier NULL
		,itemAddress nvarchar(500)
		,fullAddress nvarchar(500),
		INDEX IX3 NONCLUSTERED(ID,PARENTGUID)) with schemabinding 
AS 
BEGIN
	-- Declare the return variable here
declare	@gdate datetime
set @gdate=GETDATE();
	WITH child_to_parents AS (
		SELECT 
			FORMALNAME
			,OFFNAME
			,SHORTNAME
			,AOGUID
			,PARENTGUID
			,AOLEVEL
			,streetCODE
			,cast(FORMALNAME+' '+[dbo].[upEndOfString](lower(SCNAME),'.') as nvarchar(4000)) AS itemName
			,cast(OFFNAME+' '+lower(SOCRNAME) as nvarchar(4000)) AS FullName
		FROM fias.Object o
			inner join fias.AddressObjectType ao on o.AOLEVEL=ao.LEVEL and o.SHORTNAME=ao.SCNAME
		WHERE 
			@gdate between STARTDATE and ENDDATE 
			and ACTSTATUS = 1 
			and PARENTGUID is null
		UNION ALL
		SELECT 
			o1.FORMALNAME
			,o1.OFFNAME
			,o1.SHORTNAME
			,o1.AOGUID
			,o1.PARENTGUID
			,o1.AOLEVEL
			,o1.streetCODE 
			,cast(o1.FORMALNAME+' '+
				case 
					when @NameFull=1 then lower(ao.SOCRNAME)
					else [dbo].[upEndOfString](lower(ao.SCNAME),'.')
				end as nvarchar(4000)) AS itemName
			,cast(c.FullName+@Splitter+o1.OFFNAME+' '+
				case 
					when @NameFull=1 then lower(ao.SOCRNAME)
					else [dbo].[upEndOfString](lower(ao.SCNAME),'.')
				end as nvarchar(4000)) AS FullName
		FROM 
			fias.Object o1
			inner join fias.AddressObjectType ao on o1.AOLEVEL=ao.LEVEL and o1.SHORTNAME=ao.SCNAME
			, child_to_parents c
		WHERE 
			o1.parentguid = c.aoguid
			AND o1.ACTSTATUS = 1 
			and @gdate between o1.STARTDATE and o1.ENDDATE
	)
	insert into @Tbl(ID,PARENTGUID,itemAddress,fullAddress)
	SELECT 
		AOGUID
		,PARENTGUID
		,itemName
		,FullName
	FROM 
		child_to_parents 
insert into @Tbl(ID,PARENTGUID,itemAddress,fullAddress) 
select 
	HOUSEGUID
	,AOGUID
	,[dbo].[dom_korp_str_toStringSplit] (HOUSENUM,BUILDNUM, STRUCNUM,es.NAME,ss.NAME,@NameFull,@Splitter)
	,t.fullAddress+@Splitter+[dbo].[dom_korp_str_toStringSplit] (HOUSENUM,BUILDNUM, STRUCNUM,es.NAME,ss.NAME,@NameFull,@Splitter)
from 
	fias.House h
	inner join fias.StructureStatus ss
	on  ss.STRSTATID=h.STRSTATUS	
	inner join fias.EstateStatus es
	on  es.ESTSTATID=h.ESTSTATUS
	inner join @Tbl t
	on t.ID=h.AOGUID
where @gdate between STARTDATE and ENDDATE
return
END









GO
SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [fias].[AllAddressObjects]
(	
)
RETURNS @t TABLE (ID uniqueidentifier,PARENTGUID uniqueidentifier NULL,Name nvarchar(4000) NULL)
AS
BEGIN

	INSERT INTO @t (ID,PARENTGUID,Name)
	SELECT AOGUID,PARENTGUID,o.FORMALNAME+' '+ lower(ao.SOCRNAME) FROM fias.Object o inner join fias.AddressObjectType ao
	on o.AOLEVEL=ao.LEVEL and o.SHORTNAME=ao.SCNAME
	where ACTSTATUS=1 and NEXTID is null and getdate() between o.STARTDATE and o.ENDDATE and REGIONCODE='77'

	INSERT INTO @t (ID,PARENTGUID,Name)
	SELECT HOUSEGUID,h.AOGUID,dbo.dom_korp_str_toString(h.HOUSENUM,h.BUILDNUM,h.STRUCNUM,es.NAME,ss.NAME,1) Name FROM fias.House h 
	left outer join fias.EstateStatus es
	on h.ESTSTATUS=es.ESTSTATID
	left outer join fias.StructureStatus ss
	on h.STRSTATUS=ss.STRSTATID
	inner join (select distinct AOGUID from fias.Object where ACTSTATUS=1 and NEXTID is null and getdate() between STARTDATE and ENDDATE and REGIONCODE='77') o 
	on o.AOGUID=h.AOGUID
	where getdate() between h.STARTDATE and h.ENDDATE AND not h.AOGUID is null
	return
END
GO
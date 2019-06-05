SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[fullAddress] ()
RETURNS @R TABLE (ID uniqueidentifier,fullAddress nvarchar(500))
AS
BEGIN
insert into @R(ID,fullAddress)
	SELECT 
		AOGUID,
		dbo.[ObjectFullAddress1] (AOGUID,', ',1,1,1) fullAddress FROM fias.Object o left outer join
(select DISTINCT PARENTGUID FROM fias.Object) d
on o.AOGUID=d.PARENTGUID
where d.PARENTGUID is null and o.ACTSTATUS=1
and getdate() between o.STARTDATE and o.ENDDATE
RETURN
END
GO
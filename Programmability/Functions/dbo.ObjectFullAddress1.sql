SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[ObjectFullAddress1] 

(
	-- Add the parameters for the function here
	@AOGUID uniqueidentifier,
	@Splitter nvarchar(10),
	@NameFull bit = 0,
	@WithRoot bit = 0,
	@WithSelf bit = 0 
)
RETURNS nvarchar(200)
 
AS
BEGIN
	-- Declare the return variable here
declare @name nvarchar(500)
set @name=''
declare @formalname nvarchar(100), @house nvarchar(100)
declare @shortname nvarchar(100),@gdate datetime, @convertstreet nvarchar(100),@streetCODE nvarchar(100),@name1 nvarchar(500)
	,@name2 nvarchar(500)
	,@name3 nvarchar(500)
	,@name4 nvarchar(500)
	,@OFFNAME nvarchar(100)
set @name1=''
set @name2=''
set @name3=''
set @name4=''
set @gdate=GETDATE()
declare @AddressCursor cursor
set  @AddressCursor=cursor
	for
	WITH child_to_parents AS (
	  SELECT FORMALNAME,OFFNAME,SHORTNAME,AOGUID,PARENTGUID,AOLEVEL,streetCODE FROM fias.Object
		  WHERE aoGUid = @AOGUID
		  and @gdate between STARTDATE and ENDDATE and ACTSTATUS = 1
	  UNION ALL
	  SELECT o1.FORMALNAME,o1.OFFNAME,o1.SHORTNAME,o1.AOGUID,o1.PARENTGUID,o1.AOLEVEL,o1.streetCODE FROM fias.Object o1, child_to_parents
		  WHERE o1.aoguid = child_to_parents.parentguid
			AND o1.ACTSTATUS = 1 --and not o1.PARENTGUID is null
			and @gdate between o1.STARTDATE and o1.ENDDATE
	)
	SELECT FORMALNAME,OFFNAME,
		case 
			when @NameFull=1 then fias.AddressObjectType.SOCRNAME
			else fias.AddressObjectType.SCNAME
		end TypeName 
		,streetCODE
	FROM 
		child_to_parents 
		left outer join  
		fias.AddressObjectType 
		on 
			AOLEVEL=fias.AddressObjectType.LEVEL 
			and
			shortname=fias.AddressObjectType.SCNAME
			where (aoguid <> @AOGUID and @WithSelf=0) or (@WithSelf=1)
		ORDER BY aolevel
open @AddressCursor;
fetch next from @AddressCursor into @FORMALNAME,@OFFNAME,@shortname,@streetCODE;
if (@WithRoot=0) fetch next from @AddressCursor into @FORMALNAME,@OFFNAME,@shortname,@streetCODE
WHILE @@FETCH_STATUS = 0  
BEGIN 
	if (@name1 ='')
		set @name1 = lower(@shortname) + ' ' + @formalname + case when @NameFull=0 then '.'  else '' end
	else
		set @name1 = @name1+ @Splitter + 
			case when @streetCODE='0000' then  LOWER(@shortname) + ' ' + @formalname
			else LOWER(@shortname) + ' '+ @FORMALNAME
			end
			+ case when @NameFull=0 then '.'  else '' end
	if (@name2 ='')
		set @name2 = lower(@shortname) + ' ' + @formalname + case when @NameFull=0 then '.'  else '' end
	else
		set @name2 = @name2+ @Splitter + 
			case when @streetCODE='0000' then  LOWER(@shortname) + ' ' + @formalname
			else @FORMALNAME + ' '+ LOWER(@shortname)
			end
			+ case when @NameFull=0 then '.'  else '' end
	if (@FORMALNAME<>@OFFNAME)
	begin
		if (@name3 ='')
			set @name3 = lower(@shortname) + ' ' + @formalname + case when @NameFull=0 then '.'  else '' end
		else
			set @name3 = @name3+ @Splitter + 
				case when @streetCODE='0000' then  LOWER(@shortname) + ' ' + @formalname
				else LOWER(@shortname) + ' '+ @FORMALNAME
				end
				+ case when @NameFull=0 then '.'  else '' end
		if (@name4 ='')
			set @name4 = lower(@shortname) + ' ' + @formalname + case when @NameFull=0 then '.'  else '' end
		else
			set @name4 = @name4+ @Splitter + 
				case when @streetCODE='0000' then  LOWER(@shortname) + ' ' + @formalname
				else @FORMALNAME + ' '+ LOWER(@shortname)
				end
				+ case when @NameFull=0 then '.'  else '' end
	end
	fetch next from @AddressCursor into @FORMALNAME,@OFFNAME,@shortname,@streetCODE 
end

close @AddressCursor
deallocate @AddressCursor

set @name=dbo.deleteDublSpaceNull(@name2) 
--set @name=left(@name,len(@name) - 1)

RETURN @name

END


GO
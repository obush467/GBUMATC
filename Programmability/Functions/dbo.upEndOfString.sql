SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[upEndOfString]
(
	-- Add the parameters for the function here
	@Str nvarchar(4000), 
	@EndStr nvarchar(50)
)
RETURNS nvarchar(4000) with schemabinding 
AS
BEGIN
SET @Str=dbo.deleteDublSpaceNull(@Str)
	DECLARE @ResultVar nvarchar(4000)
	SET @ResultVar=case when RIGHT(@Str,len(@EndStr))=@EndStr then @Str
						else @Str+@EndStr
						end
	RETURN @ResultVar

END
GO
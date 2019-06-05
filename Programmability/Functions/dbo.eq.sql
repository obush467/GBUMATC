SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[eq] 
(
	-- Add the parameters for the function here
	@Param1 sql_variant,
	@Param2 sql_variant)
RETURNS bit 
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ResultVar bit

	IF ((NOT @Param1 IS NULL AND NOT @Param2 IS NULL and @Param1 =@Param2) OR (@Param1 IS NULL AND @Param2 IS NULL))
	SET @ResultVar=1
	ELSE
	SET @ResultVar=0
	RETURN @ResultVar

END
GO
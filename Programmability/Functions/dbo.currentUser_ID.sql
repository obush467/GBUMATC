SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[currentUser_ID]
(
)
RETURNS uniqueidentifier
AS
BEGIN
	DECLARE @ResultVar uniqueidentifier
	select  @ResultVar=Sotr_ID from sotr WHERE sotr.UID = USER_ID(SUSER_NAME())
	RETURN @ResultVar
END
GO
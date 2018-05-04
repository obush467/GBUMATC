SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[GETDATEOFFSET]
(
)
RETURNS datetimeoffset
AS
BEGIN
RETURN switchoffset (CONVERT(datetimeoffset, GETDATE()), '-04:00'); 
END
GO
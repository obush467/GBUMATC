SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
CREATE FUNCTION [dbo].[currentUserID]
(
)
RETURNS @t TABLE (ID uniqueidentifier, UID int) 
AS
BEGIN
	insert into @t (ID,UID) select Sotr_ID,sotr.UID from sotr WHERE sotr.UID = USER_ID(SUSER_NAME())
	RETURN
END

GO
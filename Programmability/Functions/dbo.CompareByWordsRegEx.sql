SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[CompareByWordsRegEx] (@Input1 [nvarchar](4000),
@Input2 [nvarchar](4000),
@SplitterPattern [nvarchar](4000))
RETURNS [bit]
AS
EXTERNAL NAME [SQLLibB1].[SQLLibB1.RegEx].[CompareByWordsRegEx]
GO
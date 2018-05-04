SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[Match] (@Input [nvarchar](4000),
@Patternt [nvarchar](4000))
RETURNS TABLE (
  [Group] [nvarchar](4000) NULL,
  [Index] [int] NULL
)
AS
EXTERNAL NAME [SQLLibB1].[SQLLibB1.RegEx].[MatchRegEx]
GO
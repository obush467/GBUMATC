/****** Object:  StoredProcedure [dbo].[procedure2]    Script Date: 08/05/2016 08:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedure2]
  AS
SELECT SUM(tbo) as tbo FROM dbo.tbotemp;
GO

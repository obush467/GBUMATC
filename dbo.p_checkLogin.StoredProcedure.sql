/****** Object:  StoredProcedure [dbo].[p_checkLogin]    Script Date: 08/05/2016 08:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[p_checkLogin]
@login varchar(255)=null,
@pass varchar(255)=null
as

SELECT isnull(dostup,'') dostup
FROM tbo_users
where   [name] = @login and [pass]=@pass
GO

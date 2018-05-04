﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE procedure [dbo].[updateProverkaGU]
	@id int
	,@Ошибки_в_адресации_ГУ nvarchar(4000)
	,@Fact nvarchar(4000)
	,@Плашки nvarchar(4000)
	,@Наличие_согласованного_макета  bit
	,@Наличие_согласованного_паспорта bit
	,@Примечание nvarchar(4000)
	,@Проверено bit
	,@updated datetimeoffset=null
	,@newPassportID uniqueidentifier=null
as
UPDATE [dbo].[Проверка_паспортов]
   SET 
	   [Ошибки в адресации ГУ] = @Ошибки_в_адресации_ГУ
      ,[Cоответствие фактического места установки паспортному] = @Fact
	  ,[Соответствие реальных плашек, макета и паспортных плашек]=@Плашки
      ,[Наличие согласованного макета] = @Наличие_согласованного_макета
      ,[Наличие согласованного паспорта] = @Наличие_согласованного_паспорта
      ,[Примечание] = @Примечание 
      ,[Проверено] = @Проверено
	  ,updated=isnull(@updated,getdate())
	  ,newPassportID=@newPassportID
 WHERE GU_ID=@id
GO

GRANT
  EXECUTE,
  VIEW DEFINITION
ON [dbo].[updateProverkaGU] TO [esn_viewers]
GO
CREATE TABLE [dbo].[Проверка_паспортов] (
  [Сотрудник, проверяющий на актуальность] [nvarchar](255) NULL,
  [Ошибки в адресации ГУ] [nvarchar](4000) NULL,
  [Cоответствие фактического места установки паспортному] [nvarchar](4000) NULL,
  [Соответствие реальных плашек, макета и паспортных плашек] [nvarchar](4000) NULL,
  [Наличие согласованного макета] [bit] NULL,
  [Наличие согласованного паспорта] [bit] NULL,
  [Примечание] [nvarchar](4000) NULL,
  [Проверено] [bit] NULL,
  [GU_ID] [int] NOT NULL,
  [Sotr_ID] [int] NULL,
  [ts] [timestamp],
  [updated] [datetimeoffset] NULL,
  [id] [int] IDENTITY NOT FOR REPLICATION,
  [Installation_ID] [uniqueidentifier] NULL,
  [newPassportID] [uniqueidentifier] NULL,
  [PassportCreate] [datetime] NULL,
  CONSTRAINT [PK_Проверка_паспортов] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [Проверка_паспортов_log_update]
   ON  [dbo].[Проверка_паспортов]
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
INSERT INTO [dbo].[Проверка_паспортов_log]
           ([Сотрудник, проверяющий на актуальность]
           ,[Ошибки в адресации ГУ]
           ,[Cоответствие фактического места установки паспортному]
           ,[Соответствие реальных плашек, макета и паспортных плашек]
           ,[Наличие согласованного макета]
           ,[Наличие согласованного паспорта]
           ,[Примечание]
           ,[Проверено]
           ,[GU_ID]
           ,[Sotr_ID]
           ,[updated]
           ,[id])
	SELECT [Сотрудник, проверяющий на актуальность]
		  ,[Ошибки в адресации ГУ]
		  ,[Cоответствие фактического места установки паспортному]
		  ,[Соответствие реальных плашек, макета и паспортных плашек]
		  ,[Наличие согласованного макета]
		  ,[Наличие согласованного паспорта]
		  ,[Примечание]
		  ,[Проверено]
		  ,[GU_ID]
		  ,[Sotr_ID]
		  ,[updated]
		  ,[id]
	  FROM deleted
END

GO

GRANT
  ALTER,
  SELECT,
  UPDATE,
  VIEW CHANGE TRACKING,
  VIEW DEFINITION
ON [dbo].[Проверка_паспортов] TO [esn_viewers]
GO
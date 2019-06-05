CREATE TABLE [dbo].[Проверка_паспортов_log] (
  [id_log] [int] IDENTITY NOT FOR REPLICATION,
  [log_date] [datetimeoffset] NOT NULL DEFAULT (sysdatetimeoffset()),
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
  [id] [int] NOT NULL,
  CONSTRAINT [PK_Проверка_паспортов_log] PRIMARY KEY CLUSTERED ([id_log])
)
ON [PRIMARY]
GO
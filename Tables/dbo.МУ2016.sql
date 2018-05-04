CREATE TABLE [dbo].[МУ2016] (
  [№] [float] NULL,
  [НомерГУ] [nvarchar](255) NULL,
  [Округ] [nvarchar](255) NULL,
  [Район] [nvarchar](255) NULL,
  [Улица, проспект, переулок и проч] [nvarchar](255) NULL,
  [Дом, корп#, стр# и проч] [nvarchar](255) NULL,
  [Установлен] [nvarchar](255) NULL,
  [Заключение по помехе пешеходам и технике] [nvarchar](255) NULL,
  [Текущее наличие] [nvarchar](255) NULL,
  [Текущее состояние] [nvarchar](255) NULL,
  [Дата проверки] [datetime] NULL,
  [Проверка] [nvarchar](255) NULL,
  [Документ] [nvarchar](255) NULL,
  [Сравнение состояний начального и текущего] [nvarchar](255) NULL,
  [Совпадение списков] [nvarchar](255) NULL,
  [Акты все] [nvarchar](255) NULL
)
ON [PRIMARY]
GO
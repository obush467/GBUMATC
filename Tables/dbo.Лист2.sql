CREATE TABLE [dbo].[Лист2] (
  [ID] [uniqueidentifier] NULL,
  [UNOM] [nvarchar](255) NULL,
  [Округ] [nvarchar](255) NULL,
  [Населённый пункт] [nvarchar](255) NULL,
  [Район] [nvarchar](255) NULL,
  [Улица] [nvarchar](255) NULL,
  [Дом] [nvarchar](255) NULL,
  [Блок_1_сторона_А] [nvarchar](4000) NULL,
  [Блок_1_сторона_Б] [nvarchar](4000) NULL,
  [Блок_2_сторона_А] [nvarchar](4000) NULL,
  [Блок_2_сторона_Б] [nvarchar](4000) NULL,
  [Блок_3_сторона_А] [nvarchar](4000) NULL,
  [Блок_3_сторона_Б] [nvarchar](4000) NULL,
  [Блок_4_сторона_А] [nvarchar](4000) NULL,
  [Блок_4_сторона_Б] [nvarchar](4000) NULL
)
ON [PRIMARY]
GO
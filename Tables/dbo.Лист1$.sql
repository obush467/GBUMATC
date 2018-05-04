CREATE TABLE [dbo].[Лист1$] (
  [ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Лист1$_ID] DEFAULT (newid()) ROWGUIDCOL,
  [UNOM] [nvarchar](255) NOT NULL,
  [Округ] [nvarchar](255) NULL,
  [Населённый пункт] [nvarchar](255) NULL,
  [Район] [nvarchar](255) NULL,
  [Улица, проездоспект, переулок и проездоч#] [nvarchar](255) NULL,
  [Дом кор# стр# и проч# ] [nvarchar](255) NULL,
  [Блок_1_сторона_A] [nvarchar](255) NULL,
  [Блок_1_сторона_Б] [nvarchar](255) NULL,
  [Блок_2_сторона_A] [nvarchar](255) NULL,
  [Блок_2_сторона_Б] [nvarchar](255) NULL,
  [Блок_3_сторона_A] [nvarchar](255) NULL,
  [Блок_3_сторона_Б] [nvarchar](255) NULL,
  [Блок_4_сторона_A] [nvarchar](255) NULL,
  [Блок_4_сторона_Б] [nvarchar](255) NULL,
  CONSTRAINT [PK_Лист1$] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO
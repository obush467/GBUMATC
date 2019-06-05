CREATE TABLE [dbo].[ГУприл5] (
  [ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_ГУприл52_ID] DEFAULT (newid()) ROWGUIDCOL,
  [Номер] [nvarchar](255) NOT NULL,
  [Год] [smallint] NULL,
  [Округ] [nvarchar](255) NULL,
  [Район] [nvarchar](255) NULL,
  [Улица] [nvarchar](255) NULL,
  [Дом] [nvarchar](255) NULL,
  [Сторона А] [nvarchar](4000) NULL,
  [Сторона Б] [nvarchar](4000) NULL,
  [(транслит#) Сторона А] [nvarchar](4000) NULL,
  [(транслит#) Сторона Б] [nvarchar](4000) NULL,
  CONSTRAINT [PK_ГУприл52] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20180418-103833]
  ON [dbo].[ГУприл5] ([ID])
  INCLUDE ([Номер], [Год], [Округ], [Район], [Улица], [Дом], [Сторона А], [Сторона Б], [(транслит#) Сторона А], [(транслит#) Сторона Б])
  ON [PRIMARY]
GO
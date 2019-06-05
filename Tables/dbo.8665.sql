CREATE TABLE [dbo].[8665] (
  [№] [float] NULL,
  [НомерГУ] [nvarchar](255) NULL,
  [Округ] [nvarchar](255) NULL,
  [Район] [nvarchar](255) NULL,
  [Улица] [nvarchar](255) NULL,
  [Дом] [nvarchar](255) NULL,
  [X] [nvarchar](255) NULL,
  [Y] [nvarchar](255) NULL
)
ON [PRIMARY]
GO

CREATE INDEX [_dta_index_8665_5_96263648__K2]
  ON [dbo].[8665] ([НомерГУ])
  ON [PRIMARY]
GO
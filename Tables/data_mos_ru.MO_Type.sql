CREATE TABLE [data_mos_ru].[MO_Type] (
  [Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_MO_Type_Id] DEFAULT (newid()) ROWGUIDCOL,
  [Number] [int] NULL,
  [global_id] [int] NOT NULL DEFAULT (0),
  [MO_Type_C] [nvarchar](4000) NULL,
  [MO_Type_N] [nvarchar](4000) NULL,
  CONSTRAINT [PK_data_mos_ru.MO_Type] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO
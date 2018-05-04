CREATE TABLE [data_mos_ru].[OMK002_2013_2] (
  [Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_OMK002_2013_2_Id] DEFAULT (newid()),
  [global_id] [int] NOT NULL DEFAULT (0),
  [Kod] [nvarchar](4000) NULL,
  [Name] [nvarchar](4000) NULL,
  CONSTRAINT [PK_data_mos_ru.OMK002_2013_2] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO
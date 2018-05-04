CREATE TABLE [dbo].[GU_not_inserted_in_reestr] (
  [id] [int] IDENTITY NOT FOR REPLICATION,
  [unikalniy] [nvarchar](13) NULL,
  [kategoriya] [nvarchar](50) NULL,
  [memo] [nvarchar](1000) NULL,
  [tipdu] [nvarchar](50) NULL,
  [Okrug] [nvarchar](50) NULL,
  [ulitsa] [nvarchar](50) NULL,
  [nazvanie_ulitsi] [nvarchar](255) NULL,
  [dom_korp_str] [nvarchar](50) NULL,
  [ulitsadu] [nvarchar](255) NULL,
  [domdu] [nvarchar](50) NULL,
  [montaj] [date] NULL,
  [montaj_plan] [date] NULL,
  [subpodradchik] [nvarchar](255) NULL,
  [project] [nvarchar](50) NULL,
  [priznak] [nvarchar](50) NULL,
  [date1] [date] NULL,
  CONSTRAINT [PK_GU_not_inserted_in_reestr] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO
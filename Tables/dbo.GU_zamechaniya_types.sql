CREATE TABLE [dbo].[GU_zamechaniya_types] (
  [ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_GU_zamechaniya_types_ID] DEFAULT (newid()) ROWGUIDCOL,
  [zam_type_Name] [nvarchar](255) NOT NULL,
  CONSTRAINT [PK_GU_zamechaniya_types] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO
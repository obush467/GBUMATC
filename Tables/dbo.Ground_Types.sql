CREATE TABLE [dbo].[Ground_Types] (
  [id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Ground_Types_id] DEFAULT (newid()) ROWGUIDCOL,
  [GroundName] [nvarchar](50) NOT NULL,
  CONSTRAINT [PK_Ground_Types] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO
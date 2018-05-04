CREATE TABLE [dbo].[GU_zamechaniya_States] (
  [ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_GU_zamechaniya_States_ID] DEFAULT (newid()) ROWGUIDCOL,
  [GU_zamechaniya_ID] [uniqueidentifier] NOT NULL,
  [State] [nvarchar](50) NOT NULL,
  [StateDate] [date] NOT NULL CONSTRAINT [DF_GU_zamechaniya_States_StateDate] DEFAULT (getdate()),
  CONSTRAINT [PK_GU_zamechaniya_States] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[Files_mainContainer] (
  [ID] [int] IDENTITY,
  [Files_HID] [hierarchyid] NULL,
  [MainC_HID] [hierarchyid] NULL,
  [upserted] [datetime] NOT NULL DEFAULT (getdate()),
  CONSTRAINT [PK_Files_mainContainer_ID] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO
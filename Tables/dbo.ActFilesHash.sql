CREATE TABLE [dbo].[ActFilesHash] (
  [path_locator] [hierarchyid] NULL,
  [Hash] [varchar](32) NOT NULL
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ActFilesHash]
  ADD CONSTRAINT [FK_ActFilesHash_path_locator] FOREIGN KEY ([path_locator]) REFERENCES [dbo].[ActFiles] ([path_locator]) ON DELETE CASCADE ON UPDATE CASCADE
GO
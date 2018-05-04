CREATE TABLE [dbo].[FilesHash] (
  [path_locator] [hierarchyid] NULL,
  [Hash] [varchar](32) NOT NULL
)
ON [PRIMARY]
GO

CREATE INDEX [_dta_index_FilesHash_5_188787980__K2_1]
  ON [dbo].[FilesHash] ([Hash])
  INCLUDE ([path_locator])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[FilesHash]
  ADD CONSTRAINT [FK_FilesHash_path_locator] FOREIGN KEY ([path_locator]) REFERENCES [dbo].[Files] ([path_locator]) ON DELETE CASCADE ON UPDATE CASCADE
GO
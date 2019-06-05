CREATE TABLE [dbo].[mainFileContainerHash] (
  [path_locator] [hierarchyid] NULL,
  [Hash] [varchar](32) NOT NULL,
  [Installation_ID] [uniqueidentifier] NULL
)
ON [PRIMARY]
GO

CREATE INDEX [_dta_index_mainFileContainerHash_5_156787866__K1_2]
  ON [dbo].[mainFileContainerHash] ([path_locator])
  INCLUDE ([Hash])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[mainFileContainerHash]
  ADD CONSTRAINT [FK_mainFileContainerHash_path_locator] FOREIGN KEY ([path_locator]) REFERENCES [dbo].[mainFileContainer] ([path_locator]) ON DELETE CASCADE ON UPDATE CASCADE
GO
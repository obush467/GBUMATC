﻿CREATE TABLE [fias_tmp].[FlatType] (
  [FLTYPEID] [bigint] NOT NULL,
  [NAME] [varchar](8000) NULL,
  [SHORTNAME] [varchar](8000) NULL,
  CONSTRAINT [PK_FlatType] PRIMARY KEY CLUSTERED ([FLTYPEID])
)
ON [PRIMARY]
GO
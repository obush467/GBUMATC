CREATE TABLE [dbo].[kFileInfoes] (
  [ID] [int] IDENTITY NOT FOR REPLICATION,
  [FullName] [nvarchar](400) NULL,
  [Name] [nvarchar](400) NULL,
  [DirectoryName] [nvarchar](400) NULL,
  [IsReadOnly] [bit] NOT NULL CONSTRAINT [DF__kFileInfo__IsRea__666BEDB4] DEFAULT (0),
  [CreationTime] [datetime] NOT NULL,
  [CreationTimeUtc] [datetimeoffset] NOT NULL,
  [LastAccessTime] [datetime] NOT NULL,
  [LastAccessTimeUtc] [datetimeoffset] NOT NULL,
  [LastWriteTime] [datetime] NOT NULL,
  [LastWriteTimeUtc] [datetimeoffset] NOT NULL,
  [Attributes] [int] NOT NULL CONSTRAINT [DF__kFileInfo__Attri__676011ED] DEFAULT (0),
  [MD5] [varbinary](16) NULL,
  [Length] [bigint] NOT NULL CONSTRAINT [DF__kFileInfo__Lengt__68543626] DEFAULT (0),
  CONSTRAINT [PK_dbo.kFileInfoes] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[БасманныйСтороны] (
  [GU_ID] [uniqueidentifier] NOT NULL,
  [Block_Number] [int] NULL,
  [Site_Number] [nvarchar](255) NULL,
  [Row_Number] [int] NULL,
  [Content_Text] [nvarchar](255) NULL,
  [Content_Transliteration] [nvarchar](255) NULL,
  [Content_Adress] [nvarchar](255) NULL
)
ON [PRIMARY]
GO
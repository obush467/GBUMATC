CREATE TABLE [dbo].[Sheet1] (
  [ID] [nvarchar](255) NULL,
  [FullName] [nvarchar](255) NULL,
  [ShortName] [nvarchar](255) NULL,
  [AdmArea] [nvarchar](255) NULL,
  [District] [nvarchar](255) NULL,
  [LegalAddress] [nvarchar](255) NULL,
  [Address] [nvarchar](255) NULL,
  [Phone] [nvarchar](255) NULL,
  [Email] [nvarchar](255) NULL,
  [ChiefName] [nvarchar](255) NULL,
  [WorkingHours] [nvarchar](max) NULL,
  [INN] [nvarchar](255) NULL,
  [KPP] [nvarchar](255) NULL,
  [OGRN] [nvarchar](255) NULL,
  [global_id] [nvarchar](255) NULL,
  [DepartmentalAffiliation] [nvarchar](255) NULL,
  [geoData] [nvarchar](255) NULL
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[reestr_zamechaniya] (
  [id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_reestr_zamechaniya_id] DEFAULT (newid()) ROWGUIDCOL,
  [kod] [int] NOT NULL,
  [zam_type] [varchar](50) NOT NULL,
  [status] [varchar](20) NULL,
  [text] [varchar](1000) NULL,
  [key] [varchar](1) NULL,
  [pic] [varchar](255) NULL,
  [zam] [varchar](1000) NULL,
  [memo] [varchar](1000) NULL,
  [foto] [varchar](255) NULL,
  [podtverjd_memo] [varchar](1000) NULL,
  [podtverjd_foto] [varchar](255) NULL,
  [podtverjd_status] [varchar](20) NULL,
  [napravleno] [date] NULL,
  [updated] [datetimeoffset] NULL,
  CONSTRAINT [PK_reestr_zamechaniya_1] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [_dta_index_reestr_zamechaniya_5_1199343337__K3_K2_4_5_6_7_8_9_10_11_12_13]
  ON [dbo].[reestr_zamechaniya] ([zam_type], [kod])
  INCLUDE ([status], [text], [key], [pic], [zam], [memo], [foto], [podtverjd_memo], [podtverjd_foto], [podtverjd_status])
  ON [PRIMARY]
GO

CREATE INDEX [_dta_index_reestr_zamechaniya_5_188735925__K3_K2_4_5_6_7_9_10_11_12_13]
  ON [dbo].[reestr_zamechaniya] ([zam_type], [kod])
  INCLUDE ([status], [text], [key], [pic], [memo], [foto], [podtverjd_memo], [podtverjd_foto], [podtverjd_status])
  ON [PRIMARY]
GO

CREATE INDEX [_dta_index_reestr_zamechaniya_5_188735925__K3_K2_4_8_9_10_11_12_13]
  ON [dbo].[reestr_zamechaniya] ([zam_type], [kod])
  INCLUDE ([status], [zam], [memo], [foto], [podtverjd_memo], [podtverjd_foto], [podtverjd_status])
  ON [PRIMARY]
GO

CREATE INDEX [_dta_index_reestr_zamechaniya_5_188735925__K3_K2_4_8_9_10_11_13]
  ON [dbo].[reestr_zamechaniya] ([zam_type], [kod])
  INCLUDE ([status], [zam], [memo], [foto], [podtverjd_memo], [podtverjd_status])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [NonClusteredIndex-20171025-174719]
  ON [dbo].[reestr_zamechaniya] ([kod], [zam_type])
  INCLUDE ([status], [text], [key], [pic], [foto], [podtverjd_memo], [id], [podtverjd_foto], [podtverjd_status], [napravleno], [updated], [zam], [memo])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [NonClusteredIndex-20171025-204121]
  ON [dbo].[reestr_zamechaniya] ([id], [kod], [zam_type], [status], [podtverjd_status], [napravleno], [updated])
  INCLUDE ([foto], [podtverjd_memo], [podtverjd_foto], [text], [key], [pic], [zam], [memo])
  ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [Zam_updated]
   ON  [dbo].[reestr_zamechaniya]
   AFTER UPDATE
AS 
BEGIN
SET NOCOUNT ON;

IF (NOT UPDATE(updated))
BEGIN
UPDATE rz
SET
	updated=SYSDATETIMEOFFSET()
from
	reestr_zamechaniya rz inner join inserted 
	on rz.kod=inserted.kod
	AND 
	RZ.zam_type=inserted.zam_type
INSERT INTO [dbo].[reestr_zamechaniya_log]
           ([id]
           ,[kod]
           ,[zam_type]
           ,[status]
           ,[text]
           ,[key]
           ,[pic]
           ,[zam]
           ,[memo]
           ,[foto]
           ,[podtverjd_memo]
           ,[podtverjd_foto]
           ,[podtverjd_status]
           ,[napravleno]
           ,[updated])
	SELECT [id]
		  ,[kod]
		  ,[zam_type]
		  ,[status]
		  ,[text]
		  ,[key]
		  ,[pic]
		  ,[zam]
		  ,[memo]
		  ,[foto]
		  ,[podtverjd_memo]
		  ,[podtverjd_foto]
		  ,[podtverjd_status]
		  ,[napravleno]
		  ,[updated]
	  FROM deleted
END
END
GO

ALTER TABLE [dbo].[reestr_zamechaniya]
  ADD CONSTRAINT [FK_reestr_zamechaniya_reestr_t] FOREIGN KEY ([kod]) REFERENCES [dbo].[reestr_t] ([kod])
GO
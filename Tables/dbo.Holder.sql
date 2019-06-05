CREATE TABLE [dbo].[Holder] (
  [ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Balance_holder_ID] DEFAULT (newid()) ROWGUIDCOL,
  [Installation_ID] [uniqueidentifier] NOT NULL,
  [Holder_ID] [uniqueidentifier] NOT NULL,
  [prevHolder_ID] [uniqueidentifier] NULL,
  [nextHolder_ID] [uniqueidentifier] NULL,
  [Accepted] [smalldatetime] NULL,
  [Document_ID] [uniqueidentifier] NULL,
  [tsc] [timestamp],
  [upserted] [datetimeoffset] NOT NULL CONSTRAINT [DF_Holder_upserted] DEFAULT (sysdatetimeoffset()),
  [upserter] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Holder_upserter] DEFAULT ([dbo].[currentUser_ID]()),
  [YearInst] [int] NULL,
  [Код аналитического учета ОКОФ] [nvarchar](50) NULL,
  [Номер амортизационной группы] [nvarchar](50) NULL,
  [Срок полезного использования (мес.)] [nvarchar](50) NULL,
  [Инвентарный номер] [nvarchar](50) NULL,
  [Учетный номер РСМ] [nvarchar](50) NULL,
  [Адрес] [nvarchar](50) NULL,
  [Дом] [nvarchar](50) NULL,
  [Тип] [nvarchar](50) NULL,
  [Балансовая стоимость] [money] NULL,
  [Износ] [money] NULL,
  [Остаточная стоимость] [money] NULL,
  CONSTRAINT [PK_Balance_holder] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [HolderUpdate]
   ON  [dbo].[Holder]
   AFTER UPDATE
AS 
BEGIN
SET NOCOUNT ON;
 update Holder set upserter=[dbo].[currentUser_ID](),upserted=SYSDATETIMEOFFSET ( ) 
END
GO

ALTER TABLE [dbo].[Holder]
  ADD CONSTRAINT [FK_Holder_Installation] FOREIGN KEY ([Installation_ID]) REFERENCES [dbo].[Installation] ([ID]) ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[Holder]
  ADD CONSTRAINT [FK_Holder_Organizations] FOREIGN KEY ([Holder_ID]) REFERENCES [dbo].[Organizations] ([id]) ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[Holder]
  ADD CONSTRAINT [FK_Holder_sotr] FOREIGN KEY ([upserter]) REFERENCES [dbo].[sotr] ([Sotr_ID])
GO
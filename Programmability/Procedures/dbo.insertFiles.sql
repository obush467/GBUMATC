SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[insertFiles] (@Okrug NVARCHAR(100) NULL,
@Raion NVARCHAR(100) NULL,
@UNOM NVARCHAR(50),
@file_stream VARBINARY(MAX),
@name NVARCHAR(255),
@creation_time DATETIMEOFFSET,
@last_write_time DATETIMEOFFSET,
@last_access_time DATETIMEOFFSET,
@is_directory BIT,
@is_offline BIT,
@is_hidden BIT,
@is_readonly BIT,
@is_archive BIT,
@is_system BIT,
@is_temporary BIT)
AS
BEGIN
  DECLARE @HIDV  HIERARCHYID
  DECLARE @HID TABLE (
    HID HIERARCHYID
   ,id INT IDENTITY (1, 1) PRIMARY KEY
   ,name NVARCHAR(255)
  )
  IF (NOT EXISTS (SELECT
        *
      FROM Files
      WHERE name = @Okrug
      AND is_directory = 1)
    )
    INSERT INTO Files (name, is_directory)
    OUTPUT INSERTED.path_locator,INSERTED.name INTO @HID (HID,name)
      VALUES (@Okrug, 1)
    ELSE
      INSERT INTO @HID(HID,name) 
      SELECT path_locator,name
      FROM Files
      WHERE 
        name = @Okrug
        AND is_directory = 1
  IF (NOT @Raion IS NULL)
  BEGIN
    INSERT INTO @HID (HID)
      SELECT
        path_locator
      FROM Files
      WHERE name = @Raion
      AND is_directory = 1
    IF (EXISTS (SELECT
          *
        FROM @HID
        WHERE id = 2)
      )
      BEGIN
        SELECT @HIDV=HID FROM @HID WHERE id = 1
        INSERT INTO Files (name, is_directory, path_locator)
          OUTPUT INSERTED.path_locator,INSERTED.name INTO @HID (HID,name)
        VALUES (@Raion, 1, @HIDV.ToString() + CONVERT(VARCHAR(20), CONVERT(BIGINT, SUBSTRING(CONVERT(BINARY(16), NEWID()), 1, 6))) + '.' + CONVERT(VARCHAR(20), CONVERT(BIGINT, SUBSTRING(CONVERT(BINARY(16), NEWID()), 7, 6))) + '.' + CONVERT(VARCHAR(20), CONVERT(BIGINT, SUBSTRING(CONVERT(BINARY(16), NEWID()), 13, 4))) + '/')
      END
  END
  IF (NOT EXISTS (SELECT
        *
      FROM Files
      WHERE name = @UNOM
      AND is_directory = 1)
    )
  BEGIN
    SELECT @HIDV=HID FROM @HID WHERE id in (SELECT MAX(id) FROM @HID)
      PRINT @HIDV.ToString() 
      INSERT INTO Files (name, is_directory, path_locator)
    OUTPUT INSERTED.path_locator,INSERTED.name INTO @HID (HID,name)
      VALUES (@UNOM, 1, @HIDV.ToString() + CONVERT(VARCHAR(20), CONVERT(BIGINT, SUBSTRING(CONVERT(BINARY(16), NEWID()), 1, 6))) + '.' + CONVERT(VARCHAR(20), CONVERT(BIGINT, SUBSTRING(CONVERT(BINARY(16), NEWID()), 7, 6))) + '.' + CONVERT(VARCHAR(20), CONVERT(BIGINT, SUBSTRING(CONVERT(BINARY(16), NEWID()), 13, 4))) + '/')
  END
  SELECT @HIDV=HID FROM @HID WHERE id = (SELECT MAX(id) FROM @HID)
  IF (NOT EXISTS (SELECT * FROM Files f WHERE f.parent_path_locator=@HIDV AND f.name=@name))
  INSERT INTO Files (file_stream,
  name,
  creation_time,
  last_write_time,
  last_access_time,
  is_directory,
  is_offline,
  is_hidden,
  is_readonly,
  is_archive,
  is_system,
  is_temporary,
  path_locator)
  OUTPUT INSERTED.path_locator,INSERTED.name INTO @HID (HID,name)
    VALUES (@file_stream, 
      @name, 
    @creation_time, 
    @last_write_time, 
    @last_access_time, 
    @is_directory, 
    @is_offline, 
    @is_hidden, 
    @is_readonly, 
    @is_archive, 
    @is_system, 
    @is_temporary, 
    @HIDV.ToString() + CONVERT(VARCHAR(20), CONVERT(BIGINT, SUBSTRING(CONVERT(BINARY(16), NEWID()), 1, 6))) + '.' + CONVERT(VARCHAR(20), CONVERT(BIGINT, SUBSTRING(CONVERT(BINARY(16), NEWID()), 7, 6))) + '.' + CONVERT(VARCHAR(20), CONVERT(BIGINT, SUBSTRING(CONVERT(BINARY(16), NEWID()), 13, 4))) + '/')
SELECT * FROM @HID
END
GO
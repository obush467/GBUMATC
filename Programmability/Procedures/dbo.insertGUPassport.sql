SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[insertGUPassport]
@Installation_ID uniqueidentifier,
@AdminArea_ID  uniqueidentifier,
@Ground_Type_ID  uniqueidentifier,
@UNOM NVARCHAR(50),
@PassportDate datetime,
@Program_ID uniqueidentifier NULL,
@Visibility nvarchar(50) NULL,
@Sidewalk_width nvarchar(50) NULL,
@Condition nvarchar(50) NULL,
@Patency nvarchar(50) NULL,
@Reconstruction nvarchar(50) NULL,
@Closed_loop nvarchar(50) NULL,
@Electricity_connection nvarchar(50) NULL,
@resultID uniqueidentifier output
AS
BEGIN
declare @ID uniqueidentifier,@nextID uniqueidentifier,@startdate datetime,@lastID uniqueidentifier,@newID uniqueidentifier,@updated bit
SET @newID=NEWID()
	SET NOCOUNT ON;
	DECLARE @c cursor
	SET @c=cursor for
	select ID,nextID,startdate from GUPassport g
	where g.Installation_ID =@Installation_ID 
	order by  startdate
	IF (EXISTS (select * from GUPassport g where g.Installation_ID =@Installation_ID))
	BEGIN
		set @updated=0
		open @c
		fetch next from @c into   @ID ,@nextID ,@startdate
		WHILE @@FETCH_STATUS = 0  
		BEGIN
			if (@PassportDate<@startdate)
				begin
					insert into GUPassport(
						ID,
						Installation_ID,
						AdminArea_ID,
						Ground_Type_ID,
						nextID,
						startdate,
						UNOM,
						Program_ID,
						Visibility,
						Sidewalk_width,
						Condition,
						Patency,
						Reconstruction,
						Closed_loop,
						Electricity_connection) 
					values(
						@newID,
						@Installation_ID,
						@AdminArea_ID,
						@Ground_Type_ID,
						@ID,
						@PassportDate,
						@UNOM,
						@Program_ID,
						@Visibility,
						@Sidewalk_width,
						@Condition,
						@Patency,
						@Reconstruction,
						@Closed_loop,
						@Electricity_connection)
					update GUPassport set nextID=@newID where id=@lastID
					insert into GUPassport_State(GUPassport_ID,startdate,State) values (@newID,@PassportDate,'сформирован')
					set @updated=1
					set @resultID=@newID
					break
				end
			if (@PassportDate=@startdate)
			begin 
				set @updated=1
				set @resultID=null 
				break
			end
			SET @lastID=@ID
			fetch next from @c into   @ID ,@nextID ,@startdate
		END
			if @updated=0
			begin
				insert into GUPassport(ID,Installation_ID,AdminArea_ID,Ground_Type_ID,nextID,startdate,UNOM,Program_ID,
						Visibility,
						Sidewalk_width,
						Condition,
						Patency,
						Reconstruction,
						Closed_loop,
						Electricity_connection) 
				values(@newID,@Installation_ID,@AdminArea_ID,@Ground_Type_ID,null,@PassportDate,@UNOM,@Program_ID,
						@Visibility,
						@Sidewalk_width,
						@Condition,
						@Patency,
						@Reconstruction,
						@Closed_loop,
						@Electricity_connection)
				update GUPassport set nextID=@newID where id=@lastID
				insert into GUPassport_State(GUPassport_ID,startdate,State) values (@newID,@PassportDate,'сформирован')
				set @resultID=@newID
			end
		close @c
		deallocate @c
	END
	ELSE
		begin
		insert into GUPassport(ID,
						Installation_ID,
						AdminArea_ID,
						Ground_Type_ID,
						nextID,
						startdate,
						UNOM,
						Program_ID,
						Visibility,
						Sidewalk_width,
						Condition,
						Patency,
						Reconstruction,
						Closed_loop,
						Electricity_connection) 
		values(
				@newID,	
				@Installation_ID,
				@AdminArea_ID,
				@Ground_Type_ID,
				NULL,
				@PassportDate,
				@UNOM,
				@Program_ID,
				@Visibility,
				@Sidewalk_width,
				@Condition,
				@Patency,
				@Reconstruction,
				@Closed_loop,
				@Electricity_connection)
		insert into GUPassport_State(GUPassport_ID,startdate,State) values (@newID,@PassportDate,'сформирован')
		end
		RETURN
END

GO
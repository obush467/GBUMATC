/****** Object:  StoredProcedure [dbo].[tbo_asp_detailed]    Script Date: 08/05/2016 08:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[tbo_asp_detailed]
@tab varchar(255),
--@addr varchar(255),
@iid varchar(255)=null,
@okrug varchar(255)= null
as

select top 0 * from dbo.tbo_vse_adresa

return
/*
select @addr = ISNULL(ltrim(rtrim(@addr)),''),
       @id =  ISNULL(ltrim(rtrim(@id)),'') 


select @addr = case when @addr ='' then '' else @addr +'%' end 
      
      
if(@tab='rez1')      begin
      
select    
	  *
	    from tbo_vse_adresa  
	where (@addr ='' or adres_mesta_sbora_tbo like @addr or adres_mesta_sbora_kgm like @addr )  
	and(@id='' or id_mesta_sbora_tbo=@id or id_mesta_sbora_kgm=@id)
 
	end;
	      
if(@tab='rez2')      begin


select *
from  tbo_otdelnie o 
where (@addr ='' or adres_mesta_sbora_otkhodov like @addr)
and (@id='' or id_mesta_sbora_otkhodov=@id)


end
	
	
	if(@tab='rez3')      begin
	
select *
from tbo_zapolnaem_nejelyo 
where( @addr ='' or adres_mesta_sbora_tbo like @addr or
   adres_mesta_sbora_tbo like @addr or
   adres_mesta_sbora_kgm like @addr )
     and (@id='' or id_mesta_sbora_tbo=@id or id_mesta_sbora_kgm=@id)

end*/
GO

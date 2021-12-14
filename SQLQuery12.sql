create or alter procedure AddRequestLine
@RequestId int = null,
@ProductName varchar(30) = null,
@Quantity int = null
as begin 
		--check for all data entered
if @RequestId is null or @ProductName is null or @quantity is null
begin print 'All parameters must be entered.';
return -1;
end
if not exists (select 1 from requests where id = @RequestId)
begin print 'request not found';
return -2;
end
if not exists (select 1 from products where name = @ProductName)
Begin print'product not found';
return-3;
End
if @Quantity < 1 
begin
print 'Quantity must me at least 1';
return -4;
		-- all parameters are checked at this point
Declare @ProductId as int;
select @ProductId = id from products where name =@ProductName;
--Do the inser
Insert Requestlines (RequestId,ProductId,Quantity)
values(@RequestId, @ProductId, @Quantity);
print 'insert win';
return 0;
end end
 go
 exec AddRequestLine @RequestId = 1, @Productname = 'RedbottomHeels', @Quantity =3;
END
delete from Requestlines
where id = @RequestlineId;
go 
exec DeleteRequestLineById @RequestlineId = 4;
go
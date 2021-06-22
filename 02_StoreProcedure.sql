use classicmodels;
-- Tạo procedure
delimiter //
create procedure findAllCustomers()
begin
	select * from customers;
end //
delimiter ;
-- Gọi procedure
call findAllCustomers();
-- Sửa procedure (MySQL không hỗ trợ sửa nên phải xóa đi và tạo lại procedure mới)
delimiter //
drop procedure if exists `findAllCustomers`//
create procedure findAllCustomers()
begin
	select * from customers where customerNumber = 175;
end //
delimiter ;

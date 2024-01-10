use retail;

delimiter $$
create procedure customer_usa()
Begin 
    select  *
    from customers
    where country = 'USA';
end$$
delimiter ;

call customer_usa();

-- create stored procedure where when its called, it gives all the records of motorcycles

delimiter $
create procedure motorcycle()
    select  * 
    from products
    where  productline = 'motorcyacles';
end$
delimiter ;

call  motorcycles();


delimiter $$
create procedure customers_any(IN con varchar(55))
begin 
select * 
from customers 
where country = con;
end$$
delimiter ; 

call customers_any('Japan');
customer_usacustomer_usa

-- Create sp ehich takes productLines and give the representative productline record
delimiter $
create procedure products(in con varchar(55))
    select  * from products
    where  productline = con ;
end$
delimiter ;

call  products ('Ships');



select * from productlines;

## get the max and min salary from employees table
use retail;


-- Derived Table

select * from orderdetails;





select * from (select * from orderdetails) as abc;



select orderNumber, productCode
 from (select * from orderdetails) as abc;
 
 -- get the top 5 selling product from products tables,
 -- return productCode ,productName, productline and revienue (quantity * MSRP)
 
 

use retail;

select * from orders;

select * from orders
where customerNumber = 456;

explain select * from orders
where customerNumber = 456;


show index from  orderdetails;
show index from orders;


select * from orderdetails
where quantityOrdered = 26;

explain select * from orderdetails
where quantityOrdered = 26;

create index q_o 
on orderdetails(quantityOrdered);

explain select * from orderdetails
where quantityOrdered = 26;

show index from  orderdetails;

explain select * from orderdetails
where quantityOrdered = 26;

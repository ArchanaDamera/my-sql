/*
COUNT(): this count the number of rows
SUM(): the sum of the values in column
MAX()/MIN(): gives the largest/smallest value
AVG(): the average of the values in a column
ROUND(): round the values in the column
GROUP_CONCAT() - concatenates a set of strings and returns the concatenated string.
Aggregate functions combine multiple rows together to form a single value of more meaningful information.


GROUP BY is a clause used with aggregate functions to combine data from one or more columns.
HAVING limit the results of a query based on an aggregate property.
*/




/*
GROUP_CONCAT()
*/


-- agregate the customer name in one row, group by on the basis of country





-- table alias




/*
SET OPERATIONS
*/
-- UNION
-- create new table of motocycle only


-- add data in of new table




-- union all


/*
MINUS – returns all distinct rows selected by the first query but not by the second.
UNION – returns all distinct rows selected by either query
INTERSECT – returns all distinct rows selected by both queries.
*/

-- referential integrity
/*
1. DEPENDENCY
2. CAN NOT DROP PARENT TABLE
3. CAN NOT DELETE ROWS FROM PARENT TABLE IF IT IS PRESENT IN CHILD TABLE
4. INSERT HAS TO HAPPEN IN A PROPER ORDER.(FIRST IN PT THEN IN CT)
*/



-- ============ JOINS =======================
/*MySQL supports the following types of joins:
Inner join
Left join
Right join
Cross join
Self join*/

-- ===========8.2 Inner Join=================
/*join syntax
select t1.col_name, t2.col_name
from table1 as t1
INNER/LEFT/RIGHT JOIN table2 as t2
on t1.col_name = t2.col_name
*/

-- retrieve customer number, customerName from customer table & orderNumber, orderDate, status , 
-- customerNumber from orders table, do the inner join on the basis of customer number.
use retail;
select c.customerNumber  , c.customerName , o.orderNumber , o.orderDate , o.status 
from customers as c
join orders as o
on c.customerNumber = o.customerNumber;

-- do the inner join offices and employees,  retrive officecode and employees,retrive officecode,state
-- employee Number firstName
select o.officecode, o.state ,e.employeeNumber,e.firstName
from offices as o
join employees as e
using (officecode);

select count(*)
from offices as o
join employees as e
using (officecode);

select count(*)
from offices as o
left join employees as e
using (officecode);






-- to get the number of rows use count(*) in joins









-- =========== LEFT Join=================


-- left join 

select c.customerNumber  , c.customerName , o.orderNumber , o.orderDate , o.status 
from customers as c
left join orders as o
on c.customerNumber = o.customerNumber;

select count(*)
from customers as c
left join orders as o
on c.customerNumber = o.customerNumber;








-- =========== RIGHT Join=================
-- right join 

select c.customerNumber  , c.customerName , o.orderNumber , o.orderDate , o.status 
from customers as c
right join orders as o
on c.customerNumber = o.customerNumber;

select count(*) 
from customers as c
right join orders as o
on c.customerNumber = o.customerNumber;


select c.customerNumber  , o.orderNumber 
from customers as c
 join orders as o
on c.customerNumber = o.customerNumber
join employees as e
on e.employeesNumber;


use retail;
select * from offices;  
select count(*) from employees; 
-- 161 
select *
from offices
cross join employees;








-- ===========8.5 Cross Join=================

/*
syntax
select col_name
from table_name
cross join table_name

*/
SELECT DISTINCT city from offices;
SELECT COUNT(*) city from offices;

-- No need of matching column condition
SELECT o1.city, o2.city FROM offices o1
CROSS JOIN offices o2;

SELECT COUNT(*) FROM offices o1
CROSS JOIN offices o2;

-- Cross Join with WHERE
-- behaves like INNER JOIN
SELECT o1.city, o2.city FROM offices o1
CROSS JOIN offices o2
WHERE o1.city = o2.city;


-- ===========8.6 Self Join=================

select * from emoployees;






SELECT * FROM employees;



select e2.firstName, e1.firstName
from employees as e1
join employees as e2
on e1.employeeNumber = e2.reportsTo;


 




select e2.firstName, e1.firstName
from employees as e1
Natural join employees as e2;


-- set operations
create table product_Motorcycles
select * from products
where productline = 'Motorcycles';

select count(*) from products;


select count(*) from product_Motorcycles;

select * from products
union
select * from product_motorcycles;

select * from products
union all
select * from product_motorcycles;

-- perform full outer join between customers and order 

select *
from customers
left join orders 
on customers.customerNumber= orders.customerNumber
union
select * 
from customers
right join orders 
on customers.customerNumber= orders.customerNumber;


INTERSETION 






-- Display the employee name and manager name
-- Self join using INNER JOIN clause


-- Self join using LEFT JOIN clause






/*=====================================
	Section 9: Subqueries    
=======================================*/

SELECT * FROM employees;
SELECT * FROM offices;

-- One approach using JOINs
-- get all columns from employees and office where country is usa in officeCode


select * from OFFICES;
select * from EMPLOYEES;
-- common column -- office code --USA = 1,2,3

-- Retrive all the employees who are working from USA using joins




select * 
from employees as em
 join offices as o
on em.officecode= o.officecode
where o.country = 'USA';

select *
from offices as o
join employees as e
on o.officeCode = e.officeCode
where country = 'USA';

select *
from offices as o
join employees as e
on o.officeCode = e.officeCode
where officeCode IN (1,2,3);


select  officeCode
from  offices
where country = 'USA';

select * from employees 
where officeCode IN (select  officeCode
from offices
where country = 'USA');  -- multiple row subquery

select * from payments;
-- retrive only those which are greater than avg for amount table.
select avg(amount)
from payments;

select * from payments
where amount > (select avg(amount)
from payments); -- scalar subquery


-- corelated subquery --- v.m.p 



use retail;
select * from orders;

-- select orderDate and orderNumber with status in orders table, only for those
-- customers who are from germeny




select o.orderDate,o.orderNumber,o.status 
from orders as o
where o.customerNumber in (select c.customerNumber 
from customers as c
where c.country="Germany");


select *
from orders 
where customerNumber in (select customerNumber 
from customers
where country="Germany"); -- multiple row suquary 

-- corelated subquery 
select * from orders;
-- get orderNumber and status for those customers who are having status shipped or resolved
select status
from orders as o2
where status = 'shipped' or status = ' resolved';


select orderNumber ,status
from orders as o1
where status IN  (select status status
from orders as o2
where status = 'shipped' or status = ' resolved');





-- hackerrank 
-- leatcode



-- how to get nth highest salary or a person (without using limit /offset) 

create database test;
use test;

create table employees(
Name varchar(50),
salary int);
-- drop table table_name;
insert into employees()
values
('A', 60000),
('B', 55000),
('C', 45000),
('D', 30000);

select * from employees;



select *
from employees as e1
where 4 =1  = (select count(*)
                 from employees as e2
                 where e2.salary > e1 .salary);

select *
from employees as e1
where 3 =1  = (select count(*)
                 from employees as e2
                 where e2.salary > e1 .salary);


insert into employees()
values
('E', 45000);

select * from employees;

select *
from employees as e1
where 3 =1  = (select count(*)
                 from employees as e2
                 where e2.salary > e1 .salary);
				
 
                 
delete from employees 
where E = 45000;









select * from 



-- Using sub-query







-- select those payments which is greater than the average of amount payments table.




-- select those customers who haven't made an order




-- Nth highest salary without using limit offset



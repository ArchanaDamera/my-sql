
-- triggers

/* SYNTAX
CREATE TRIGGER trigger_name
[Before|After]
[INSERT | UPDATE | DELETE]
ON table_name
[for each row | for each column]
[trigger body]
*/


-- create after delete trigger called back_up on emp

use test;

select * from employees;

create table emp_backup
select * from employees;

select * from emp_backup;

truncate table emp_backup;  # delete all the records 

describe  emp_backup;


CREATE TRIGGER trig_back
After
DELETE
on employees
for each row
insert into  emp_backup values (old.Name , old.salary);


select * from employees;

delete from employees
where Name = 'c';

delete from employees
where Name = 'E';

select * from employees;


select * from emp_backup;


create table  customers(
id int,
name varchar(50),
credit int);




CREATE TRIGGER bfr_cr
Before 
INSERT 
ON customers
for each row 
SET NEW.credit = NEW.credit + 400;

drop trigger bfr_cr;





insert into customers()
values
(1 .'A',100);




















-- trigger body after: [insert into table_name values (old.col_name, old.col_name, old.col_name)]












-- delete data from emp table



-- check both the tables.


-- drop trigger trigger_name;






-- trigger body (before) : set new.col_name = new.col_name

-- create table name sales, with column , id, name, ammount

-- insert some data



-- select all from sales.




-- create a before insert trigger on sales table, for each row has been added, add 100 extra in ammount column



-- insert one row in sales table.




-- create table sales_backup same as the sales column.  



/*==================================================
	Section 6: Handling & Manipulating Data
    
    Querying, Sorting , Filtering and Grouping Data
======================================================*/
use retail;
-- select all columns and rows employees table







-- selecting specific column
SELECT employeeNumber,firsrName,officeCode
from employees;


-- giving alias to columns (count functions)
select* from employees;

select count(*) as emp_c
from employees;


-- select the motocycle products only 
select * from products;

select * 
from products
where productiline = 'Motorcycle';


-- how many motorcycles i have?
select count(*)
from 


 















-- giving alias to columns ( count functions )





-- select the motocycle products only





-- how many motorcyles i have?





-- average of MSRP in products








-- DISTINCT: retrieve the unique values 
/*
SELECT DISTINCT col_name
FROM tabe_name;
*/

-- What are the unique products we have?





-- what is the number of unique products we have?


/*==================
     WHERE CLAUSE
==================*/

-- select only those customers who are from USA






-- count of those customers who are from USA



-- select all the sales repersentatives



/*
clauses: where
operators:
logical operator:
1. IN/NOT IN
2. AND/OR
3. BETWEEN
4. LIKE/NOT LIKE
*/


/*============
-- IN/ NOT IN
===============*/

-- select all those employees with the office code of 1,3,4,6


-- select all those employees with the office code of not 2 and 4




-- select product code and price only for the 4,10 and 15 orderlinenumber in orderdetails table


/*============
    BETWEEN
===============*/

-- SELECT all the customers who have made payment between 10,000 to 20,000 from payments




-- select only those orders which have been made in june of 2003


-- from the payments table, I need only those payments which are done in year of 2004.





/*
-- LIKE operator / NOT LIKE
*/

-- select those products which product name stars with 'T'



-- select those name ends with 'r', products table.


-- select those products name which contains 'son' in them



-- "se_en"
-- seven
-- se7en
-- sewen

-- who are the employees whose firstname have 4 characters and starts with 'Ma'




/*========================
IS NULL / NOT NULL operator 
=========================*/


-- select those rows where state is null in customers table.


-- in orders table select those rows where comment is not null



/*==========
  COALESCE() - allows you to substitute NULL values.
  COALESCE(col_name, 'value')
=========*/
-- 'n/a'
-- state column in customers


/*===========
    AND/OR
=============*/

-- select those products where the quantity is less than 8000 and price is greater than 30



-- select those customers who are from USA or there sales representative id is 1323


/*===========
    group by 
=============*/

-- what is the count of each product we have?



-- select only those prducts which count is greater than 10




-- average msrp of each product which is greater than 100



-- in the orders table how many orders are in each status



/*============
   order by 
==============*/

-- sort msrp to hightest to lowest



-- sort msrp to lowest to highest


/*=============
	 limit
============*/

-- get the top 5 highest msrp products


-- get the 6th heighest msrp product 


-- grab the 7th and 8th highest MSRP product from products table.


-- grab the 8th highest buyprice from products table.






-- get the least 3 msrp products





-- questions
-- show average msrp of productLine order by heighest to lowest and show top 3






-- total sum of amount in each year in payments table.


/*===========
	 case
=============*/
-- Syntax
/*
SELECT col_name,
 CASE
  WHEN (condition) THEN 'value'
  WHEN (condition) THEN 'value'
  ELSE 'value'
 END
FROM table;
*/
-- products table.
-- where quantity in stock is less than 5000 then refill stock
-- where stock is less than 8000 then order stock
-- rest enough stock



-- where paymenet above 50000 then 'high value'
-- else 'low value' in payments table






-- museum assignment




/*
1. FROM/JOIN: The FROM and/or JOIN clauses are executed first to determine the data of interest.

2. WHERE: The WHERE clause is executed to filter out records that do not meet the constraints.

3. GROUP BY: The GROUP BY clause is executed to group the data based on the values in one or more columns.

4. HAVING: The HAVING clause is executed to remove the created grouped records that don’t meet the constraints.

5. SELECT: The SELECT clause is executed to derive all desired columns and expressions.

6. ORDER BY: The ORDER BY clause is executed to sort the derived values in ascending or descending order.

7. LIMIT/OFFSET: Finally, the LIMIT and/or OFFSET clauses are executed to keep or skip a specified number of rows.

*/



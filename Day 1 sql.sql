-- this is a single line comment
/* this 
is a 
multiple line 
comment
*/

CREATE DATABASE innomatics;

USE innomatics;

create table students(
ID int,
Firstname varchar(50),
Age int,
Gender varchar(20));

insert into students()
values
(1,'Aishu',21,'Female');

select * from students;

insert into students()
values
(2,'Ram',20,'Male'),
(3,'varsha',18,'Female'),
(4,'Yshu',17,'Female');

select * from students;


-- updating age of Aishu 21 to 23
update students
set Age = 23
where ID = 1; 

select * from students;

delete from students
where ID =1;



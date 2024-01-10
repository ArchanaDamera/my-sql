
drop database if exists innomatics;

create database if not exists innomatics;

use innomatics;

create table batch_251(
ID  int,
name varchar(255),
Age int,
Gender ENUM('Male','Female'),
Email varchar(255));


desc batch_251;


select * from batch_251;

insert into batch_251(ID,Name, Age, Gender,Email)
values
(1, 'Aishu', 21, 'Female', 'aishu@gmail.com'),
(2, ' Ram' , 24, 'Male', 'ravi56@gmail.com');


-- problem 1 : duplicancy  of the data 
-- problem 2 : null values 

--  solution : contraints (set of riles )

-- primary key : it uniquely identify each record in a table
-- 1 it wont take any null values 
-- 2 only unique values in the column 
-- 3 only on primary key 

-- unique key : it makes sure that all values are unique 
 
 -- not null : it wont take null values 
 
 
-- default : if you are not passing any values , it will take default value
 
-- auto_increment : it will add numbers starting from 1 by default till n number of rows in a table if any value is not  passed 

-- it only applied in primary key and only works on intiger data 

-- check : it takes condition (< 0) it takes 

drop table batch_251;

create table batch_251(
ID  int primary key  auto_increment,
name varchar(255) NOT NULL ,
Age int,
Gender ENUM('Male','Female') NOT NULL,
Email varchar(255)unique key);


insert into batch_251(ID,Name, Age, Gender,Email)
values
(1, 'Aishu', 21, 'Female', 'aishu@gmail.com'),
(2, ' Ram' , 24, 'Male', 'ravi56@gmail.com');


insert into batch_251(ID,Name, Age, Gender,Email)
values
(3, 'Aishu', 21, 'Female', 'aishu@gmail.com');


create table classes(
classID int primary key auto_increment,
stu_id int ,
subject varchar(255), 
foreign key (stu_id)
references batch_251(ID)on delete cascade);

-- referntial integrity 
-- inserting order : (first parent then child)
-- deleting order: (first for child then parent) -- on delete cascade
-- can  not drop parent table .

drop table classes;

-- add data into classes table.
-- delect record from batch_251,  check wether it is  delet in  child table or not 


insert into classes()
value
(100,3, 'english');



create table employees(
emp_id int , 
emp_Name varchar(255),
dep varchar(255),
primary key (emp_id, emp_Name));  -- composite key 

-- how to drop column

use innomatics;

alter table employees
drop column dep;








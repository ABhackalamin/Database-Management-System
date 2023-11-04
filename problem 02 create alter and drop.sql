--create
create database university
use university

create table instructor(
ID varchar(20),
name varchar(15) not null,
dept_name varchar(15),
salary numeric(8,2),
primary key(ID));
insert into instructor(ID,name,dept_name,salary) values('200610','alamin','ICE','86000')
insert into instructor(ID,name,dept_name,salary) values('200611','Nirob','CSE','80000')
insert into instructor(ID,name,dept_name,salary) values('200601','Naima Islam','EEE','70000')
insert into instructor(ID,name,dept_name,salary) values('200622','Sajeeb kumur','EECE','90000')
insert into instructor(ID,name,dept_name,salary) values('200605','Uamme kulsum','CE','95000')
insert into instructor(ID,name,dept_name,salary) values('200600','Amin','Arct','68000')
select * from instructor
--alter 
alter table instructor add course_id varchar(20)
select * from instructor
--drop
drop table instructor 
select * from instructor

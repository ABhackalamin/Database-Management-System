create database university
use university
create table insertvalue(
			 dept_name varchar(15),
			 bulding varchar(15),
			 budget numeric(8,2)
			 primary key(dept_name)

);
insert into insertvalue values('ICE','Engineering',87000)
insert into insertvalue values('CSE','Engineering',90000)
insert into insertvalue values('EEE','JHON',95000)
insert into insertvalue values('EECE','Watson',80000)
insert into insertvalue   values('BANGLA','BANGLA',68000)
insert into insertvalue values('ENGLISH','ENGLISH',55000)

select * from insertvalue
select dept_name ,budget from insertvalue
select dept_name ,budget from insertvalue where dept_name = 'EECE' or budget>80000

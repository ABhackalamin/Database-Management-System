use university
 create table aggrifuntion(
 id varchar(10),name varchar(20),budget numeric(8,2),
 primary key(id) )
 insert into aggrifuntion values(1,'uamme kusum',80020);
 insert into aggrifuntion values(2,'amin',80021);
 insert into aggrifuntion values(3,'uamme kusum',80025);
 insert into aggrifuntion values(4,'Alamin khan',80020);
 insert into aggrifuntion values(5,'Alamin ',80020);
 
 insert into aggrifuntion values(6,'uamme kusum',80020);
 insert into aggrifuntion values(7,'amina',80020);
 insert into aggrifuntion values(8,'uamme',80020);
 insert into aggrifuntion values(9,'saiful',80020);
 insert into aggrifuntion values(10,'saiful 1',80020);
 
 select * from aggrifuntion
 
 --count
 select COUNT(id) as Count_ID from aggrifuntion
 --maximun
 select MAX(budget) as Budget_max from aggrifuntion
 
 --minimun
 select MIN(budget) as Budget_min from aggrifuntion
 
 --avg
 select AVG(budget) as mean from aggrifuntion
 
 --sum 
 select SUM(budget) as total_salary from aggrifuntion
create table employee_db.indiaTable(years int,india double(8,2),bangladesh double(8,2));
insert into  employee_db.indiaTable values(2007,100.5,50.45),(2008,70.00,75.25); 

select * from  employee_db.indiaTable;

select years, 'india', india
from employee_db.indiaTable
union all
select  years, 'bangladesh', bangladesh
from employee_db.indiaTable ;

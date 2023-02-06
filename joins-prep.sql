-- SQL JOINS
create database joinsDemo;
create table joinsDemo.table1(col_A integer);
insert into joinsDemo.table1 values(1),(1),(0),(null);

create table joinsDemo.table2(col_B integer);
insert into joinsDemo.table2 values(1),(null),(0),(null);

-- Inner
SELECT a.COL_A as A, b.COL_B as B FROM joinsDemo.table1 a INNER JOIN joinsDemo.table2 b ON a.COL_A = b.COL_B;

-- left outer
SELECT a.COL_A as A, b.COL_B as B FROM joinsDemo.table1 a LEFT OUTER JOIN joinsDemo.table2 b ON a.COL_A = b.COL_B;

-- right outer
SELECT a.COL_A as A, b.COL_B as B FROM joinsDemo.table1 a RIGHT OUTER JOIN joinsDemo.table2 b ON a.COL_A = b.COL_B;


create table dbv1.salesman (
salesman_id integer,
name varchar(50),
city varchar(50),
commission  double(8,2)
);

insert into dbv1.salesman values(5001 ,"James Hoog","New York",       0.15);
insert into dbv1.salesman values(5002 ,"Nail Knite","Paris   ",       0.13);
insert into dbv1.salesman values(5005 ,"Pit Alex  ","London  ",       0.11);
insert into dbv1.salesman values(5006 ,"Mc Lyon   ","Paris   ",       0.14);
insert into dbv1.salesman values(5007 ,"Paul Adam ","Rome    ",       0.13);
insert into dbv1.salesman values(5003 ,"Lauson Hen","San Jose",       0.12);

select * from  dbv1.salesman;

create table dbv1.customer (
customer_id integer,
cust_name     varchar(50),
city varchar(50),
grade   integer,
salesman_id integer
);
insert into dbv1.customer values(3002 ,"Nick Rimando  ","New York  ",100 ,5001);
insert into dbv1.customer values(3007 ,"Brad Davis    ","New York  ",200 ,5001);
insert into dbv1.customer values(3005 ,"Graham Zusi   ","California",200 ,5002);
insert into dbv1.customer values(3008 ,"Julian Green  ","London    ",300 ,5002);
insert into dbv1.customer values(3004 ,"Fabian Johnson","Paris     ",300 ,5006);
insert into dbv1.customer values(3009 ,"Geoff Cameron ","Berlin    ",100 ,5003);
insert into dbv1.customer values(3003 ,"Jozy Altidor  ","Moscow    ",200 ,5007);
insert into dbv1.customer values(3001 ,"Brad Guzan    ","London    ",0,5005);

create table dbv1.orders (
ord_no   integer,
purch_amt double(8,2),
ord_date    varchar(50),
customer_id  integer,
salesman_id  integer
);

insert into dbv1.orders values(70001,150.5  ,"2012-10-05",3005,5002);
insert into dbv1.orders values(70009,270.65 ,"2012-09-10",3001,5005);
insert into dbv1.orders values(70002,65.26  ,"2012-10-05",3002,5001);
insert into dbv1.orders values(70004,110.5  ,"2012-08-17",3009,5003);
insert into dbv1.orders values(70007,948.5  ,"2012-09-10",3005,5002);
insert into dbv1.orders values(70005,2400.6 ,"2012-07-27",3007,5001);
insert into dbv1.orders values(70008,5760   ,"2012-09-10",3002,5001);
insert into dbv1.orders values(70010,1983.43,"2012-10-10",3004,5006);
insert into dbv1.orders values(70003,2480.4 ,"2012-10-10",3009,5003);
insert into dbv1.orders values(70012,250.45 ,"2012-06-27",3008,5002);
insert into dbv1.orders values(70011,75.29  ,"2012-08-17",3003,5007);
insert into dbv1.orders values(70013,3045.6 ,"2012-04-25",3002,5001);

create table dbv1.company_mast (
COM_ID  integer,
COM_NAME     varchar(50)
);
insert into dbv1.company_mast values(11,"Samsung  ");
insert into dbv1.company_mast values(12,"iBall    ");
insert into dbv1.company_mast values(13,"Epsion   ");
insert into dbv1.company_mast values(14,"Zebronics");
insert into dbv1.company_mast values(15,"Asus     ");
insert into dbv1.company_mast values(16,"Frontech ");

create table dbv1.item_mast (
PRO_ID   integer,
PRO_NAME varchar(50),
PRO_PRICE double(8,2),
PRO_COM  integer
);

insert into dbv1.item_mast values(101,"Mother Board    ",3200.00,15);
insert into dbv1.item_mast values(102,"Key Board       ", 450.00,16);
insert into dbv1.item_mast values(103,"ZIP drive       ", 250.00,14);
insert into dbv1.item_mast values(104,"Speaker         ", 550.00,16);
insert into dbv1.item_mast values(105,"Monitor         ",5000.00,11);
insert into dbv1.item_mast values(106,"DVD drive       ", 900.00,12);
insert into dbv1.item_mast values(107,"CD drive        ", 800.00,12);
insert into dbv1.item_mast values(108,"Printer         ",2600.00,13);
insert into dbv1.item_mast values(109,"Refill cartridge", 350.00,13);
insert into dbv1.item_mast values(110,"Mouse           ", 250.00,12);

create table dbv1.emp_department (
DPT_CODE integer,
DPT_NAME     varchar(50),
DPT_ALLOTMENT   integer
);
insert into dbv1.emp_department values(57,"IT     ", 65000);
insert into dbv1.emp_department values(63,"Finance", 15000);
insert into dbv1.emp_department values(47,"HR     ",240000);
insert into dbv1.emp_department values(27,"RD     ", 55000);
insert into dbv1.emp_department values(89,"QC     ", 75000);




create table dbv1.emp_details (
EMP_IDNO  integer,
EMP_FNAME varchar(50),
EMP_LNAME varchar(50),
EMP_DEPT  integer
);

insert into dbv1.emp_details values(127323,"Michale ","Robbin   ",57);
insert into dbv1.emp_details values(526689,"Carlos  ","Snares   ",63);
insert into dbv1.emp_details values(843795,"Enric   ","Dosio    ",57);
insert into dbv1.emp_details values(328717,"Jhon    ","Snares   ",63);
insert into dbv1.emp_details values(444527,"Joseph  ","Dosni    ",47);
insert into dbv1.emp_details values(659831,"Zanifer ","Emily    ",47);
insert into dbv1.emp_details values(847674,"Kuleswar","Sitaraman",57);
insert into dbv1.emp_details values(748681,"Henrey  ","Gabriel  ",47);
insert into dbv1.emp_details values(555935,"Alex    ","Manuel   ",57);
insert into dbv1.emp_details values(539569,"George  ","Mardy    ",27);
insert into dbv1.emp_details values(733843,"Mario   ","Saule    ",63);
insert into dbv1.emp_details values(631548,"Alan    ","Snappy   ",27);
insert into dbv1.emp_details values(839139,"Maria   ","Foster   ",57);



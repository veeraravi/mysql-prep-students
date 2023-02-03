Table Name: Employee
create table bharath_db.EMPLOYEE_2
(
EMPNO int(4) not null,
ENAME VARCHAR(10),
MGR int(4),
HIREDATE DATE,
SAL double(7,2),
DEPTNAME VARCHAR(10)
);
insert into bharath_db.EMPLOYEE_2(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (1, 'SMITH', 3, str_to_date('17-12-1980', '%d-%m-%Y'), 800.00, 'BANKING');

insert into bharath_db.EMPLOYEE_2(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (2, 'ALLEN', 4, str_to_date('20-02-1981', '%d-%m-%Y'), 1600.00, 'INSURANCE');

insert into bharath_db.EMPLOYEE_2(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (3, 'WARD', null, str_to_date('22-02-1981', '%d-%m-%Y'), 1250.00, 'BANKING');

insert into bharath_db.EMPLOYEE_2(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (4, 'JONES', null, str_to_date('02-04-1981', '%d-%m-%Y'), 2975.00, 'INSURANCE');

insert into bharath_db.EMPLOYEE_2(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (5, 'MARTIN', 4, str_to_date('28-09-1981', '%d-%m-%Y'), 1250.00, 'INSURANCE');

insert into bharath_db.EMPLOYEE_2(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (6, 'BLAKE', 7, str_to_date('01-05-1981', '%d-%m-%Y'), 2850.00, 'SERVICES');

insert into bharath_db.EMPLOYEE_2 (EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (7, 'CLARK', null, str_to_date('09-06-1981', '%d-%m-%Y'), 2450.00, 'SERVICES');

insert into bharath_db.EMPLOYEE_2(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (8, 'SCOTT', 4, str_to_date('09-12-1982', '%d-%m-%Y'), 3000.00, 'INSURANCE');

insert into bharath_db.EMPLOYEE_2(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (9, 'KING', 3, str_to_date('17-11-1981', '%d-%m-%Y'), 5000.00, 'BANKING');

insert into bharath_db.EMPLOYEE_2(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (10, 'TURNER', 4, str_to_date('08-09-1981', '%d-%m-%Y'), 1500.00, 'INSURANCE');

insert into bharath_db.EMPLOYEE_2(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (11, 'ADAMS', 3, str_to_date('12-01-1983', '%d-%m-%Y'), 1100.00, 'BANKING');

insert into bharath_db.EMPLOYEE_2(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (12, 'JAMES', 7, str_to_date('03-12-1981', '%d-%m-%Y'), 950.00, 'SERVICES');

insert into bharath_db.EMPLOYEE_2(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (13, 'FORD', 4, str_to_date('03-12-1981', '%d-%m-%Y'), 3000.00, 'INSURANCE');

insert into bharath_db.EMPLOYEE_2(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (14, 'MILLER', 4, str_to_date('23-01-1982', '%d-%m-%Y'), 1300.00, 'INSURANCE');


Table Name: Incentives

create table INCENTIVES
(
  EMPID            INTEGER,
  INCENTIVE_DATE   DATE,
  INCENTIVE_AMOUNT double(18,2)
)
insert into INCENTIVES (EMPID, INCENTIVE_DATE, INCENTIVE_AMOUNT)
values (1, str_to_date('01-02-2019', '%d-%m-%Y'), 5000.00);

insert into INCENTIVES (EMPID, INCENTIVE_DATE, INCENTIVE_AMOUNT)
values (2, str_to_date('06-02-2019', '%d-%m-%Y'), 3000.00);

insert into INCENTIVES (EMPID, INCENTIVE_DATE, INCENTIVE_AMOUNT)
values (3, str_to_date('07-02-2019', '%d-%m-%Y'), 4000.00);

insert into INCENTIVES (EMPID, INCENTIVE_DATE, INCENTIVE_AMOUNT)
values (1, str_to_date('01-01-2019', '%d-%m-%Y'), 4500.00);

insert into INCENTIVES (EMPID, INCENTIVE_DATE, INCENTIVE_AMOUNT)
values (2, str_to_date('04-01-2019', '%d-%m-%Y'), 3500.00);

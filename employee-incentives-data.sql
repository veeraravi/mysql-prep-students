Table Name: Employee
create table EMPLOYEE
(
  EMPNO    NUMBER(4) not null,
  ENAME    VARCHAR2(10),
  MGR      NUMBER(4),
  HIREDATE DATE,
  SAL      NUMBER(7,2),
  DEPTNAME VARCHAR2(10)
)
insert into EMPLOYEE(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (1, 'SMITH', 3, to_date('17-12-1980', 'dd-mm-yyyy'), 800.00, 'BANKING');

insert into EMPLOYEE(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (2, 'ALLEN', 4, to_date('20-02-1981', 'dd-mm-yyyy'), 1600.00, 'INSURANCE');

insert into EMPLOYEE(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (3, 'WARD', null, to_date('22-02-1981', 'dd-mm-yyyy'), 1250.00, 'BANKING');

insert into EMPLOYEE(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (4, 'JONES', null, to_date('02-04-1981', 'dd-mm-yyyy'), 2975.00, 'INSURANCE');

insert into EMPLOYEE(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (5, 'MARTIN', 4, to_date('28-09-1981', 'dd-mm-yyyy'), 1250.00, 'INSURANCE');

insert into EMPLOYEE(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (6, 'BLAKE', 7, to_date('01-05-1981', 'dd-mm-yyyy'), 2850.00, 'SERVICES');

insert into EMP1 (EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (7, 'CLARK', null, to_date('09-06-1981', 'dd-mm-yyyy'), 2450.00, 'SERVICES');

insert into EMPLOYEE(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (8, 'SCOTT', 4, to_date('09-12-1982', 'dd-mm-yyyy'), 3000.00, 'INSURANCE');

insert into EMPLOYEE(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (9, 'KING', 3, to_date('17-11-1981', 'dd-mm-yyyy'), 5000.00, 'BANKING');

insert into EMPLOYEE(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (10, 'TURNER', 4, to_date('08-09-1981', 'dd-mm-yyyy'), 1500.00, 'INSURANCE');

insert into EMPLOYEE(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (11, 'ADAMS', 3, to_date('12-01-1983', 'dd-mm-yyyy'), 1100.00, 'BANKING');

insert into EMPLOYEE(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (12, 'JAMES', 7, to_date('03-12-1981', 'dd-mm-yyyy'), 950.00, 'SERVICES');

insert into EMPLOYEE(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (13, 'FORD', 4, to_date('03-12-1981', 'dd-mm-yyyy'), 3000.00, 'INSURANCE');

insert into EMPLOYEE(EMPNO, ENAME, MGR, HIREDATE, SAL, DEPTNAME)
values (14, 'MILLER', 4, to_date('23-01-1982', 'dd-mm-yyyy'), 1300.00, 'INSURANCE');



Table Name: Incentives

create table INCENTIVES
(
  EMPID            INTEGER,
  INCENTIVE_DATE   DATE,
  INCENTIVE_AMOUNT NUMBER(18,2)
)
insert into INCENTIVES (EMPID, INCENTIVE_DATE, INCENTIVE_AMOUNT)
values (1, to_date('01-02-2019', 'dd-mm-yyyy'), 5000.00);

insert into INCENTIVES (EMPID, INCENTIVE_DATE, INCENTIVE_AMOUNT)
values (2, to_date('06-02-2019', 'dd-mm-yyyy'), 3000.00);

insert into INCENTIVES (EMPID, INCENTIVE_DATE, INCENTIVE_AMOUNT)
values (3, to_date('07-02-2019', 'dd-mm-yyyy'), 4000.00);

insert into INCENTIVES (EMPID, INCENTIVE_DATE, INCENTIVE_AMOUNT)
values (1, to_date('01-01-2019', 'dd-mm-yyyy'), 4500.00);

insert into INCENTIVES (EMPID, INCENTIVE_DATE, INCENTIVE_AMOUNT)
values (2, to_date('04-01-2019', 'dd-mm-yyyy'), 3500.00);

-- drop table joinsDemo.employees;
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




create table joinsDemo.employees (
EMPLOYEE_ID integer    ,
FIRST_NAME varchar(50),
LAST_NAME varchar(50),
EMAIL   varchar(50),
PHONE_NUMBER varchar(50),
HIRE_DATE varchar(12),
JOB_ID varchar(12),
SALARY double(8,2),
COMMISSION_PCT double(8,2),
MANAGER_ID  integer  ,
DEPARTMENT_ID integer) ;

insert into joinsDemo.employees values(100,"Steven     ","King       ","SKING    ","515.123.4567       ",2003-06-17,"AD_PRES    ",24000.00 ,0.00 ,   0 , 90);
insert into joinsDemo.employees values(101,"Neena      ","Kochhar    ","NKOCHHAR ","515.123.4568       ",2005-09-21,"AD_VP      ",17000.00 ,0.00 , 100 , 90);
insert into joinsDemo.employees values(102,"Lex        ","De Haan    ","LDEHAAN  ","515.123.4569       ",2001-01-13,"AD_VP      ",17000.00 ,0.00 , 100 , 90);
insert into joinsDemo.employees values(103,"Alexander  ","Hunold     ","AHUNOLD  ","590.423.4567       ",2006-01-03,"IT_PROG    ", 9000.00 ,0.00 , 102 , 60);
insert into joinsDemo.employees values(104,"Bruce      ","Ernst      ","BERNST   ","590.423.4568       ",2007-05-21,"IT_PROG    ", 6000.00 ,0.00 , 103 , 60);
insert into joinsDemo.employees values(105,"David      ","Austin     ","DAUSTIN  ","590.423.4569       ",2005-06-25,"IT_PROG    ", 4800.00 ,0.00 , 103 , 60);
insert into joinsDemo.employees values(106,"Valli      ","Pataballa  ","VPATABAL ","590.423.4560       ",2006-02-05,"IT_PROG    ", 4800.00 ,0.00 , 103 , 60);
insert into joinsDemo.employees values(107,"Diana      ","Lorentz    ","DLORENTZ ","590.423.5567       ",2007-02-07,"IT_PROG    ", 4200.00 ,0.00 , 103 , 60);
insert into joinsDemo.employees values(108,"Nancy      ","Greenberg  ","NGREENBE ","515.124.4569       ",2002-08-17,"FI_MGR     ",12008.00 ,0.00 , 101 ,100);
insert into joinsDemo.employees values(109,"Daniel     ","Faviet     ","DFAVIET  ","515.124.4169       ",2002-08-16,"FI_ACCOUNT ", 9000.00 ,0.00 , 108 ,100);
insert into joinsDemo.employees values(110,"John       ","Chen       ","JCHEN    ","515.124.4269       ",2005-09-28,"FI_ACCOUNT ", 8200.00 ,0.00 , 108 ,100);
insert into joinsDemo.employees values(111,"Ismael     ","Sciarra    ","ISCIARRA ","515.124.4369       ",2005-09-30,"FI_ACCOUNT ", 7700.00 ,0.00 , 108 ,100);
insert into joinsDemo.employees values(112,"Jose Manuel","Urman      ","JMURMAN  ","515.124.4469       ",2006-03-07,"FI_ACCOUNT ", 7800.00 ,0.00 , 108 ,100);
insert into joinsDemo.employees values(113,"Luis       ","Popp       ","LPOPP    ","515.124.4567       ",2007-12-07,"FI_ACCOUNT ", 6900.00 ,0.00 , 108 ,100);
insert into joinsDemo.employees values(114,"Den        ","Raphaely   ","DRAPHEAL ","515.127.4561       ",2002-12-07,"PU_MAN     ",11000.00 ,0.00 , 100 , 30);
insert into joinsDemo.employees values(115,"Alexander  ","Khoo       ","AKHOO    ","515.127.4562       ",2003-05-18,"PU_CLERK   ", 3100.00 ,0.00 , 114 , 30);
insert into joinsDemo.employees values(116,"Shelli     ","Baida      ","SBAIDA   ","515.127.4563       ",2005-12-24,"PU_CLERK   ", 2900.00 ,0.00 , 114 , 30);
insert into joinsDemo.employees values(117,"Sigal      ","Tobias     ","STOBIAS  ","515.127.4564       ",2005-07-24,"PU_CLERK   ", 2800.00 ,0.00 , 114 , 30);
insert into joinsDemo.employees values(118,"Guy        ","Himuro     ","GHIMURO  ","515.127.4565       ",2006-11-15,"PU_CLERK   ", 2600.00 ,0.00 , 114 , 30);
insert into joinsDemo.employees values(119,"Karen      ","Colmenares ","KCOLMENA ","515.127.4566       ",2007-08-10,"PU_CLERK   ", 2500.00 ,0.00 , 114 , 30);
insert into joinsDemo.employees values(120,"Matthew    ","Weiss      ","MWEISS   ","650.123.1234       ",2004-07-18,"ST_MAN     ", 8000.00 ,0.00 , 100 , 50);
insert into joinsDemo.employees values(121,"Adam       ","Fripp      ","AFRIPP   ","650.123.2234       ",2005-04-10,"ST_MAN     ", 8200.00 ,0.00 , 100 , 50);
insert into joinsDemo.employees values(122,"Payam      ","Kaufling   ","PKAUFLIN ","650.123.3234       ",2003-05-01,"ST_MAN     ", 7900.00 ,0.00 , 100 , 50);
insert into joinsDemo.employees values(123,"Shanta     ","Vollman    ","SVOLLMAN ","650.123.4234       ",2005-10-10,"ST_MAN     ", 6500.00 ,0.00 , 100 , 50);
insert into joinsDemo.employees values(124,"Kevin      ","Mourgos    ","KMOURGOS ","650.123.5234       ",2007-11-16,"ST_MAN     ", 5800.00 ,0.00 , 100 , 50);
insert into joinsDemo.employees values(125,"Julia      ","Nayer      ","JNAYER   ","650.124.1214       ",2005-07-16,"ST_CLERK   ", 3200.00 ,0.00 , 120 , 50);
insert into joinsDemo.employees values(126,"Irene      ","Mikkilineni","IMIKKILI ","650.124.1224       ",2006-09-28,"ST_CLERK   ", 2700.00 ,0.00 , 120 , 50);
insert into joinsDemo.employees values(127,"James      ","Landry     ","JLANDRY  ","650.124.1334       ",2007-01-14,"ST_CLERK   ", 2400.00 ,0.00 , 120 , 50);
insert into joinsDemo.employees values(128,"Steven     ","Markle     ","SMARKLE  ","650.124.1434       ",2008-03-08,"ST_CLERK   ", 2200.00 ,0.00 , 120 , 50);
insert into joinsDemo.employees values(129,"Laura      ","Bissot     ","LBISSOT  ","650.124.5234       ",2005-08-20,"ST_CLERK   ", 3300.00 ,0.00 , 121 , 50);
insert into joinsDemo.employees values(130,"Mozhe      ","Atkinson   ","MATKINSO ","650.124.6234       ",2005-10-30,"ST_CLERK   ", 2800.00 ,0.00 , 121 , 50);
insert into joinsDemo.employees values(131,"James      ","Marlow     ","JAMRLOW  ","650.124.7234       ",2005-02-16,"ST_CLERK   ", 2500.00 ,0.00 , 121 , 50);
insert into joinsDemo.employees values(132,"TJ         ","Olson      ","TJOLSON  ","650.124.8234       ",2007-04-10,"ST_CLERK   ", 2100.00 ,0.00 , 121 , 50);
insert into joinsDemo.employees values(133,"Jason      ","Mallin     ","JMALLIN  ","650.127.1934       ",2004-06-14,"ST_CLERK   ", 3300.00 ,0.00 , 122 , 50);
insert into joinsDemo.employees values(134,"Michael    ","Rogers     ","MROGERS  ","650.127.1834       ",2006-08-26,"ST_CLERK   ", 2900.00 ,0.00 , 122 , 50);
insert into joinsDemo.employees values(135,"Ki         ","Gee        ","KGEE     ","650.127.1734       ",2007-12-12,"ST_CLERK   ", 2400.00 ,0.00 , 122 , 50);
insert into joinsDemo.employees values(136,"Hazel      ","Philtanker ","HPHILTAN ","650.127.1634       ",2008-02-06,"ST_CLERK   ", 2200.00 ,0.00 , 122 , 50);
insert into joinsDemo.employees values(137,"Renske     ","Ladwig     ","RLADWIG  ","650.121.1234       ",2003-07-14,"ST_CLERK   ", 3600.00 ,0.00 , 123 , 50);
insert into joinsDemo.employees values(138,"Stephen    ","Stiles     ","SSTILES  ","650.121.2034       ",2005-10-26,"ST_CLERK   ", 3200.00 ,0.00 , 123 , 50);
insert into joinsDemo.employees values(139,"John       ","Seo        ","JSEO     ","650.121.2019       ",2006-02-12,"ST_CLERK   ", 2700.00 ,0.00 , 123 , 50);
insert into joinsDemo.employees values(140,"Joshua     ","Patel      ","JPATEL   ","650.121.1834       ",2006-04-06,"ST_CLERK   ", 2500.00 ,0.00 , 123 , 50);
insert into joinsDemo.employees values(141,"Trenna     ","Rajs       ","TRAJS    ","650.121.8009       ",2003-10-17,"ST_CLERK   ", 3500.00 ,0.00 , 124 , 50);
insert into joinsDemo.employees values(142,"Curtis     ","Davies     ","CDAVIES  ","650.121.2994       ",2005-01-29,"ST_CLERK   ", 3100.00 ,0.00 , 124 , 50);
insert into joinsDemo.employees values(143,"Randall    ","Matos      ","RMATOS   ","650.121.2874       ",2006-03-15,"ST_CLERK   ", 2600.00 ,0.00 , 124 , 50);
insert into joinsDemo.employees values(144,"Peter      ","Vargas     ","PVARGAS  ","650.121.2004       ",2006-07-09,"ST_CLERK   ", 2500.00 ,0.00 , 124 , 50);
insert into joinsDemo.employees values(145,"John       ","Russell    ","JRUSSEL  ","011.44.1344.429268 ",2004-10-01,"SA_MAN     ",14000.00 ,0.40 , 100 , 80);
insert into joinsDemo.employees values(146,"Karen      ","Partners   ","KPARTNER ","011.44.1344.467268 ",2005-01-05,"SA_MAN     ",13500.00 ,0.30 , 100 , 80);
insert into joinsDemo.employees values(147,"Alberto    ","Errazuriz  ","AERRAZUR ","011.44.1344.429278 ",2005-03-10,"SA_MAN     ",12000.00 ,0.30 , 100 , 80);
insert into joinsDemo.employees values(148,"Gerald     ","Cambrault  ","GCAMBRAU ","011.44.1344.619268 ",2007-10-15,"SA_MAN     ",11000.00 ,0.30 , 100 , 80);
insert into joinsDemo.employees values(149,"Eleni      ","Zlotkey    ","EZLOTKEY ","011.44.1344.429018 ",2008-01-29,"SA_MAN     ",10500.00 ,0.20 , 100 , 80);
insert into joinsDemo.employees values(150,"Peter      ","Tucker     ","PTUCKER  ","011.44.1344.129268 ",2005-01-30,"SA_REP     ",10000.00 ,0.30 , 145 , 80);
insert into joinsDemo.employees values(151,"David      ","Bernstein  ","DBERNSTE ","011.44.1344.345268 ",2005-03-24,"SA_REP     ", 9500.00 ,0.25 , 145 , 80);
insert into joinsDemo.employees values(152,"Peter      ","Hall       ","PHALL    ","011.44.1344.478968 ",2005-08-20,"SA_REP     ", 9000.00 ,0.25 , 145 , 80);
insert into joinsDemo.employees values(153,"Christopher","Olsen      ","COLSEN   ","011.44.1344.498718 ",2006-03-30,"SA_REP     ", 8000.00 ,0.20 , 145 , 80);
insert into joinsDemo.employees values(154,"Nanette    ","Cambrault  ","NCAMBRAU ","011.44.1344.987668 ",2006-12-09,"SA_REP     ", 7500.00 ,0.20 , 145 , 80);
insert into joinsDemo.employees values(155,"Oliver     ","Tuvault    ","OTUVAULT ","011.44.1344.486508 ",2007-11-23,"SA_REP     ", 7000.00 ,0.15 , 145 , 80);
insert into joinsDemo.employees values(156,"Janette    ","King       ","JKING    ","011.44.1345.429268 ",2004-01-30,"SA_REP     ",10000.00 ,0.35 , 146 , 80);
insert into joinsDemo.employees values(157,"Patrick    ","Sully      ","PSULLY   ","011.44.1345.929268 ",2004-03-04,"SA_REP     ", 9500.00 ,0.35 , 146 , 80);
insert into joinsDemo.employees values(158,"Allan      ","McEwen     ","AMCEWEN  ","011.44.1345.829268 ",2004-08-01,"SA_REP     ", 9000.00 ,0.35 , 146 , 80);
insert into joinsDemo.employees values(159,"Lindsey    ","Smith      ","LSMITH   ","011.44.1345.729268 ",2005-03-10,"SA_REP     ", 8000.00 ,0.30 , 146 , 80);
insert into joinsDemo.employees values(160,"Louise     ","Doran      ","LDORAN   ","011.44.1345.629268 ",2005-12-15,"SA_REP     ", 7500.00 ,0.30 , 146 , 80);
insert into joinsDemo.employees values(161,"Sarath     ","Sewall     ","SSEWALL  ","011.44.1345.529268 ",2006-11-03,"SA_REP     ", 7000.00 ,0.25 , 146 , 80);
insert into joinsDemo.employees values(162,"Clara      ","Vishney    ","CVISHNEY ","011.44.1346.129268 ",2005-11-11,"SA_REP     ",10500.00 ,0.25 , 147 , 80);
insert into joinsDemo.employees values(163,"Danielle   ","Greene     ","DGREENE  ","011.44.1346.229268 ",2007-03-19,"SA_REP     ", 9500.00 ,0.15 , 147 , 80);
insert into joinsDemo.employees values(164,"Mattea     ","Marvins    ","MMARVINS ","011.44.1346.329268 ",2008-01-24,"SA_REP     ", 7200.00 ,0.10 , 147 , 80);
insert into joinsDemo.employees values(165,"David      ","Lee        ","DLEE     ","011.44.1346.529268 ",2008-02-23,"SA_REP     ", 6800.00 ,0.10 , 147 , 80);
insert into joinsDemo.employees values(166,"Sundar     ","Ande       ","SANDE    ","011.44.1346.629268 ",2008-03-24,"SA_REP     ", 6400.00 ,0.10 , 147 , 80);
insert into joinsDemo.employees values(167,"Amit       ","Banda      ","ABANDA   ","011.44.1346.729268 ",2008-04-21,"SA_REP     ", 6200.00 ,0.10 , 147 , 80);
insert into joinsDemo.employees values(168,"Lisa       ","Ozer       ","LOZER    ","011.44.1343.929268 ",2005-03-11,"SA_REP     ",11500.00 ,0.25 , 148 , 80);
insert into joinsDemo.employees values(169,"Harrison   ","Bloom      ","HBLOOM   ","011.44.1343.829268 ",2006-03-23,"SA_REP     ",10000.00 ,0.20 , 148 , 80);
insert into joinsDemo.employees values(170,"Tayler     ","Fox        ","TFOX     ","011.44.1343.729268 ",2006-01-24,"SA_REP     ", 9600.00 ,0.20 , 148 , 80);
insert into joinsDemo.employees values(171,"William    ","Smith      ","WSMITH   ","011.44.1343.629268 ",2007-02-23,"SA_REP     ", 7400.00 ,0.15 , 148 , 80);
insert into joinsDemo.employees values(172,"Elizabeth  ","Bates      ","EBATES   ","011.44.1343.529268 ",2007-03-24,"SA_REP     ", 7300.00 ,0.15 , 148 , 80);
insert into joinsDemo.employees values(173,"Sundita    ","Kumar      ","SKUMAR   ","011.44.1343.329268 ",2008-04-21,"SA_REP     ", 6100.00 ,0.10 , 148 , 80);
insert into joinsDemo.employees values(174,"Ellen      ","Abel       ","EABEL    ","011.44.1644.429267 ",2004-05-11,"SA_REP     ",11000.00 ,0.30 , 149 , 80);
insert into joinsDemo.employees values(175,"Alyssa     ","Hutton     ","AHUTTON  ","011.44.1644.429266 ",2005-03-19,"SA_REP     ", 8800.00 ,0.25 , 149 , 80);
insert into joinsDemo.employees values(176,"Jonathon   ","Taylor     ","JTAYLOR  ","011.44.1644.429265 ",2006-03-24,"SA_REP     ", 8600.00 ,0.20 , 149 , 80);
insert into joinsDemo.employees values(177,"Jack       ","Livingston ","JLIVINGS ","011.44.1644.429264 ",2006-04-23,"SA_REP     ", 8400.00 ,0.20 , 149 , 80);
insert into joinsDemo.employees values(178,"Kimberely  ","Grant      ","KGRANT   ","011.44.1644.429263 ",2007-05-24,"SA_REP     ", 7000.00 ,0.15 , 149 ,  0);
insert into joinsDemo.employees values(179,"Charles    ","Johnson    ","CJOHNSON ","011.44.1644.429262 ",2008-01-04,"SA_REP     ", 6200.00 ,0.10 , 149 , 80);
insert into joinsDemo.employees values(180,"Winston    ","Taylor     ","WTAYLOR  ","650.507.9876       ",2006-01-24,"SH_CLERK   ", 3200.00 ,0.00 , 120 , 50);
insert into joinsDemo.employees values(181,"Jean       ","Fleaur     ","JFLEAUR  ","650.507.9877       ",2006-02-23,"SH_CLERK   ", 3100.00 ,0.00 , 120 , 50);
insert into joinsDemo.employees values(182,"Martha     ","Sullivan   ","MSULLIVA ","650.507.9878       ",2007-06-21,"SH_CLERK   ", 2500.00 ,0.00 , 120 , 50);
insert into joinsDemo.employees values(183,"Girard     ","Geoni      ","GGEONI   ","650.507.9879       ",2008-02-03,"SH_CLERK   ", 2800.00 ,0.00 , 120 , 50);
insert into joinsDemo.employees values(184,"Nandita    ","Sarchand   ","NSARCHAN ","650.509.1876       ",2004-01-27,"SH_CLERK   ", 4200.00 ,0.00 , 121 , 50);
insert into joinsDemo.employees values(185,"Alexis     ","Bull       ","ABULL    ","650.509.2876       ",2005-02-20,"SH_CLERK   ", 4100.00 ,0.00 , 121 , 50);
insert into joinsDemo.employees values(186,"Julia      ","Dellinger  ","JDELLING ","650.509.3876       ",2006-06-24,"SH_CLERK   ", 3400.00 ,0.00 , 121 , 50);
insert into joinsDemo.employees values(187,"Anthony    ","Cabrio     ","ACABRIO  ","650.509.4876       ",2007-02-07,"SH_CLERK   ", 3000.00 ,0.00 , 121 , 50);
insert into joinsDemo.employees values(188,"Kelly      ","Chung      ","KCHUNG   ","650.505.1876       ",2005-06-14,"SH_CLERK   ", 3800.00 ,0.00 , 122 , 50);
insert into joinsDemo.employees values(189,"Jennifer   ","Dilly      ","JDILLY   ","650.505.2876       ",2005-08-13,"SH_CLERK   ", 3600.00 ,0.00 , 122 , 50);
insert into joinsDemo.employees values(190,"Timothy    ","Gates      ","TGATES   ","650.505.3876       ",2006-07-11,"SH_CLERK   ", 2900.00 ,0.00 , 122 , 50);
insert into joinsDemo.employees values(191,"Randall    ","Perkins    ","RPERKINS ","650.505.4876       ",2007-12-19,"SH_CLERK   ", 2500.00 ,0.00 , 122 , 50);
insert into joinsDemo.employees values(192,"Sarah      ","Bell       ","SBELL    ","650.501.1876       ",2004-02-04,"SH_CLERK   ", 4000.00 ,0.00 , 123 , 50);
insert into joinsDemo.employees values(193,"Britney    ","Everett    ","BEVERETT ","650.501.2876       ",2005-03-03,"SH_CLERK   ", 3900.00 ,0.00 , 123 , 50);
insert into joinsDemo.employees values(194,"Samuel     ","McCain     ","SMCCAIN  ","650.501.3876       ",2006-07-01,"SH_CLERK   ", 3200.00 ,0.00 , 123 , 50);
insert into joinsDemo.employees values(195,"Vance      ","Jones      ","VJONES   ","650.501.4876       ",2007-03-17,"SH_CLERK   ", 2800.00 ,0.00 , 123 , 50);
insert into joinsDemo.employees values(196,"Alana      ","Walsh      ","AWALSH   ","650.507.9811       ",2006-04-24,"SH_CLERK   ", 3100.00 ,0.00 , 124 , 50);
insert into joinsDemo.employees values(197,"Kevin      ","Feeney     ","KFEENEY  ","650.507.9822       ",2006-05-23,"SH_CLERK   ", 3000.00 ,0.00 , 124 , 50);
insert into joinsDemo.employees values(198,"Donald     ","OConnell   ","DOCONNEL ","650.507.9833       ",2007-06-21,"SH_CLERK   ", 2600.00 ,0.00 , 124 , 50);
insert into joinsDemo.employees values(199,"Douglas    ","Grant      ","DGRANT   ","650.507.9844       ",2008-01-13,"SH_CLERK   ", 2600.00 ,0.00 , 124 , 50);
insert into joinsDemo.employees values(200,"Jennifer   ","Whalen     ","JWHALEN  ","515.123.4444       ",2003-09-17,"AD_ASST    ", 4400.00 ,0.00 , 101 , 10);
insert into joinsDemo.employees values(201,"Michael    ","Hartstein  ","MHARTSTE ","515.123.5555       ",2004-02-17,"MK_MAN     ",13000.00 ,0.00 , 100 , 20);
insert into joinsDemo.employees values(202,"Pat        ","Fay        ","PFAY     ","603.123.6666       ",2005-08-17,"MK_REP     ", 6000.00 ,0.00 , 201 , 20);
insert into joinsDemo.employees values(203,"Susan      ","Mavris     ","SMAVRIS  ","515.123.7777       ",2002-06-07,"HR_REP     ", 6500.00 ,0.00 , 101 , 40);
insert into joinsDemo.employees values(204,"Hermann    ","Baer       ","HBAER    ","515.123.8888       ",2002-06-07,"PR_REP     ",10000.00 ,0.00 , 101 , 70);
insert into joinsDemo.employees values(205,"Shelley    ","Higgins    ","SHIGGINS ","515.123.8080       ",2002-06-07,"AC_MGR     ",12008.00 ,0.00 , 101 ,110);
insert into joinsDemo.employees values(206,"William    ","Gietz      ","WGIETZ   ","515.123.8181       ",2002-06-07,"AC_ACCOUNT ", 8300.00 ,0.00 , 205 ,110);

create table joinsDemo.departments (
DEPARTMENT_ID  integer    ,
DEPARTMENT_NAME       varchar(50),
MANAGER_ID  integer  ,
LOCATION_ID  integer) ;


insert into joinsDemo.departments values( 10,"Administration       ",200,1700);
insert into joinsDemo.departments values( 20,"Marketing            ",201,1800);
insert into joinsDemo.departments values( 30,"Purchasing           ",114,1700);
insert into joinsDemo.departments values( 40,"Human Resources      ",203,2400);
insert into joinsDemo.departments values( 50,"Shipping             ",121,1500);
insert into joinsDemo.departments values( 60,"IT                   ",103,1400);
insert into joinsDemo.departments values( 70,"Public Relations     ",204,2700);
insert into joinsDemo.departments values( 80,"Sales                ",145,2500);
insert into joinsDemo.departments values( 90,"Executive            ",100,1700);
insert into joinsDemo.departments values(100,"Finance              ",108,1700);
insert into joinsDemo.departments values(110,"Accounting           ",205,1700);
insert into joinsDemo.departments values(120,"Treasury             ",  0,1700);
insert into joinsDemo.departments values(130,"Corporate Tax        ",  0,1700);
insert into joinsDemo.departments values(140,"Control And Credit   ",  0,1700);
insert into joinsDemo.departments values(150,"Shareholder Services ",  0,1700);
insert into joinsDemo.departments values(160,"Benefits             ",  0,1700);
insert into joinsDemo.departments values(170,"Manufacturing        ",  0,1700);
insert into joinsDemo.departments values(180,"Construction         ",  0,1700);
insert into joinsDemo.departments values(190,"Contracting          ",  0,1700);
insert into joinsDemo.departments values(200,"Operations           ",  0,1700);
insert into joinsDemo.departments values(210,"IT Support           ",  0,1700);
insert into joinsDemo.departments values(220,"NOC                  ",  0,1700);
insert into joinsDemo.departments values(230,"IT Helpdesk          ",  0,1700);
insert into joinsDemo.departments values(270,"Payroll              ",  0,1700);
insert into joinsDemo.departments values(240,"Government Sales     ",  0,1700);
insert into joinsDemo.departments values(250,"Retail Sales         ",  0,1700);
insert into joinsDemo.departments values(260,"Recruiting           ",  0,1700);


create table joinsDemo.locations (
LOCATION_ID   integer    ,
STREET_ADDRESS       varchar(50),
POSTAL_CODE  varchar(50)  ,
CITY        varchar(50),
STATE_PROVINCE       varchar(50),
COUNTRY_ID   varchar(4)
) ;

insert into joinsDemo.locations values(1000,"1297 Via Cola di Rie                     ","989        ","Roma               ","                ","IT");
insert into joinsDemo.locations values(1100,"93091 Calle della Testa                  ","10934      ","Venice             ","                ","IT");
insert into joinsDemo.locations values(1200,"2017 Shinjuku-ku                         ","1689       ","Tokyo              ","Tokyo Prefecture","JP");
insert into joinsDemo.locations values(1300,"9450 Kamiya-cho                          ","6823       ","Hiroshima          ","                ","JP");
insert into joinsDemo.locations values(1400,"2014 Jabberwocky Rd                      ","26192      ","Southlake          ","Texas           ","US");
insert into joinsDemo.locations values(1500,"2011 Interiors Blvd                      ","99236      ","South San Francisco","California      ","US");
insert into joinsDemo.locations values(1600,"2007 Zagora St                           ","50090      ","South Brunswick    ","New Jersey      ","US");
insert into joinsDemo.locations values(1700,"2004 Charade Rd                          ","98199      ","Seattle            ","Washington      ","US");
insert into joinsDemo.locations values(1800,"147 Spadina Ave                          ","M5V 2L7    ","Toronto            ","Ontario         ","CA");
insert into joinsDemo.locations values(1900,"6092 Boxwood St                          ","YSW 9T2    ","Whitehorse         ","Yukon           ","CA");
insert into joinsDemo.locations values(2000,"40-5-12 Laogianggen                      ","190518     ","Beijing            ","                ","CN");
insert into joinsDemo.locations values(2100,"1298 Vileparle (E)                       ","490231     ","Bombay             ","Maharashtra     ","IN");
insert into joinsDemo.locations values(2200,"12-98 Victoria Street                    ","2901       ","Sydney             ","New South Wales ","AU");
insert into joinsDemo.locations values(2300,"198 Clementi North                       ","540198     ","Singapore          ","                ","SG");
insert into joinsDemo.locations values(2400,"8204 Arthur St                           ","           ","London             ","                ","UK");
insert into joinsDemo.locations values(2500,"Magdalen Centre, The Oxford Science Park ","OX9 9ZB    ","Oxford             ","Oxford          ","UK");
insert into joinsDemo.locations values(2600,"9702 Chester Road                        ","9629850293 ","Stretford          ","Manchester      ","UK");
insert into joinsDemo.locations values(2700,"Schwanthalerstr. 7031                    ","80925      ","Munich             ","Bavaria         ","DE");
insert into joinsDemo.locations values(2800,"Rua Frei Caneca 1360                     ","01307-002  ","Sao Paulo          ","Sao Paulo       ","BR");
insert into joinsDemo.locations values(2900,"20 Rue des Corps-Saints                  ","1730       ","Geneva             ","Geneve          ","CH");
insert into joinsDemo.locations values(3000,"Murtenstrasse 921                        ","3095       ","Bern               ","BE              ","CH");
insert into joinsDemo.locations values(3100,"Pieter Breughelstraat 837                ","3029SK     ","Utrecht            ","Utrecht         ","NL");
insert into joinsDemo.locations values(3200,"Mariano Escobedo 9991                    ","11932      ","Mexico City        ","Distrito Federal","MX");
-- drop table joinsDemo.countries;
create table joinsDemo.countries (
COUNTRY_ID    varchar(4)    ,
COUNTRY_NAME       varchar(50),
REGION_ID   integer
) ;
insert into joinsDemo.countries values("AR","Argentina               ",2);
insert into joinsDemo.countries values("AU","Australia               ",3);
insert into joinsDemo.countries values("BE","Belgium                 ",1);
insert into joinsDemo.countries values("BR","Brazil                  ",2);
insert into joinsDemo.countries values("CA","Canada                  ",2);
insert into joinsDemo.countries values("CH","Switzerland             ",1);
insert into joinsDemo.countries values("CN","China                   ",3);
insert into joinsDemo.countries values("DE","Germany                 ",1);
insert into joinsDemo.countries values("DK","Denmark                 ",1);
insert into joinsDemo.countries values("EG","Egypt                   ",4);
insert into joinsDemo.countries values("FR","France                  ",1);
insert into joinsDemo.countries values("IL","Israel                  ",4);
insert into joinsDemo.countries values("IN","India                   ",3);
insert into joinsDemo.countries values("IT","Italy                   ",1);
insert into joinsDemo.countries values("JP","Japan                   ",3);
insert into joinsDemo.countries values("KW","Kuwait                  ",4);
insert into joinsDemo.countries values("ML","Malaysia                ",3);
insert into joinsDemo.countries values("MX","Mexico                  ",2);
insert into joinsDemo.countries values("NG","Nigeria                 ",4);
insert into joinsDemo.countries values("NL","Netherlands             ",1);
insert into joinsDemo.countries values("SG","Singapore               ",3);
insert into joinsDemo.countries values("UK","United Kingdom          ",1);
insert into joinsDemo.countries values("US","United States of America",2);
insert into joinsDemo.countries values("ZM","Zambia                  ",4);
insert into joinsDemo.countries values("ZW","Zimbabwe                ",4);

create table joinsDemo.job_history (
EMPLOYEE_ID    integer    ,
START_DATE        varchar(50),
END_DATE     varchar(50)  ,
JOB_ID             varchar(50),
DEPARTMENT_ID        integer
) ;

insert into joinsDemo.job_history values(102,"2001-01-13","2006-07-24","IT_PROG   ", 60);
insert into joinsDemo.job_history values(101,"1997-09-21","2001-10-27","AC_ACCOUNT",110);
insert into joinsDemo.job_history values(101,"2001-10-28","2005-03-15","AC_MGR    ",110);
insert into joinsDemo.job_history values(201,"2004-02-17","2007-12-19","MK_REP    ", 20);
insert into joinsDemo.job_history values(114,"2006-03-24","2007-12-31","ST_CLERK  ", 50);
insert into joinsDemo.job_history values(122,"2007-01-01","2007-12-31","ST_CLERK  ", 50);
insert into joinsDemo.job_history values(200,"1995-09-17","2001-06-17","AD_ASST   ", 90);
insert into joinsDemo.job_history values(176,"2006-03-24","2006-12-31","SA_REP    ", 80);
insert into joinsDemo.job_history values(176,"2007-01-01","2007-12-31","SA_MAN    ", 80);
insert into joinsDemo.job_history values(200,"2002-07-01","2006-12-31","AC_ACCOUNT", 90);


create table joinsDemo.jobs (
JOB_ID         varchar(50)    ,
JOB_TITLE        varchar(50),
MIN_SALARY     integer  ,
MAX_SALARY              integer
) ;

insert into joinsDemo.jobs values("AD_PRES   ","President                      ",20080,40000);
insert into joinsDemo.jobs values("AD_VP     ","Administration Vice President  ",15000,30000);
insert into joinsDemo.jobs values("AD_ASST   ","Administration Assistant       ", 3000, 6000);
insert into joinsDemo.jobs values("FI_MGR    ","Finance Manager                ", 8200,16000);
insert into joinsDemo.jobs values("FI_ACCOUNT","Accountant                     ", 4200, 9000);
insert into joinsDemo.jobs values("AC_MGR    ","Accounting Manager             ", 8200,16000);
insert into joinsDemo.jobs values("AC_ACCOUNT","Public Accountant              ", 4200, 9000);
insert into joinsDemo.jobs values("SA_MAN    ","Sales Manager                  ",10000,20080);
insert into joinsDemo.jobs values("SA_REP    ","Sales Representative           ", 6000,12008);
insert into joinsDemo.jobs values("PU_MAN    ","Purchasing Manager             ", 8000,15000);
insert into joinsDemo.jobs values("PU_CLERK  ","Purchasing Clerk               ", 2500, 5500);
insert into joinsDemo.jobs values("ST_MAN    ","Stock Manager                  ", 5500, 8500);
insert into joinsDemo.jobs values("ST_CLERK  ","Stock Clerk                    ", 2008, 5000);
insert into joinsDemo.jobs values("SH_CLERK  ","Shipping Clerk                 ", 2500, 5500);
insert into joinsDemo.jobs values("IT_PROG   ","Programmer                     ", 4000,10000);
insert into joinsDemo.jobs values("MK_MAN    ","Marketing Manager              ", 9000,15000);
insert into joinsDemo.jobs values("MK_REP    ","Marketing Representative       ", 4000, 9000);
insert into joinsDemo.jobs values("HR_REP    ","Human Resources Representative ", 4000, 9000);
insert into joinsDemo.jobs values("PR_REP    ","Public Relations Representative", 4500,10500);



create table joinsDemo.job_grade (
GRADE_LEVEL         varchar(50),
LOWEST_SAL     integer  ,
HIGHEST_SAL               integer
) ;

insert into joinsDemo.job_grade values("A", 1000, 2999);
insert into joinsDemo.job_grade values("B", 3000, 5999);
insert into joinsDemo.job_grade values("C", 6000, 9999);
insert into joinsDemo.job_grade values("D",10000,14999);
insert into joinsDemo.job_grade values("E",15000,24999);
insert into joinsDemo.job_grade values("F",25000,40000);




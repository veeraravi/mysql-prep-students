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

-- #1  write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city
SELECT salesman.name AS "Salesman",
customer.cust_name, customer.city 
FROM dbv1.salesman,dbv1.customer 
WHERE salesman.city=customer.city;
-- #2 write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.
SELECT  a.ord_no,a.purch_amt,
b.cust_name,b.city 
FROM dbv1.orders a,dbv1.customer b 
WHERE a.customer_id=b.customer_id 
AND a.purch_amt BETWEEN 500 AND 2000;

/* 1. Write a SQL statement to prepare a list with salesman name, customer name and their cities for the salesmen and customer who belongs to the same city. */

SELECT s.name,
       c.cust_name,
       c.city
  FROM salesman s
  INNER JOIN customer c
    ON s.city = c.city;


/* 2. Write a SQL statement to make a list with order no, purchase amount, customer name and their cities for those orders which order amount between 500 and 2000 */

SELECT o.ord_no,
       o.purch_amt,
       c.cust_name, 
       c.city
  FROM orders o
  INNER JOIN customer c
    ON o.customer_id = c.customer_id
  WHERE o.purch_amt BETWEEN 500 AND 2000;


/* 3. Write a SQL statement to know which salesman are working for which customer. */

SELECT c.cust_name AS "Customer Name",
       s.name AS "Salesman"
  FROM customer c
  INNER JOIN salesman s
    ON c.salesman_id = s.salesman_id;


/* 4. Write a SQL statement to find the list of customers who appointed a salesman for their jobs who gets a commission from the company is more than 12%. */

SELECT c.cust_name AS "Customer Name",
       c.city,
       s.name AS "Salesman",
       s.commission
  FROM customer c
  INNER JOIN salesman s
    ON c.salesman_id = s.salesman_id
  WHERE s.commission > 0.12;


/* 5. Write a SQL statement to find the list of customers who appointed a salesman for their jobs who does not live in the same city where their customer lives, and gets a commission is above 12% . */

SELECT c.cust_name AS "Customer Name",
       c.city AS "Customer City",
       s.name AS "Salesman",
       s.city AS "Salesman City",
       s.commission
  FROM customer c
  INNER JOIN salesman s
    ON c.salesman_id = s.salesman_id
  WHERE s.commission > 0.12
    AND c.city != s.city;


/* 6. Write a SQL statement to find the details of an order i.e. order number, order date, amount of order, which customer gives the order and which salesman works for that customer and how much commission he gets for an order. */

SELECT o.ord_no,
       o.ord_date,
       o.purch_amt,
       c.cust_name AS "Customer Name",
       s.name AS "Salesman",
       s.commission 
  FROM orders o
  INNER JOIN customer c
    ON o.customer_id=c.customer_id 
  INNER JOIN salesman s
    ON o.salesman_id=s.salesman_id;


/* 7. Write a SQL statement to make a join on the tables salesman, customer and orders in such a form that the same column of each table will appear once and only the relational rows will come.

SELECT *
  FROM orders
  NATURAL JOIN customer
  NATURAL JOIN salesman;


/* 8. Write a SQL statement to make a list in ascending order for the customer who works either through a salesman or by own. */

SELECT c.cust_name AS "Customer Name"
  FROM customer c
  LEFT JOIN salesman s
    ON c.salesman_id=s.salesman_id
  ORDER BY c.customer_id ASC;


/* 9. Write a SQL statement to make a list in ascending order for the customer who holds a grade less than 300 and works either through a salesman or by own. */

SELECT c.cust_name AS "Customer Name",
       c.grade
  FROM customer c
  LEFT JOIN salesman s
    ON c.salesman_id=s.salesman_id
  WHERE c.grade < 300
  ORDER BY c.customer_id ASC;


/* 10. Write a SQL statement to make a report with customer name, city, order number, order date, and order amount in ascending order according to the order date to find that either any of the existing customers have placed no order or placed one or more orders. */

SELECT c.cust_name AS "Customer Name",
       c.city,
       o.ord_no,
       o.ord_date,
       o.purch_amt
  FROM customer c
  LEFT OUTER JOIN orders o
    ON c.customer_id=o.customer_id
  ORDER BY o.ord_date;


/* 11. Write a SQL statement to make a report with customer name, city, order number, order date, order amount, salesman name and commission to find that either any of the existing customers have placed no order or placed one or more orders by their salesman or by own. */

SELECT c.cust_name AS "Customer Name",
       c.city,
       o.ord_no,
       o.ord_date,
       o.purch_amt,
       s.name AS "Salesman",
       s.commission
  FROM customer c
  LEFT OUTER JOIN orders o
    ON c.customer_id=o.customer_id
  LEFT OUTER JOIN salesman s
    ON c.salesman_id=s.salesman_id;


/* 12. Write a SQL statement to make a list in ascending order for the salesmen who works either for one or more customer or not yet join under any of the customers. */

SELECT s.name AS "Salesman"
  FROM salesman s
  LEFT OUTER JOIN customer c
    ON s.salesman_id=c.salesman_id
  ORDER BY c.salesman_id ASC;


/* 13. Write a SQL statement to make a list for the salesmen who works either for one or more customer or not yet join under any of the customers who placed either one or more orders or no order to their supplier. */

SELECT s.name AS "Salesman"
  FROM salesman s
  LEFT OUTER JOIN customer c
    ON s.salesman_id=c.salesman_id
  LEFT OUTER JOIN orders o
    ON c.customer_id=o.customer_id;


/* 14. Write a SQL statement to make a list for the salesmen who either work for one or more customers or yet to join any of the customer. The customer may have placed, either one or more orders on or above order amount 2000 and must have a grade, or he may not have placed any order to the associated supplier. /*

SELECT s.name AS "Salesman"
  FROM salesman s
  LEFT OUTER JOIN customer c
    ON s.salesman_id=c.salesman_id
  LEFT OUTER JOIN orders o
    ON c.customer_id=o.customer_id
  WHERE o.purch_amt >= 2000
    AND grade IS NOT NULL;


/* 15. Write a SQL statement to make a report with customer name, city, order no, order date, purchase amount for those customers from the existing list who placed one or more orders or which order(s) have been placed by the customer who is not on the list. */

SELECT c.cust_name AS "Customer Name",
       c.city,
       o.ord_no,
       o.ord_date,
       o.purch_amt
  FROM customer c
  RIGHT JOIN orders o
    ON c.customer_id= o.customer_id;


/* 16. Write a SQL statement to make a report with customer name, city, order no. order date, purchase amount for only those customers on the list who must have a grade and placed one or more orders or which order(s) have been placed by the customer who is neither in the list nor have a grade. */

SELECT c.cust_name AS "Customer Name",
       c.city,
       o.ord_no,
       o.ord_date,
       o.purch_amt
  FROM customer c
  FULL OUTER JOIN orders o
    ON c.customer_id= o.customer_id
      AND c.grade IS NOT NULL;


/* 17. Write a SQL statement to make a cartesian product between salesman and customer i.e. each salesman will appear for all customer and vice versa. */

SELECT s.name AS "Salesman",
       c.cust_name AS "Customer Name"
  FROM salesman s
  CROSS JOIN customer c;


/* 18. Write a SQL statement to make a cartesian product between salesman and customer i.e. each salesman will appear for all customer and vice versa for that customer who belongs to a city. */

SELECT s.name AS "Salesman",
       c.cust_name AS "Customer Name"
  FROM salesman s
  CROSS JOIN customer c
  WHERE s.city IS NOT NULL;


/* 19. Write a SQL statement to make a cartesian product between salesman and customer i.e. each salesman will appear for all customer and vice versa for those salesmen who belongs to a city and the customers who must have a grade. */

SELECT s.name AS "Salesman",
       c.cust_name AS "Customer Name"
  FROM salesman s
  CROSS JOIN customer c
  WHERE s.city IS NOT NULL
    AND c.grade IS NOT NULL;


/* 20. Write a SQL statement to make a cartesian product between salesman and customer i.e. each salesman will appear for all customer and vice versa for those salesmen who must belong a city which is not the same as his customer and the customers should have an own grade. */

SELECT s.name AS "Salesman",
       c.cust_name AS "Customer Name"
  FROM salesman s
  CROSS JOIN customer c
  WHERE s.city IS NOT NULL
    AND s.city != c.city
    AND c.grade IS NOT NULL;


/* 21. Write a SQL query to display all the data from the item_mast, including all the data for each item's producer company. */

SELECT *
  FROM item_mast i
  INNER JOIN company_mast c
    ON i.pro_com=c.com_id;


/* 22. Write a SQL query to display the item name, price, and company name of all the products. */

SELECT i.pro_name,
       i.pro_price,
       c.com_name
  FROM item_mast i
  INNER JOIN company_mast c
    ON i.pro_com=c.com_id;


/* 23. Write a SQL query to display the average price of items of each company, showing the name of the company. */

SELECT c.com_name,
       AVG(i.pro_price)
  FROM item_mast i
  INNER JOIN company_mast c
    ON i.pro_com=c.com_id
  GROUP BY c.com_name;


/* 24. Write a SQL query to display the names of the company whose products have an average price larger than or equal to Rs. 350. */

SELECT c.com_name,
       AVG(i.pro_price)
  FROM item_mast i
  INNER JOIN company_mast c
    ON i.pro_com=c.com_id
  GROUP BY c.com_name
  HAVING AVG(i.pro_price) >= 350;


/* 25. Write a SQL query to display the name of each company along with the ID and price for their most expensive product. */

SELECT c.com_name,
       i.pro_name,
       i.pro_price
  FROM item_mast i
  INNER JOIN company_mast c
    ON i.pro_com=c.com_id
      AND i.pro_price = (SELECT MAX(i.pro_price)
                           FROM item_mast i
                           WHERE i.pro_com = c.com_id);


/* 26. Write a query in SQL to display all the data of employees including their department. */

SELECT *
  FROM emp_details edet
  INNER JOIN emp_department edep
    ON edet.emp_dept = edep.dpt_code;


/* 27. Write a query in SQL to display the first name and last name of each employee, along with the name and sanction amount for their department. */

SELECT edet.emp_fname AS "First Name",
       edet.emp_lname AS "Last Name",
       edep.dpt_name AS "Department Name",
       edep.dpt_allotment AS "Amount Allotted"
  FROM emp_details edet
  INNER JOIN emp_department edep
    ON edet.emp_dept = edep.dpt_code;


/* 28. Write a query in SQL to find the first name and last name of employees working for departments with a budget more than Rs. 50000. */

SELECT edet.emp_fname AS "First Name",
       edet.emp_lname AS "Last Name"
  FROM emp_details edet
  INNER JOIN emp_department edep
    ON edet.emp_dept = edep.dpt_code
      AND edep.dpt_allotment > 50000;


/* 29. Write a query in SQL to find the names of departments where more than two employees are working. */

SELECT edep.dpt_name,
       COUNT(edet.emp_idno)
  FROM emp_details edet
  INNER JOIN emp_department edep
    ON edet.emp_dept = edep.dpt_code
  GROUP BY edep.dpt_name
  HAVING COUNT(edet.emp_idno) > 2;

-- ----------------------------------------------------

/* 1. Write a query to display all the orders from the orders table issued by the salesman 'Paul Adam'. */

SELECT *
  FROM orders
  WHERE salesman_id = (SELECT salesman_id
                         FROM salesman
                         WHERE name = 'Paul Adam');


/* 2. Write a query to display all the orders for the salesman who belongs to the city London. *.'
SELECT *
  FROM orders
  WHERE salesman_id = (SELECT salesman_id
                         FROM salesman
                         WHERE city = 'London');
/* 3. Write a query to find all the orders issued against the salesman who may works for customer whose id is 3007. *.
SELECT *
  FROM orders
  WHERE salesman_id = (SELECT salesman_id
                         FROM orders
                         WHERE customer_id = 3007);
/* 4. Write a query to display all the orders which values are greater than the average order value for 10th October 2012. /*
SELECT *
  FROM orders
  WHERE purch_amt > (SELECT AVG(purch_amt)
                       FROM orders
                       WHERE ord_date = '2012-10-10');
/* 5. Write a query to find all orders attributed to a salesman in New York. */

SELECT *
  FROM orders
  WHERE salesman_id IN (SELECT salesman_id
                          FROM salesman
                          WHERE city = 'New York');


/* 6. Write a query to display the commission of all the salesmen servicing customers in Paris. */

SELECT commission
  FROM salesman
  WHERE salesman_id IN (SELECT salesman_id
                          FROM customer
                          WHERE city = 'Paris');


/* 7. Write a query to display all the customers whose id is 2001 bellow the salesman ID of Mc Lyon. */

SELECT *
  FROM customer
  WHERE customer_id = (SELECT salesman_id - 2001
                         FROM salesman
                         WHERE name = 'Mc Lyon');


/* 8. Write a query to count the customers with grades above New York's average. */

SELECT COUNT(*)
  FROM customer
  WHERE grade > (SELECT AVG(grade)
                   FROM customer
                   WHERE city = 'New York');


/* 9. Write a query to display all customers with orders on October 5, 2012. */
/* Note: These set of exercises focus on subqueries, so I wrote the query below.  The 2nd query also works and displays order information as well. */

SELECT *
  FROM customer
  WHERE customer_id IN (SELECT customer_id
                          FROM orders
                          WHERE ord_date = '2012-10-05');

SELECT *
  FROM customer a, orders b 
  WHERE a.customer_id = b.customer_id 
    AND b.ord_date = '2012-10-05';


/* 10. Write a query to display all the customers with orders issued on date 17th August, 2012. */
/* Note: These set of exercises focus on subqueries, so I wrote the query below.  The 2nd query also works and displays order information as well. */

SELECT *
  FROM customer
  WHERE customer_id IN (SELECT customer_id
                          FROM orders
                          WHERE ord_date = '2012-08-17');

SELECT b.*,
       a.cust_name
  FROM customer a, orders b 
  WHERE a.customer_id = b.customer_id 
    AND b.ord_date = '2012-08-17';


/* 11. Write a query to find the name and numbers of all salesmen who had more than one customer. */

SELECT salesman_id,
       name
  FROM salesman
  WHERE salesman_id IN (SELECT salesman_id
                          FROM customer
                          GROUP BY salesman_id
                          HAVING COUNT(*) > 1);

SELECT salesman_id,
        name 
  FROM salesman a 
  WHERE 1 < (SELECT COUNT(*)
               FROM customer 
               WHERE salesman_id = a.salesman_id);


/* 12. Write a query to find all orders with order amounts which are above-average amounts for their customers. */

SELECT *
  FROM orders a
  WHERE purch_amt > (SELECT AVG(purch_amt)
                       FROM orders b
                       WHERE b.customer_id = a.customer_id);


/* 13. Write a queries to find all orders with order amounts which are on or above-average amounts for their customers. */

SELECT *
  FROM orders a
  WHERE purch_amt >= (SELECT AVG(purch_amt)
                        FROM orders b
                        WHERE b.customer_id = a.customer_id);


/* 14. Write a query to find the sums of the amounts from the orders table, grouped by date, eliminating all those dates where the sum was not at least 1000.00 above the maximum order amount for that date. */

SELECT ord_date,
       SUM(purch_amt)
  FROM orders a
  GROUP BY ord_date
  HAVING SUM(purch_amt) > (SELECT MAX(purch_amt) + 1000
                             FROM orders b
                             WHERE a.ord_date = b.ord_date);


/* 15. Write a query to extract the data from the customer table if and only if one or more of the customers in the customer table are located in London. */

SELECT *
  FROM customer
  WHERE EXISTS (SELECT *
                  FROM customer
                  WHERE city = 'London');


/* 16. Write a query to find the salesmen who have multiple customers. */

SELECT *
  FROM salesman
  WHERE salesman_id IN (SELECT salesman_id
                          FROM customer
                          GROUP BY salesman_id
                          HAVING COUNT(*) > 1);

SELECT *
  FROM salesman 
  WHERE salesman_id IN (SELECT DISTINCT salesman_id 
                          FROM customer a 
                          WHERE EXISTS (SELECT *
                                          FROM customer b 
                                          WHERE b.salesman_id=a.salesman_id 
                                            AND b.cust_name <> a.cust_name));


/* 17. Write a query to find all the salesmen who worked for only one customer. */

SELECT *
  FROM salesman
  WHERE salesman_id IN (SELECT salesman_id
                          FROM customer
                          GROUP BY salesman_id
                          HAVING COUNT(customer_id) = 1);


/* 18. Write a query that extract the rows of all salesmen who have customers with more than one orders. */

SELECT *
  FROM salesman
  WHERE salesman_id IN (SELECT salesman_id
                          FROM customer
                          WHERE customer_id IN (SELECT customer_id
                                                  FROM orders
                                                  GROUP BY customer_id
                                                  HAVING COUNT(*) > 1));

SELECT *
  FROM salesman a 
  WHERE EXISTS (SELECT *
                  FROM customer b     
                  WHERE a.salesman_id=b.salesman_id     
	            AND 1 < (SELECT COUNT(*)              
		               FROM orders             
		               WHERE orders.customer_id=b.customer_id));


/* 19. Write a query to find salesmen with all information who lives in the city where any of the customers lives. */

SELECT *
  FROM salesman
  WHERE city IN (SELECT city
                   FROM customer);

SELECT *
  FROM salesman 
  WHERE city = ANY (SELECT city
                      FROM customer);


/* 20. Write a query to find all the salesmen for whom there are customers that follow them. */

SELECT *
  FROM salesman 
  WHERE city IN (SELECT city
                   FROM customer);


/* 21. Write a query to display the salesmen which name are alphabetically lower than the name of the customers. */

SELECT *
  FROM salesman a
  WHERE EXISTS (SELECT *
                  FROM customer b
                  WHERE a.name < b.cust_name);


/* 22. Write a query to display the customers who have a greater gradation than any customer who belongs to the alphabetically lower than the city New York. */

SELECT *
  FROM customer
  WHERE grade > ANY (SELECT grade
                       FROM customer
                       WHERE city < 'New York');


/* 23. Write a query to display all the orders that had amounts that were greater than at least one of the orders on September 10th 2012. */

SELECT *
  FROM orders
  WHERE purch_amt > ANY (SELECT purch_amt
                           FROM orders
                           WHERE ord_date = '2012-09-10');


/* 24. Write a query to find all orders with an amount smaller than any amount for a customer in London. */

SELECT *
  FROM orders
  WHERE purch_amt < ANY (SELECT purch_amt
                           FROM orders
                           WHERE customer_id IN (SELECT customer_id
                                                   FROM customer
                                                   WHERE city = 'London'));

SELECT *
  FROM orders
  WHERE purch_amt < ANY (SELECT purch_amt
	                   FROM orders a, customer b
	                   WHERE a.customer_id = b.customer_id
	                     AND b.city = 'London');


/* 25. Write a query to display all orders with an amount smaller than the maximum amount for a customers in London. */

SELECT *
  FROM orders
  WHERE purch_amt < (SELECT MAX(purch_amt)
                       FROM orders
                       WHERE customer_id IN (SELECT customer_id
					       FROM customer
					       WHERE city = 'London'));

SELECT *
  FROM orders
  WHERE purch_amt < (SELECT MAX(purch_amt)
	               FROM orders a, customer b
	               WHERE a.customer_id = b.customer_id
	                 AND b.city = 'London');


/* 26. Write a query to display only those customers whose grade are, in fact, higher than every customer in New York. */

SELECT *
  FROM customer
  WHERE grade > ALL (SELECT grade
                       FROM customer 
                       WHERE city = 'New York');


/* 27. Write a query to find only those customers whose grade are, higher than every customer to the city New York. */

SELECT *
  FROM customer
  WHERE grade > ALL (SELECT grade
                       FROM customer 
                       WHERE city = 'New York');


/* 28. Write a query to get all the information for those customers whose grade is not as the grade of customer who belongs to the city London */

SELECT *
  FROM customer
  WHERE grade != ANY (SELECT grade
                        FROM customer 
                        WHERE city = 'London');


/* 29. Write a query to find all those customers whose grade are not as the grade, belongs to the city Paris. */

SELECT *
  FROM customer
  WHERE grade != ANY (SELECT grade
                        FROM customer 
                        WHERE city = 'Paris');

SELECT *
  FROM customer
  WHERE grade NOT IN (SELECT grade
                        FROM customer 
                        WHERE city = 'Paris');


/* 30. Write a query to find all those customers who hold a different grade than any customer of the city Dallas. */

SELECT *
  FROM customer
  WHERE grade NOT IN (SELECT grade
                        FROM customer 
                        WHERE city = 'Dallas');

SELECT *
FROM customer 
WHERE NOT grade = ANY (SELECT grade
	                 FROM customer
	                 WHERE city = 'Dallas');


/* 31. Write a SQL query to find the average price of each manufacturer's products along with their name. */

SELECT AVG(pro_price),
       com_name
  FROM item_mast, company_mast
  WHERE item_mast.pro_com = company_mast.com_id
  GROUP BY com_name;


/* 32. Write a SQL query to display the average price of the products which is more than or equal to 350 along with their names. */

SELECT c.com_name,
       AVG(i.pro_price)
  FROM item_mast i
  INNER JOIN company_mast c
    ON i.pro_com=c.com_id
  GROUP BY c.com_name
  HAVING AVG(i.pro_price) >= 350;

SELECT AVG(pro_price) AS "Average Price",
       company_mast.com_name AS "Company"
  FROM item_mast, company_mast
  WHERE item_mast.pro_com = company_mast.com_id
  GROUP BY company_mast.com_name
  HAVING AVG(pro_price) >= 350;


/* 33. Write a SQL query to display the name of each company, price for their most expensive product along with their Name. */

SELECT c.com_name,
       i.pro_name,
       i.pro_price
  FROM item_mast i
  INNER JOIN company_mast c
    ON i.pro_com = c.com_id
      AND i.pro_price = (SELECT MAX(i.pro_price)
                           FROM item_mast i
                           WHERE i.pro_com = c.com_id);

SELECT c.com_name,
       i.pro_name,
       i.pro_price
   FROM item_mast i, company_mast c
   WHERE i.pro_com = c.com_id
     AND i.pro_price = (SELECT MAX(i.pro_price)
                          FROM item_mast i
                          WHERE i.pro_com = c.com_id);


/* 34. Write a query in SQL to find all the details of employees whose last name is Gabriel or Dosio. */

SELECT *
  FROM emp_details
  WHERE emp_lname IN ('Gabriel', 'Dosio');


/* 35. Write a query in SQL to display all the details of employees who works in department 89 or 63. */

SELECT *
  FROM emp_details
  WHERE emp_dept IN (89, 63);


/* 36. Write a query in SQL to display the first name and last name of employees working for the department which allotment amount is more than Rs.50000. */

SELECT emp_fname,
       emp_lname
  FROM emp_details
  WHERE emp_dept IN (SELECT dpt_code
                       FROM emp_department
                       WHERE dpt_allotment > 50000);


/* 37. Write a query in SQL to find the departments which sanction amount is larger than the average sanction amount of all the departments. */

SELECT *
  FROM emp_department
  WHERE dpt_allotment > (SELECT AVG(dpt_allotment)
                           FROM emp_department);


/* 38. Write a query in SQL to find the names of departments with more than two employees are working. */

SELECT dpt_name
  FROM emp_department
  WHERE dpt_code IN (SELECT emp_dept
                       FROM emp_details
                       GROUP BY emp_dept
                       HAVING COUNT(*) > 2);


/* 39. Write a query in SQL to find the first name and last name of employees working for departments which sanction amount is second lowest. */

SELECT emp_fname,
       emp_lname
  FROM emp_details
  WHERE emp_dept IN (SELECT dpt_code
                       FROM emp_department
                       WHERE dpt_allotment = (SELECT MIN(dpt_allotment)
                                                FROM emp_department
                                                WHERE dpt_allotment > (SELECT MIN(dpt_allotment) 
                                                                         FROM emp_department)));
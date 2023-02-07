create table dbv1.customer_orders (
order_id integer,
customer_id integer,
order_date date,
order_amount integer
);

insert into dbv1.customer_orders values(1,100,cast('2022-01-01' as date),2000),(2,200,cast('2022-01-01' as date),2500),(3,300,cast('2022-01-01' as date),2100)
,(4,100,cast('2022-01-02' as date),2000),(5,400,cast('2022-01-02' as date),2200),(6,500,cast('2022-01-02' as date),2700)
,(7,100,cast('2022-01-03' as date),3000),(8,400,cast('2022-01-03' as date),1000),(9,600,cast('2022-01-03' as date),3000)
;

select * from dbv1.customer_orders;
-- get the new customer and repeated customer
Select a.order_date,
Sum(Case when a.order_date = a.first_order_date then 1 else 0 end) as new_customer,
Sum(Case when a.order_date != a.first_order_date then 1 else 0 end) as repeat_customer
from(
Select customer_id, order_date, min(order_date) over(partition by customer_id) as first_order_date from dbv1.customer_orders) a 
group by a.order_date;

with first_visit as
(select customer_id, min(order_date) as first_visit from dbv1.customer_orders group by customer_id)
select co.order_date, 
sum(case when co.order_date = fv.first_visit then order_amount end) as new_customer_amount,
sum(case when co.order_date != fv.first_visit then order_amount end) as repeated_customer_amount,
sum(case when co.order_date = fv.first_visit then 1 else 0 end) as new_customer_count,
sum(case when co.order_date != fv.first_visit then 1 else 0 end) as repeated_customer_count
from dbv1.customer_orders co inner join first_visit fv on co.customer_id = fv.customer_id 
group by co.order_date order by co.order_date;

with cte as(
select  order_date, row_number() over(partition by customer_id order by 
order_date asc) as rn from dbv1.customer_orders)
select order_date, sum(case when rn=1 then 1 else 0 end) as new_customers,
sum(case when rn>1 then 1 else 0 end) as repeat_customers from cte
group by order_date;


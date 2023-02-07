/*
  id | passengers_on_board
  ----+---------------------
   10 | 0
   20 | 1
   21 | 3
   22 | 1
   30 | 1
*/

SELECT  b.id, count(p.id)  FROM world.buses b 
left JOIN world.passengers p 
on (b.origin = p.origin AND b.destination = p.destination and b.time >= p.time) 
group by b.id
order by b.id;	


select b.id as id, case when tmp.no_pass is null then 0 else tmp.no_pass end as passengers_on_board from world.buses b
left join 
(select t.id, count(p.id) as no_pass 
from  world.passengers p 
inner join 
(select b.*, case when (lag(b.time) over(partition by b.origin,b.destination order by b.time)) is null then '0'
				else (lag(b.time) over(partition by b.origin,b.destination order by b.time)) end  as time_gap from world.buses b)t
 on (t.origin = p.origin AND t.destination = p.destination) 
 where  p.time <= t.time and p.time > t.time_gap 
group by t.id) tmp
 ON (b.id = tmp.id)
ORDER BY b.id 





SELECT  b.*,p.* FROM world.buses b 
JOIN world.passengers p where (p.origin = b.origin AND p.destination = b.destination) 
-- group by b.id 
order by b.id;

SELECT *,LAG(time) OVER (PARTITION BY origin,destination ORDER BY time) AS time_lag FROM world.buses









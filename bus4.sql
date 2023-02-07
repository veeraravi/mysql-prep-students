(select t.id, count(case when t.id is null then 0 else t.id end) as no_pass 
from  world.passengers p 
right join 
(select b.*, case when (lag(b.time) over(partition by b.origin,b.destination order by b.time)) is null then '0'
				else (lag(b.time) over(partition by b.origin,b.destination order by b.time)) end  as time_gap from world.buses b)t
 on (t.origin = p.origin AND t.destination = p.destination) 
 where  p.time <= t.time and p.time > t.time_gap 
group by t.id)
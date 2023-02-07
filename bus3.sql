SELECT 
buses.id,
CASE 
    WHEN P1.passengers_on_board IS NULL THEN 0
    ELSE P1.passengers_on_board
END AS passengers_on_board
FROM world.buses
LEFT JOIN 
(SELECT 
    B.id AS bus_id,
    COUNT(P.id) AS passengers_on_board
    FROM world.passengers P
    INNER JOIN 
         (SELECT 
          id,
          origin,
          destination,
          time,
          CASE 
              WHEN time_lag IS NULL THEN '00:00'
              ELSE time_lag
          END AS time_lag
          FROM ( 
                SELECT *,
                LAG(time) OVER (PARTITION BY origin,destination ORDER BY time) AS time_lag 
                FROM world.buses
                ) buses_time_lag
        ) B
        ON (P.origin = B.origin AND P.destination = B.destination) 
        WHERE P.time <= B.time AND P.time > B.time_lag
        GROUP BY B.id

) P1
ON (buses.id = P1.bus_id)
ORDER BY buses.id

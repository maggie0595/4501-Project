WITH all_hired_trips AS (
SELECT PU_datetime, distance FROM taxi_trips WHERE PU_datetime BETWEEN '2009-01-01' AND '2009-12-31'
UNION ALL
SELECT PU_datetime,distance FROM uber_trips WHERE PU_datetime BETWEEN '2009-01-01' AND '2009-12-31')

SELECT PU_datetime AS date, AVG(distance) AS avg_dist, COUNT(*) AS num
FROM all_hired_trips

GROUP BY date
ORDER BY num DESC

LIMIT 10;

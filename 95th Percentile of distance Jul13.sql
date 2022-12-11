
WITH all_hired_trips AS(
SELECT PU_datetime, distance FROM taxi_trips WHERE PU_datetime BETWEEN "2013-07-01" AND "2013-07-31"
UNION ALL
SELECT PU_datetime, distance FROM uber_trips WHERE PU_datetime BETWEEN "2013-07-01" AND "2013-07-31")

SELECT distance FROM all_hired_trips
ORDER BY distance ASC

LIMIT 1
OFFSET (SELECT COUNT(*) FROM all_hired_trips) * 95 / 100;

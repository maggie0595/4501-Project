
SELECT date(PU_datetime) AS date, COUNT(*) AS num

FROM(SELECT PU_datetime FROM taxi_trips
UNION ALL
SELECT PU_datetime FROM uber_trips)

GROUP BY date
HAVING date IN (SELECT DATE FROM daily_weather WHERE DATE BETWEEN '2014-01-01' AND '2014-12-31'
ORDER BY DailyWindSpeed DESC)

LIMIT 10

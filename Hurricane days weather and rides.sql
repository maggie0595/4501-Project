
WITH all_hired_trips AS (
SELECT strftime('%H',PU_datetime) AS date FROM taxi_trips WHERE PU_datetime BETWEEN '2012-10-22' AND '2012-11-06'
UNION ALL
SELECT strftime('%H',PU_datetime) FROM uber_trips WHERE PU_datetime BETWEEN '2012-10-22' AND '2012-11-07')

SELECT strftime('%H', hourly_weather.DATE) AS weekday, COALESCE(COUNT(all_hired_trips.date),0) AS num, HourlyPrecipitation, HourlyWindSpeed FROM hourly_weather

LEFT JOIN all_hired_trips ON weekday WHERE weekday BETWEEN '2012-10-22' AND '2012-11-06'

GROUP BY weekday

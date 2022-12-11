
SELECT strftime('%H', PU_datetime) AS hour, COUNT(*) AS num
FROM taxi_trips
GROUP BY hour

ORDER BY num DESC

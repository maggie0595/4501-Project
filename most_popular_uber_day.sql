
SELECT strftime('%w', PU_datetime) As weekday, COUNT(*) AS num
FROM uber_trips
GROUP BY weekday

ORDER BY num DESC;

SELECT
status.station_id,
stations.name,
COUNT(CASE WHEN docks_available=0 then 1 END) empty
FROM status
JOIN stations
on stations.station_id = status.station_id
GROUP BY 1
ORDER BY empty DESC
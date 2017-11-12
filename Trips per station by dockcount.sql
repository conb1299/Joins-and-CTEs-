SELECT
	dockcount,
	start_station,
	COUNT(*)
FROM
	stations
JOIN
	trips
ON trips.start_station = stations.name
GROUP BY 2
ORDER BY 1 desc
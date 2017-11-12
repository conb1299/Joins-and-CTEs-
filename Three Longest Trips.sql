WITH
	rains
AS(
	SELECT 
		date
	FROM 
		weather 
	WHERE
		events like 'Rain'
)
SELECT
	trip_id,
	duration,
	DATE(start_date) trip_date
FROM 
	trips
JOIN
	rains
ON
rains.date = trip_date
ORDER BY duration desc
limit 3
	
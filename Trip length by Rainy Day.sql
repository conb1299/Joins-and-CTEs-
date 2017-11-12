WITH 
	rainy
AS (
	SELECT
		date
	FROM
		weather
	WHERE
		events like 'Rain'
	GROUP BY 1)
SELECT
	trip_id,
	duration,
	DATE(start_date) trip_date
FROM
	trips
JOIN 
	rainy
ON
	rainy.date = trip_date
ORDER BY 2 DESC


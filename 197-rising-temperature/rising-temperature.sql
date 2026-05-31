-- Write your PostgreSQL query statement below
WITH Formatted_Weather AS(
    SELECT id, temperature,
    recordDate + INTERVAL '1 day' AS extra_date
    FROM Weather
)

SELECT w.id FROM 
Weather w LEFT JOIN Formatted_Weather fw ON w.recordDate=fw.extra_date
WHERE  w.temperature>fw.temperature;
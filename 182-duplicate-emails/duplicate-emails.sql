-- Write your PostgreSQL query statement below
WITH ranked_number AS (
    SELECT *, ROW_NUMBER() OVER(
        PARTITION BY email ORDER BY id 
    ) AS row_number
    FROM Person
)

SELECT DISTINCT email FROM ranked_number WHERE row_number>1;
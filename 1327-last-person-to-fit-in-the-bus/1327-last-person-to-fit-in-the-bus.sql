SELECT person_name
FROM (
    SELECT 
        person_name,
        SUM(weight) OVER (ORDER BY turn ASC) AS total_weight
    FROM Queue
) AS a
WHERE total_weight <= 1000
ORDER BY total_weight DESC
LIMIT 1;

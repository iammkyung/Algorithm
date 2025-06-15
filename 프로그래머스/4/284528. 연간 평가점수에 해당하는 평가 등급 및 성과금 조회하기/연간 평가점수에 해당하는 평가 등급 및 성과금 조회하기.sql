SELECT 
    grd.emp_no, 
    emp.emp_name, 
    grd.grade,
    CASE 
        WHEN grd.grade = 'S' THEN emp.sal * 0.2
        WHEN grd.grade = 'A' THEN emp.sal * 0.15
        WHEN grd.grade = 'B' THEN emp.sal * 0.1
        ELSE emp.sal * 0
    END AS bonus
FROM (
    SELECT 
        emp_no, 
        CASE 
            WHEN AVG(score) >= 96 THEN 'S'
            WHEN AVG(score) >= 90 THEN 'A'
            WHEN AVG(score) >= 80 THEN 'B'
            ELSE 'C'
        END AS grade
    FROM HR_GRADE
    GROUP BY emp_no
) grd
JOIN HR_EMPLOYEES emp ON emp.emp_no = grd.emp_no
ORDER BY grd.emp_no ASC;
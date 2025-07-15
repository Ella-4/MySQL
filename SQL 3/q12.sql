SELECT employee_id, salary
FROM EMPLOYEE
WHERE employee_id IN (
    SELECT manager_id
    FROM EMPLOYEE
    WHERE salary < 8000
    AND manager_id IS NOT NULL
)
ORDER BY employee_id ASC;
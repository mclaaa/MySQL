#AND要求并的关系为真
SELECT employee_id,last_name,job_id,salary
FROM employees
WHERE salary>=10000
AND job_id LIKE '%MAN%';
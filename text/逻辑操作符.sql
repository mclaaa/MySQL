#AND要求并的关系为真
SELECT employee_id,last_name,job_id,salary
FROM employees
WHERE salary>=10000
AND job_id LIKE '%MAN%';
#OR要求或的关系为真
SELECT employee_id,last_name,job_id,salary
FROM employees
WHERE salary>=10000
OR job_id LIKE '%MAN%';
#NOT
SELECT last_name,job_id
FROM employees
WHERE job_id
NOT IN ('IT_PROG','ST_CLERK','SA_REP');
#avg和sum函数  min(),max();
SELECT AVG(salary),MAX(salary),
	MIN(salary),SUM(salary)
	FROM employees
	WHERE job_id LIKE '%REP%';

#count()
SELECT COUNT(*)
FROM employees
WHERE department_id=50;
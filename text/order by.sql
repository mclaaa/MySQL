#order by语句（在select语句的结尾）
#-asc升序—；desc降序；默认值为升序；
SELECT last_name,job_id,department_id,hiredate
FROM employees
ORDER BY hiredate;
#降序排序
SELECT last_name,job_id,department_id,hiredate
FROM employees
ORDER BY hiredate DESC;
#按别名来排序
SELECT employee_id,last_name,salary*12 annsal
FROM employees
ORDER BY annsal;
#多个列排序
SELECT last_name,department_id,salary
FROM employees
ORDER BY department_id,salary DESC;
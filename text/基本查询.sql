SELECT*
FROM departments;
#-----------------
SELECT department_id,location_id
FROM departments;
#-----------------------
SELECT last_name AS NAME,commission_pct
FROM employees;
#---------
SELECT last_name "name",salary*12 "Annual Salary"
FROM employees;
#-----------------------
DESCRIBE employees;#查表结构
#---------------------
SELECT employee_id,last_name,job_id,department_id
FROM employees
WHERE department_id=90;
#---------------------
SELECT last_name,salary
FROM employees
WHERE salary<=3000;
#---------------------
SELECT last_name,manager_id
FROM employees
WHERE manager_id IS NULL;
#---------------------
SELECT employee_id,last_name,job_id,salary
FROM employees
WHERE salary>=10000
AND job_id LIKE'%man%';
#---------------------
SELECT employee_id,last_name,job_id,salary
FROM employees
WHERE salary>10000
OR job_id LIKE '%man%';
#---------------
SELECT employee_id,last_name,job_id,hiredate a
FROM employees
ORDER BY a ,last_name ASC;
#-----------分组函数
SELECT AVG(salary),MAX(salary),MIN(salary),MAX(salary)
FROM employees
WHERE job_id LIKE '%rep%';
#不能在where子句中用组函数   having可以
#----------------------------
SELECT COUNT(*)
FROM employees 
WHERE department_id=50;
#---------------

SELECT department_id,MAX(salary)
FROM employees
GROUP BY department_id
HAVING MAX(salary)>10000;
#---------------------------------
INSERT INTO departments(department_id,department_name,
			manager_id,location_id)
VALUES  		(70,'Public Relations',100,1700);
#-----------------------------------------------
INSERT INTO departments(employee_id,last_name,email,hire_date,jod_id)
VALUES (300,'Tom','tom@126.com',to_date('2012_3_21','yyyy-mm-dd'),'Sa-rap');

#error
# --------------------------------------------------


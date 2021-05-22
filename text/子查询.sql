#子查询（出现在其他语句的select也称子查询或内查询）
#谁的工资比abel高
SELECT * 
FROM employees
WHERE salary>(
	SELECT salary
	FROM employees	
	WHERE last_name='Abel'
);
#返回job_id与141号员工相同，salary 比143号员工多的员工姓名，job_id和工作
#分步：
#
SELECT job_id
FROM employees
WHERE employee_id=141;
##
SELECT salary
FROM employees
WHERE employee_id=143;
##
SELECT last_name,job_id,salary
FROM employees
WHERE job_id= (
	SELECT job_id
	FROM employees
	WHERE employee_id=141)
		AND salary>
	(
	SELECT salary
	FROM employees
	WHERE employee_id=143
	);

#返回公司的工资最少员工的last_name,job_id和salary
SELECT last_name,job_id,salary
FROM employees
WHERE salary=(
	SELECT MIN(salary)
	FROM employees
);
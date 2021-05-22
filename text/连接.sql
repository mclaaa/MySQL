SELECT last_name,department_name,job_title
FROM employees e
INNER JOIN departments d ON e.department_id=d.`department_id`
INNER JOIN jobs j ON e.`job_id`=j.`job_id`
ORDER BY department_name DESC;
##inner可以省略；


#------------------------------------
#查询员工名，上司的名字
SELECT e.last_name,m.last_name
FROM employees e
JOIN employees m
ON e.`manager_id`=m.`employee_id`;
#------------------------------
#查询姓名包含k的员工名，上司的名字(自连接)
SELECT e.last_name,m.last_name
FROM employees e
JOIN employees m
ON e.`manager_id`=m.`employee_id`
WHERE e.last_name LIKE '%k%';
#-------------------------------

#案例 查询哪个部门没有员工
#左外  部门  员工 正序
SELECT d.*,e.employee_id
FROM departments d
LEFT OUTER JOIN employees e
ON d.`department_id`=e.`department_id`
WHERE e.`employee_id` IS NULL;
#右外   员工  部门  换一下
SELECT d.*,e.employee_id
FROM employees e
RIGHT OUTER JOIN departments d
ON d.`department_id`=e.`department_id`
WHERE e.`employee_id` IS NULL;
#全外连接  结果等于 内表不支持
#查询出交集部分     
#----------------------



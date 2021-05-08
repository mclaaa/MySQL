#使用is（Not）NULL判断空值；
SELECT last_name,manager_id
FROM employees
WHERE manager_id IS NULL;
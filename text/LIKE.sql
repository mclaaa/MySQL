SELECT first_name
FROM employees
WHERE first_name LIKE 's%';
#查找带S开头的名；
#-%代表零个或者多个任意字符；
#-_代表一个字符
#两者可以同时使用；
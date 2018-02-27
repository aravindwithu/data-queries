SELECT 
 dept_code, 
 course# 
FROM 
 courses 
WHERE 
(dept_code, course#) NOT IN (SELECT dept_code, course# FROM classes WHERE year = 2015);
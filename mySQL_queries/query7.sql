SELECT 
 dept_code, 
 course# 
FROM 
 courses 
WHERE 
(dept_code, course#) 
  IN (SELECT 
       dept_code, 
       course# 
      FROM 
       classes 
      GROUP BY dept_code, course#
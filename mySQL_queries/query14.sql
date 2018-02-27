SELECT 
 cr.dept_code, 
 cr.course#, 
 cl.year, 
 cl.semester 
FROM 
 courses cr 
 JOIN classes cl 
 ON cr.dept_code = cl.dept_code and cr.course# = cl.course# 
WHERE 
 sect#>1;
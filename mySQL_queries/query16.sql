SELECT 
 distinct cr.dept_code, 
 cr.course#, 
 cr.title, 
 nvl(en.lgrade, 'to be assigned') as GRADE 
FROM 
 courses cr 
 JOIN classes cl 
 ON cr.dept_code = cl.dept_code and cr.course# = cl.course# 
 JOIN enrollments en 
 ON cl.classid = en.classid 
WHERE 
 en.sid = 'B003';
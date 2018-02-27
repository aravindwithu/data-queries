SELECT 
 (dept_code || cast(course# as varchar2(10))) as course_id , 
 title 
FROM 
 courses 
WHERE
(dept_code, course#) IN
 (SELECT dept_code, course# 
 FROM classes 
 WHERE 
 year = 2016 
 AND semester = 'Spring');
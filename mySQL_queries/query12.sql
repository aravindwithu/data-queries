SELECT 
 distinct title 
FROM 
 courses 
WHERE 
 (dept_code, course#) IN ((SELECT dept_code, course# FROM classes WHERE classid in (SELECT classid FROM enrollments WHERE sid = 'B001')) 
                           MINUS 
                          (SELECT dept_code, course# FROM classes WHERE classid in (SELECT classid FROM enrollments WHERE sid = 'B002')));
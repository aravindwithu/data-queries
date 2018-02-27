SELECT 
 * 
FROM 
 classes 
WHERE 
 dept_code = 'CS' 
 and year = 2016 
 and semester = 'Spring' 
 and classid IN ( SELECT classid FROM enrollments group by classid having count(classid)<3);
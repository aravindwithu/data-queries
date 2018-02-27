SELECT 
 distinct firstname 
FROM 
 students 
WHERE
 sid IN 
 (SELECT sid FROM Enrollments WHERE classid IN (SELECT classid FROM classes WHERE dept_code = 'CS') 
  INTERSECT
 SELECT sid FROM Enrollments WHERE classid IN (SELECT classid FROM classes WHERE dept_code = 'Math'));
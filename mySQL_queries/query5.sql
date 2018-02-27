SELECT 
 distinct firstname 
FROM 
 students 
WHERE 
 sid NOT IN (SELECT sid FROM Enrollments WHERE lgrade = 'A');
SELECT 
 sid, 
 firstname, 
 gpa 
FROM 
 students 
WHERE 
 status IN ('freshman', 'sophomore', 'junior', 'senior') 
 and sid IN (SELECT sid FROM Enrollments WHERE lgrade = 'A');
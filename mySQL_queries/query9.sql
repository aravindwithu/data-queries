SELECT 
 * 
FROM 
 students 
WHERE 
 sid in (SELECT sid FROM Enrollments group by sid having count(sid)>4);
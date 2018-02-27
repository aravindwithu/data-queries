SELECT 
 sid, 
 firstname 
FROM 
 students where sid in (
 select sid from enrollments en  
WHERE 
 en.lgrade in (SELECT min(lgrade) FROM enrollments en1 WHERE en1.classid = en.classid));
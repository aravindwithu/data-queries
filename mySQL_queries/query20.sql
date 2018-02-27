(SELECT 
 en.sid, 
 avg(nvl(gd.ngrade,0)) as cgpa 
FROM 
 enrollments en 
 JOIN grades gd 
 ON en.lgrade = gd.lgrade 
WHERE 
 en.lgrade is not null GROUP BY en.sid)
UNION
(SELECT 
 sid, 
 null as cgpa 
FROM 
 students 
WHERE 
 sid not in(SELECT sid FROM enrollments))
ORDER BY cgpa desc;
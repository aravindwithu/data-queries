SELECT 
 classid, 
 dept_code, 
 course# , 
 (limit - class_size) as seats_available 
FROM 
 classes 
WHERE 
 limit > class_size 
 and year = 2016 
 and semester = 'Spring';
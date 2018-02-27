SELECT 
 distinct firstname 
FROM 
 students st 
 JOIN enrollments en 
 ON st.sid = en.sid 
 JOIN classes cl  
 ON en.classid = cl.classid 
WHERE (cl.dept_code, cl.course#) IN     (SELECT cl1.dept_code, cl1.course# FROM classes cl1 JOIN enrollments en1 ON cl1.classid = en1.classid WHERE en1.sid = 'B005');
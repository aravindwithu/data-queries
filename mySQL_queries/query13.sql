SELECT 
 distinct firstname 
FROM 
 students st 
 JOIN enrollments en 
 ON st.sid = en.sid 
 JOIN classes cl  
 ON en.classid = cl.classid 
WHERE (cl.dept_code, cl.course#) IN
SELECT 
 st.sid, 
 st.firstname 
FROM 
 students st 
WHERE NOT EXISTS (SELECT * FROM courses cr WHERE dept_code = 'CS' and course# like '4%' and NOT EXISTS   (SELECT en.* FROM enrollments en JOIN classes cl ON en.classid = cl.classid WHERE en.sid = st.sid and cl.dept_code = cr.dept_code and cl.course# = cr.course#));
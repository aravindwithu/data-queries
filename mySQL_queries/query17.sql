SELECT 
 dept_code, 
 course#, 
 title 
FROM 
 courses
WHERE 
 title like '%systems%'
 and (dept_code, course#) 
        IN (SELECT cl.dept_code, cl.course# 
            FROM classes cl
             WHERE NOT EXISTS 
               (SELECT * FROM students st WHERE st.gpa > 3.25 
                 and NOT EXISTS (SELECT * FROM enrollments en 
                WHERE en.sid = st.sid and en.classid = cl.classid)));
SELECT 
 st.sid, 
 st.firstname 
FROM 
 students st 
WHERE NOT EXISTS (SELECT * FROM courses cr WHERE dept_code = 'CS' and course# like '4%' and NOT EXISTS
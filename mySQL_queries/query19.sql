SELECT 
 avg(t_credits. t_credit) as average_of_Total_credit
FROM 
 (SELECT 
   st.sid, 
   st.firstname, 
   sum(cc.credits) as t_credit 
  FROM 
   students st 
   JOIN enrollments en 
   ON st.sid = en.sid 
   JOIN classes cl 
   ON cl.classid = en.classid 
   JOIN courses cr 
   ON cl.dept_code = cr.dept_code and cl.course# = cr.course# 
   JOIN course_credit cc   
   ON cr.course# = cc.course# 
  WHERE 
   en.lgrade is not null GROUP BY st.sid, st.firstname
 ) t_credits;
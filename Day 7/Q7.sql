SELECT CONCAT(First_Name, Last_Name) AS Full_Name, 
       LENGTH(Last_Name) AS Length_Of_LastName, 
       INSTR(Last_Name, 'a') AS Pos_Of_a_in_LName 
FROM Employee_Details 
WHERE job_id LIKE '%CLERK%';
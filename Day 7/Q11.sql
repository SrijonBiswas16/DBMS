SELECT job_id, INSTR(First_Name, 'e') AS Position_of_e 
FROM Employee_Details 
WHERE INSTR(First_Name, 'e') > 0;
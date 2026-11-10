SELECT Last_Name 
FROM Employee_Details 
WHERE SUBSTR(job_id, 4, 3) = 'REP';
-- Alternatively: WHERE INSTR(job_id, 'REP') = 4;
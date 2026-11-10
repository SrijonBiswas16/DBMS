SELECT MOD(Salary, 3000) AS Salary_Remainder 
FROM Employee_Details 
WHERE job_id = 'SA_REP'; 
-- Or WHERE job_id LIKE '%REP%' depending on exact schema values
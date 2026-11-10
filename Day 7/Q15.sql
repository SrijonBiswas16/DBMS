SELECT TO_CHAR(Salary, '$9999') AS Formatted_Salary 
FROM Employee_Details 
WHERE department_id IN (60, 90, 110);
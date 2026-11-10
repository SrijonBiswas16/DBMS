SELECT TRIM('e' FROM First_Name) AS Trimmed 
FROM Employee_Details 
WHERE INSTR(First_Name, 'e') > 0;
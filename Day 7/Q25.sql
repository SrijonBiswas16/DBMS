SELECT (Salary * 12) + NVL(commission_pct, 0) AS Annual_Salary, 
       ROUND((Salary * 12) + NVL(commission_pct, 0), 2) AS Rounded_Annual_Salary 
FROM Employee_Details;
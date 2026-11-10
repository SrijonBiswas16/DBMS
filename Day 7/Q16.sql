SELECT Last_Name, 
       NVL(TO_CHAR(commission_pct), 'No Commission.') AS COMM 
FROM Employee_Details;
SELECT CONCAT(First_Name, CONCAT(' ', Last_Name)) AS Employee_Name, 
       ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)) AS MONTHS_WORKED 
FROM Employee_Details;
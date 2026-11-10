SELECT CONCAT(First_Name, CONCAT(' ', Last_Name)) AS Employee_Name, 
       TO_CHAR(hire_date, 'YEAR') AS Hired_Year_Words 
FROM Employee_Details;
SELECT CONCAT(First_Name, CONCAT(' ', Last_Name)) AS Name, 
       TO_CHAR(hire_date, 'Day') AS Join_Day, 
       hire_date AS Join_Date 
FROM Employee_Details;
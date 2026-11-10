SELECT CONCAT(First_Name, CONCAT(' ', Last_Name)) AS Employee_Name, 
       LAST_DAY(hire_date) AS Last_Day_Of_Hire_Month 
FROM Employee_Details;
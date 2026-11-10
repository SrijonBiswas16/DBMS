SELECT NAME, 
       FLOOR(MONTHS_BETWEEN(SYSDATE, Birthday) / 12) AS AGE, 
       TO_CHAR(Birthday, 'Month') AS MONTH_OF_BIRTH 
FROM Sports_Stud
UNION
SELECT NAME, 
       FLOOR(MONTHS_BETWEEN(SYSDATE, Birthday) / 12) AS AGE, 
       TO_CHAR(Birthday, 'Month') AS MONTH_OF_BIRTH 
FROM Cultural_Stud;
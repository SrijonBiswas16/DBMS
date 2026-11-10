SELECT ROLL, NAME, DEPT FROM Sports_Stud WHERE DEPT = 'IT'
UNION
SELECT ROLL, NAME, DEPT FROM Cultural_Stud WHERE DEPT = 'IT';

SELECT 'Sports Department' AS Source, SUM(SPORTS_FEE) AS Total_Earned FROM Sports_Stud
UNION
SELECT 'Cultural Department' AS Source, SUM(CUL_FEES) AS Total_Earned FROM Cultural_Stud;
SELECT EMP_ID || ', ' || FIRST_NAME || ', ' || LAST_NAME || ', ' || 
       TO_CHAR(HIRE_DATE, 'DD-Mon-YY') || ', ' || JOB_ID || ', ' || SAL || ', ' || DEPT_ID AS "Employee Details" 
FROM EMP;
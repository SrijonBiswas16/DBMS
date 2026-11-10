SELECT e.EMPNO AS Employee_ID, 
       e.ENAME AS Name, 
       e.MGR AS Manager_ID, 
       m.ENAME AS Manager_Name 
FROM EMP e 
LEFT JOIN EMP m ON e.MGR = m.EMPNO;
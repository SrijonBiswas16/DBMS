SELECT e.ENAME AS Employee_Name, 
       e.MGR AS Manager_ID, 
       m.ENAME AS Manager_Name, 
       mm.ENAME AS Managers_Manager_Name 
FROM EMP e 
LEFT JOIN EMP m ON e.MGR = m.EMPNO 
LEFT JOIN EMP mm ON m.MGR = mm.EMPNO;
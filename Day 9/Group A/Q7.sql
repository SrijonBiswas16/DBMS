SELECT 'The movie taken by ' || c.Fname || ' ' || NVL(c.Lname, '') || ' is ' || m.Title || '.' AS Details 
FROM Customer c 
JOIN Invoice i ON c.Cust_id = i.Cust_id 
JOIN Movie m ON i.Mv_no = m.Mv_no 
WHERE i.Mv_no >= 3;
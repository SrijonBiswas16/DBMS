SELECT DISTINCT c.Fname, c.Lname 
FROM Customer c 
JOIN Invoice i ON c.Cust_id = i.Cust_id 
JOIN Movie m ON i.Mv_no = m.Mv_no 
WHERE m.Type = 'Action';
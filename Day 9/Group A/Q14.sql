SELECT DISTINCT c.Fname, c.Lname 
FROM Customer c 
JOIN Invoice i ON c.Cust_id = i.Cust_id;
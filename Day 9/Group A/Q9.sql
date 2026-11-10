SELECT c.Fname, c.Lname, c.Phone, c.Area 
FROM Customer c 
JOIN Invoice i ON c.Cust_id = i.Cust_id 
WHERE EXTRACT(MONTH FROM i.Issue_date) < 8;
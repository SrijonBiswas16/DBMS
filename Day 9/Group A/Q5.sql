SELECT m.Title, m.Type 
FROM Movie m 
JOIN Invoice i ON m.Mv_no = i.Mv_no 
JOIN Customer c ON i.Cust_id = c.Cust_id 
WHERE c.Fname = 'Vandana';
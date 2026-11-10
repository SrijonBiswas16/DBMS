SELECT i.Mv_no, m.Title 
FROM Invoice i 
JOIN Movie m ON i.Mv_no = m.Mv_no 
JOIN Customer c ON i.Cust_id = c.Cust_id 
WHERE c.Fname = 'Ivan';
SELECT c.* 
FROM Customer c 
JOIN Invoice i ON c.Cust_id = i.Cust_id 
WHERE i.Inv_no = 'I10';
SELECT c.Fname, c.Lname, i.Mv_no 
FROM Customer c 
JOIN Invoice i ON c.Cust_id = i.Cust_id;
SELECT m.Type, i.Mv_no 
FROM Movie m 
JOIN Invoice i ON m.Mv_no = i.Mv_no 
WHERE i.Cust_id IN ('A01', 'A02');
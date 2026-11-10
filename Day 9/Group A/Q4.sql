SELECT m.Title, i.Cust_id, i.Mv_no 
FROM Movie m 
JOIN Invoice i ON m.Mv_no = i.Mv_no;
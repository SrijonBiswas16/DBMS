SELECT i.Cust_id 
FROM Invoice i 
JOIN Movie m ON i.Mv_no = m.Mv_no 
WHERE m.Star = 'TC';
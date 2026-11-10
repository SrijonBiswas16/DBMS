UPDATE Sales_Order 
SET S_order_date = TO_DATE('24-07-1996', 'DD-MM-YYYY'),
    Product_no = 'P06',
    Salesman_no = 'S04' 
WHERE Client_no = 'C01';
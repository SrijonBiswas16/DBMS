CREATE TABLE Client_Master (
    Client_no VARCHAR2(5) CONSTRAINT pk_client_master PRIMARY KEY 
                          CONSTRAINT chk_client_no CHECK (Client_no LIKE 'C%'),
    Name VARCHAR2(20) CONSTRAINT nn_client_name NOT NULL 
                      CONSTRAINT uk_client_name UNIQUE,
    Address1 VARCHAR2(30),
    State VARCHAR2(30),
    City VARCHAR2(15) CONSTRAINT chk_client_city CHECK (City IN ('Delhi', 'Mumbai', 'Chennai'))
);

CREATE TABLE Products_Master (
    Product_no VARCHAR2(10) CONSTRAINT pk_products_master PRIMARY KEY 
                            CONSTRAINT chk_product_no CHECK (Product_no LIKE 'P%'),
    Description VARCHAR2(20) CONSTRAINT nn_product_desc NOT NULL 
                             CONSTRAINT uk_product_desc UNIQUE,
    Qty_on_hand NUMBER(8) CONSTRAINT chk_product_qty CHECK (Qty_on_hand > 10),
    Sell_price NUMBER(8,2) CONSTRAINT nn_product_sell_price NOT NULL,
    Cost_price NUMBER(8,2) CONSTRAINT nn_product_cost_price NOT NULL
);

CREATE TABLE Sales_Order (
    S_order_no VARCHAR2(10) CONSTRAINT pk_sales_order PRIMARY KEY 
                            CONSTRAINT chk_s_order_no CHECK (S_order_no LIKE 'O%'),
    S_order_date DATE,
    Client_no VARCHAR2(5) CONSTRAINT fk_sales_client_no REFERENCES Client_Master(Client_no),
    Salesman_no VARCHAR2(10) CONSTRAINT chk_salesman_no CHECK (Salesman_no LIKE 'S%'),
    Product_no VARCHAR2(10) CONSTRAINT fk_sales_product_no REFERENCES Products_Master(Product_no)
);

INSERT INTO Client_Master (Client_no, Name, Address1, State, City) VALUES ('C01', 'Ivaan', 'Church Rd', 'Maharashtra', 'Mumbai');
INSERT INTO Client_Master (Client_no, Name, Address1, State, City) VALUES ('C02', 'Vandana', 'St.Mary Rd', 'Tamil Nadu', 'Chennai');
INSERT INTO Client_Master (Client_no, Name, Address1, State, City) VALUES ('C03', 'Pramada', 'Mall Rd', 'Maharashtra', 'Mumbai');
INSERT INTO Client_Master (Client_no, Name, Address1, State, City) VALUES ('C04', 'Basu', 'Church Rd', 'Maharashtra', 'Mumbai');
INSERT INTO Client_Master (Client_no, Name, Address1, State, City) VALUES ('C05', 'Ravi', 'Chandni', NULL, 'Delhi');
INSERT INTO Client_Master (Client_no, Name, Address1, State, City) VALUES ('C06', 'Rukmini', 'Mall Rd', 'Maharashtra', 'Mumbai');

INSERT INTO Products_Master (Product_no, Description, Qty_on_hand, Sell_price, Cost_price) VALUES ('P01', '1.44 Floppies', 100, 525.00, 500.00);
INSERT INTO Products_Master (Product_no, Description, Qty_on_hand, Sell_price, Cost_price) VALUES ('P02', 'Monitors', 25, 12000.00, 11280.00);
INSERT INTO Products_Master (Product_no, Description, Qty_on_hand, Sell_price, Cost_price) VALUES ('P03', 'Mouse', 20, 1050.00, 1000.00);
INSERT INTO Products_Master (Product_no, Description, Qty_on_hand, Sell_price, Cost_price) VALUES ('P04', '1.22 floppies', 100, 525.00, 500.00);
INSERT INTO Products_Master (Product_no, Description, Qty_on_hand, Sell_price, Cost_price) VALUES ('P05', 'Keyboards', 15, 3150.00, 3050.00);
INSERT INTO Products_Master (Product_no, Description, Qty_on_hand, Sell_price, Cost_price) VALUES ('P06', 'Cd drive', 14, 5250.00, 5100.00);

INSERT INTO Sales_Order (S_order_no, S_order_date, Client_no, Salesman_no, Product_no) VALUES ('O19001', TO_DATE('12-01-1996', 'DD-MM-YYYY'), 'C01', 'S01', 'P01');
INSERT INTO Sales_Order (S_order_no, S_order_date, Client_no, Salesman_no, Product_no) VALUES ('O19002', TO_DATE('25-01-1996', 'DD-MM-YYYY'), 'C02', 'S02', 'P02');
INSERT INTO Sales_Order (S_order_no, S_order_date, Client_no, Salesman_no, Product_no) VALUES ('O19003', TO_DATE('18-02-1996', 'DD-MM-YYYY'), 'C03', 'S03', 'P03');
INSERT INTO Sales_Order (S_order_no, S_order_date, Client_no, Salesman_no, Product_no) VALUES ('O19004', TO_DATE('03-04-1996', 'DD-MM-YYYY'), 'C01', 'S01', 'P04');
INSERT INTO Sales_Order (S_order_no, S_order_date, Client_no, Salesman_no, Product_no) VALUES ('O19005', TO_DATE('20-05-1996', 'DD-MM-YYYY'), 'C04', 'S02', 'P05');
INSERT INTO Sales_Order (S_order_no, S_order_date, Client_no, Salesman_no, Product_no) VALUES ('O19006', TO_DATE('24-05-1996', 'DD-MM-YYYY'), 'C05', 'S04', 'P06');

COMMIT;
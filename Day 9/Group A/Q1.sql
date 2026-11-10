CREATE TABLE Customer (
    Cust_id VARCHAR2(5) CONSTRAINT pk_customer PRIMARY KEY 
                        CONSTRAINT chk_cust_id CHECK (Cust_id LIKE 'A%'),
    Fname VARCHAR2(20) CONSTRAINT nn_fname NOT NULL,
    Lname VARCHAR2(20),
    Area VARCHAR2(5) CONSTRAINT nn_area NOT NULL,
    Phone VARCHAR2(15)
);

CREATE TABLE Movie (
    Mv_no NUMBER CONSTRAINT pk_movie PRIMARY KEY,
    Title VARCHAR2(50) CONSTRAINT nn_title NOT NULL,
    Type VARCHAR2(20) CONSTRAINT nn_type NOT NULL,
    Star VARCHAR2(5) CONSTRAINT nn_star NOT NULL,
    Price NUMBER CONSTRAINT nn_price NOT NULL
);

CREATE TABLE Invoice (
    Inv_no VARCHAR2(5) CONSTRAINT pk_invoice PRIMARY KEY 
                       CONSTRAINT chk_inv_no CHECK (Inv_no LIKE 'I%'),
    Mv_no NUMBER CONSTRAINT fk_inv_mv REFERENCES Movie(Mv_no),
    Cust_id VARCHAR2(5) CONSTRAINT fk_inv_cust REFERENCES Customer(Cust_id),
    Issue_date DATE CONSTRAINT nn_issue_date NOT NULL,
    Return_date DATE CONSTRAINT nn_return_date NOT NULL
);

INSERT INTO Customer VALUES ('A01', 'Ivan', 'Bayross', 'SA', '6125467');
INSERT INTO Customer VALUES ('A02', 'Vandana', 'Saiteal', 'MU', '5560379');
INSERT INTO Customer VALUES ('A03', 'Pramada', 'Jauguste', 'DA', '4560389');
INSERT INTO Customer VALUES ('A04', 'Basu', 'Navindi', 'BA', '6125401');
INSERT INTO Customer VALUES ('A05', 'Ravi', 'Shreedhar', 'NA', NULL);
INSERT INTO Customer VALUES ('A06', 'Rukmini', NULL, 'GH', '5125274');

INSERT INTO Movie VALUES (1, 'Bloody', 'Action', 'JC', 181);
INSERT INTO Movie VALUES (2, 'The Firm', 'Thriller', 'TC', 200);
INSERT INTO Movie VALUES (3, 'Pretty Woman', 'Romance', 'RG', 151);
INSERT INTO Movie VALUES (4, 'Home Alone', 'Comedy', 'MC', 150);
INSERT INTO Movie VALUES (5, 'The Fugitive', 'Thriller', 'MF', 200);
INSERT INTO Movie VALUES (6, 'Coma', 'Suspense', 'MD', 100);
INSERT INTO Movie VALUES (7, 'Dracula', 'Horror', 'GO', 150);
INSERT INTO Movie VALUES (8, 'Quick Change', 'Comedy', 'BM', 100);
INSERT INTO Movie VALUES (9, 'Gone with the Wind', 'Action', 'CB', 200);
INSERT INTO Movie VALUES (10, 'Carry on Doctor', 'Comedy', 'LP', 100);

INSERT INTO Invoice VALUES ('I01', 4, 'A01', TO_DATE('23-Jul-93', 'DD-Mon-YY'), TO_DATE('25-Jul-93', 'DD-Mon-YY'));
INSERT INTO Invoice VALUES ('I02', 3, 'A02', TO_DATE('12-Aug-93', 'DD-Mon-YY'), TO_DATE('15-Aug-93', 'DD-Mon-YY'));
INSERT INTO Invoice VALUES ('I03', 1, 'A02', TO_DATE('15-Aug-93', 'DD-Mon-YY'), TO_DATE('18-Aug-93', 'DD-Mon-YY'));
INSERT INTO Invoice VALUES ('I04', 6, 'A03', TO_DATE('10-Sep-93', 'DD-Mon-YY'), TO_DATE('13-Sep-93', 'DD-Mon-YY'));
INSERT INTO Invoice VALUES ('I05', 7, 'A04', TO_DATE('05-Aug-93', 'DD-Mon-YY'), TO_DATE('08-Aug-93', 'DD-Mon-YY'));
INSERT INTO Invoice VALUES ('I06', 2, 'A06', TO_DATE('18-Sep-93', 'DD-Mon-YY'), TO_DATE('21-Sep-93', 'DD-Mon-YY'));
INSERT INTO Invoice VALUES ('I07', 9, 'A05', TO_DATE('07-Jul-93', 'DD-Mon-YY'), TO_DATE('10-Jul-93', 'DD-Mon-YY'));
INSERT INTO Invoice VALUES ('I08', 9, 'A01', TO_DATE('11-Aug-93', 'DD-Mon-YY'), TO_DATE('14-Aug-93', 'DD-Mon-YY'));
INSERT INTO Invoice VALUES ('I09', 5, 'A03', TO_DATE('06-Jul-93', 'DD-Mon-YY'), TO_DATE('09-Jul-93', 'DD-Mon-YY'));
INSERT INTO Invoice VALUES ('I10', 8, 'A06', TO_DATE('03-Sep-93', 'DD-Mon-YY'), TO_DATE('06-Sep-93', 'DD-Mon-YY'));

COMMIT;
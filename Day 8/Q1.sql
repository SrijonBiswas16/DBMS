CREATE TABLE Sports_Stud (
    ROLL NUMBER CONSTRAINT pk_sports_roll PRIMARY KEY,
    NAME VARCHAR2(30) CONSTRAINT uq_sports_name UNIQUE,
    DEPT VARCHAR2(10) CONSTRAINT chk_sports_dept CHECK (DEPT IN ('IT', 'CS')),
    SPORTS_FEE NUMBER CONSTRAINT chk_sports_fee CHECK (SPORTS_FEE >= 1000)
);

CREATE TABLE Cultural_Stud (
    ROLL NUMBER CONSTRAINT pk_cultural_roll PRIMARY KEY,
    NAME VARCHAR2(30) CONSTRAINT uq_cultural_name UNIQUE,
    DEPT VARCHAR2(10) CONSTRAINT chk_cul_dept CHECK (DEPT IN ('IT', 'CS')),
    CUL_FEES NUMBER CONSTRAINT chk_cul_fee CHECK (CUL_FEES >= 600)
);

INSERT INTO Sports_Stud VALUES (1, 'Aman', 'IT', 1200);
INSERT INTO Sports_Stud VALUES (7, 'Anurag', 'CS', 1500);
INSERT INTO Sports_Stud VALUES (2, 'Binay', 'IT', 1000);
INSERT INTO Sports_Stud VALUES (8, 'Chiranjit', 'CS', 1700);

INSERT INTO Cultural_Stud VALUES (1, 'Aman', 'IT', 700);
INSERT INTO Cultural_Stud VALUES (2, 'Binay', 'IT', 700);
INSERT INTO Cultural_Stud VALUES (3, 'Bipul', 'CS', 600);
INSERT INTO Cultural_Stud VALUES (4, 'Joy', 'CS', 600);
INSERT INTO Cultural_Stud VALUES (5, 'Surojit', 'IT', 700);
INSERT INTO Cultural_Stud VALUES (6, 'Wasim', 'CS', 600);

COMMIT;
ALTER TABLE Sports_Stud ADD Birthday DATE;
ALTER TABLE Cultural_Stud ADD Birthday DATE;

UPDATE Sports_Stud SET Birthday = TO_DATE('15-Jan-2003', 'DD-Mon-YYYY') WHERE ROLL = 1;
UPDATE Sports_Stud SET Birthday = TO_DATE('22-Mar-2004', 'DD-Mon-YYYY') WHERE ROLL = 7;
UPDATE Sports_Stud SET Birthday = TO_DATE('10-Aug-2003', 'DD-Mon-YYYY') WHERE ROLL = 2;
UPDATE Sports_Stud SET Birthday = TO_DATE('05-Nov-2002', 'DD-Mon-YYYY') WHERE ROLL = 8;

UPDATE Cultural_Stud SET Birthday = TO_DATE('15-Jan-2003', 'DD-Mon-YYYY') WHERE ROLL = 1;
UPDATE Cultural_Stud SET Birthday = TO_DATE('10-Aug-2003', 'DD-Mon-YYYY') WHERE ROLL = 2;
UPDATE Cultural_Stud SET Birthday = TO_DATE('12-Feb-2004', 'DD-Mon-YYYY') WHERE ROLL = 3;
UPDATE Cultural_Stud SET Birthday = TO_DATE('30-Dec-2003', 'DD-Mon-YYYY') WHERE ROLL = 4;
UPDATE Cultural_Stud SET Birthday = TO_DATE('18-Sep-2002', 'DD-Mon-YYYY') WHERE ROLL = 5;
UPDATE Cultural_Stud SET Birthday = TO_DATE('25-Jul-2003', 'DD-Mon-YYYY') WHERE ROLL = 6;

COMMIT;
CREATE TABLE Project_Timesheet (
    Timesheet_id VARCHAR2(10) CONSTRAINT pk_timesheet PRIMARY KEY,
    Emp_id VARCHAR2(10),
    Project_id VARCHAR2(10),
    Hours_Logged NUMBER(4, 1),
    Log_Date DATE,
    CONSTRAINT fk_timesheet_assignment FOREIGN KEY (Emp_id, Project_id) 
        REFERENCES Project_Assignment(Emp_id, Project_id)
);
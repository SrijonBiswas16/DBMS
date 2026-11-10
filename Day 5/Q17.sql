CREATE TABLE Project_Assignment (
    Emp_id VARCHAR2(10),
    Project_id VARCHAR2(10),
    Role VARCHAR2(20),
    Assigned_Date DATE,
    CONSTRAINT pk_project_assignment PRIMARY KEY (Emp_id, Project_id)
);
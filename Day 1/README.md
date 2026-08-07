# MySQL Database Assignment 1

## Overview
This repository contains the SQL scripts and queries for the Day 1 database assignment. It demonstrates foundational database management skills, including creating table structures, manipulating schemas, and performing standard CRUD (Create, Read, Update, Delete) operations within a MySQL database.

## Technologies Used
* **Database:** MySQL
* **Editor:** Visual Studio Code (VS Code)

## Database Schema
The primary database used is `assignment_1`, which contains the following tables:
* `Student`: The main table storing roll numbers, names, ages, courses, subject marks, and birthdates.
* `MSc`: A table specifically for MSc students, generated from the Student table structure.
* `MCA`: A table specifically for MCA students, featuring modified column headers.

## Key Operations Performed
1. **Table Creation & Duplication:** 
   * Created standard tables with appropriate data types (`INT`, `VARCHAR`, `DECIMAL`, `DATE`).
   * Copied empty table structures using `WHERE 1=0`.
2. **Schema Modification:** 
   * Used `ALTER TABLE` to rename columns (e.g., changing `Course` to `Department` and `Name` to `First Name`).
3. **Data Insertion:** 
   * Populated tables with standard `INSERT INTO ... VALUES` commands.
   * Migrated specific data between tables using `INSERT INTO ... SELECT` subqueries.
4. **Data Retrieval:** 
   * Utilized `SELECT` statements with specific `WHERE` clauses to filter records by Roll number and Course.
   * Restructured visual column outputs without altering the permanent schema.
5. **Data Modification & Safety:** 
   * Bypassed MySQL's Error 1175 (Safe Update Mode) using `SET SQL_SAFE_UPDATES = 0;`.
   * Executed precise `UPDATE` commands to modify specific student marks and names.
6. **Data Deletion:** 
   * Used `DELETE FROM` to remove isolated rows and clear out entire tables.

## How to Run
1. Ensure your local MySQL server is actively running.
2. Open the SQL script in VS Code.
3. Highlight `USE assignment_1;` and run the selected query to connect to the database.
4. Execute the remaining queries sequentially to replicate the assignment steps.

## Author
* **Soumosree**

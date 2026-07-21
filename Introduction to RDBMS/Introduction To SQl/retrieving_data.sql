 Module: Introduction to SQL
     Topic: Retrieving Data Using the SQL SELECT Statement

 Assignment 1:
 Question: Determine the Structure of DEPT Table and its Contents.


-- Command to view table structure:
DESCRIBE dept;

-- Query to view table contents:
SELECT * 
FROM dept;


 Assignment 2:
 Question: Determine the Structure of EMP Table and its Contents.
 Topics Covered: Sqlplus Command


-- Command to view table structure:
DESCRIBE emp;

-- Query to view table contents:
SELECT * 
FROM emp;


 Assignment 3:
 Question: Display the Ename and Deptno from Emp table whose Empno is 7788.
 


SELECT ename, deptno 
FROM emp 
WHERE empno = 7788;
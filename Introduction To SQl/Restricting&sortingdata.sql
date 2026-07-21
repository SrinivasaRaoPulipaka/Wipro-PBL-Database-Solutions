Question 1
Display the Ename,Sal,Comm from Emp table who earn commission and sort the records in descending order of Salary and Comm. Use column’s numeric position in the ORDER BY clause.

SQL
SELECT ename, sal, comm
FROM emp
WHERE comm IS NOT NULL AND comm > 0
ORDER BY 2 DESC, 3 DESC;
Question 2
The HR department needs a query to display all unique job codes from the EMP table.

SQL
SELECT DISTINCT job
FROM emp;
Question 3
The HR department wants more descriptive column headings for its report on employees. Name the column headings Emp #, Employee, Job, and Hire Date, respectively by giving Column Alias.

SQL
SELECT empno AS "Emp #", ename AS "Employee", job AS "Job", hiredate AS "Hire Date"
FROM emp;
Question 4
The HR department has requested a report of all employees and their job IDs. Display the last name concatenated with the job ID (separated by a comma and space) and name the column Employee and Title by giving Column Alias.  

SQL
SELECT ename || ', ' || job AS "Employee and Title"
FROM emp;
Question 5
To familiarize yourself with the data in the EMP table, create a query to display all the data from that table. Separate each column output by a comma. ENAME,JOB,HIREDATE,MGR.Name the column title THE_OUTPUT.  

SQL
SELECT ename || ',' || job || ',' || hiredate || ',' || mgr AS "THE_OUTPUT"
FROM emp;
Question 6
Create a report to display the ename, job , and Hiredate for the employees name is SCOTT or TURNER. Order the query in ascending order by hiredate.

SQL
SELECT ename, job, hiredate
FROM emp
WHERE ename IN ('SCOTT', 'TURNER')
ORDER BY hiredate ASC;
Question 7
Display the ename and department number of all employees in departments 20 or 30 in ascending alphabetical order by ename.

SQL
SELECT ename, deptno
FROM emp
WHERE deptno IN (20, 30)
ORDER BY ename ASC;
Question 8
Modify the previous query to display the last name and salary of employees who earn between 2000 and 3000 and are in department 20 or 30. Label the columns Employee and Monthly Salary, respectively giving Column Alias.  

SQL
SELECT ename AS "Employee", sal AS "Monthly Salary"
FROM emp
WHERE sal BETWEEN 2000 AND 3000
  AND deptno IN (20, 30);
Question 9
The HR department needs a report that displays the last name and hire date for all employees who were hired in 1981.

SQL
SELECT ename, hiredate
FROM emp
WHERE hiredate BETWEEN '01-JAN-1981' AND '31-DEC-1981';
Question 10
Display the Ename, Sal of employees who earn more than an amount the user specifies after a Prompt.

SQL
SELECT ename, sal
FROM emp
WHERE sal > &salary_amount;
Question 11
Create a report to display the last name and job title of all employees who do not have a manager.

SQL
SELECT ename, job
FROM emp
WHERE mgr IS NULL;
Question 12
Create a query that prompts the user for Manager ID and generate EMPNO,ENAME, SAL,DEPTNO. The user should have the ability to sort the records on a selected Column.

SQL
SELECT empno, ename, sal, deptno
FROM emp
WHERE mgr = &manager_id
ORDER BY &sort_column;
Question 13
The HR department wants to run reports based on a manager. Create a query that prompts the user for a MGR and generates the empno, ename, salary, and department for that manager’s employees. The HR department wants the ability to sort the report on a selected column.  

SQL
SELECT empno, ename, sal, deptno
FROM emp
WHERE mgr = &mgr_id
ORDER BY &order_by_col;
Question 14
Display all employee last names in which the third letter of the name is A.

SQL
SELECT ename
FROM emp
WHERE ename LIKE '__A%';
Question 15
Display the last name of all employees who have both an A and an S in their ename.

SQL
SELECT ename
FROM emp
WHERE ename LIKE '%A%' AND ename LIKE '%S%';
Question 16
Display the Ename, Job, Sal for all employees whose jobs are CLERK and whose salary is in 800 or 950 or 1300.

SQL
SELECT ename, job, sal
FROM emp
WHERE job = 'CLERK'
  AND sal IN (800, 950, 1300);
Question 1
Write a query to display the current date. Label the column Date.

SQL
SELECT SYSDATE AS "Date"
FROM DUAL;
Question 2
The HR department needs a report to display the employee number, last name, salary, and salary increased by 15.5% (expressed as a whole number) for each employee. Label the column New Salary.

SQL
SELECT empno, ename, sal, ROUND(sal * 1.155) AS "New Salary"
FROM emp;

Question 3
Modify the previous query to add a column alias that subtracts the old salary from the new salary. Label the column Increase.

SQL
SELECT empno, ename, sal, ROUND(sal * 1.155) AS "New Salary", ROUND(sal * 1.155) - sal AS "Increase"
FROM emp;

Question 4
Write a query that displays the ename (with the first letter uppercase and all other letters lowercase) and the length of the ename for all employees whose name starts with the letters J, A, or M. Give each column an appropriate label. Sort the results by the employees’ enames.  

SQL
SELECT INITCAP(ename) AS "Name", LENGTH(ename) AS "Length"
FROM emp
WHERE UPPER(ename) LIKE 'J%' 
   OR UPPER(ename) LIKE 'A%' 
   OR UPPER(ename) LIKE 'M%'
ORDER BY ename;

Question 5
Rewrite the query so that the user is prompted to enter a letter that starts the last name. For example, if the user enters H when prompted for a letter, then the output should show all employees whose last name starts with the letter H.  

SQL
SELECT INITCAP(ename) AS "Name", LENGTH(ename) AS "Length"
FROM emp
WHERE UPPER(ename) LIKE UPPER('&start_letter') || '%'
ORDER BY ename;
Question 6 

The HR department wants to find the length of employment for each employee. For each employee, display the ename and calculate the number of months between today and the date on which the employee was hired. Label the column MONTHS_WORKED. Order your results by the number of months employed. Round the number of months up to the closest whole number.  

SQL
SELECT ename, CEIL(MONTHS_BETWEEN(SYSDATE, hiredate)) AS "MONTHS_WORKED"
FROM emp
ORDER BY MONTHS_BETWEEN(SYSDATE, hiredate);

Question 7
Create a report that produces the following for each employee: earns monthly but wants <3 times salary>. Label the column Dream Salaries.

SQL
SELECT ename || ' earns ' || TO_CHAR(sal, '$99,999.00') || ' monthly but wants ' || TO_CHAR(sal * 3, '$99,999.00') || '.' AS "Dream Salaries"
FROM emp;

Question 8
Create a query to display the last name and salary for all employees. Format the salary to be 15 characters long, left-padded with the $ symbol. Label the column SALARY.

SQL
SELECT ename, LPAD(TO_CHAR(sal, '99,999'), 15, '$') AS "SALARY"
FROM emp;

Question 9
Display each employee’s last name, hire date, and salary review date, which is the first Monday after six months of service. Label the column REVIEW. Format the dates to appear in the format similar to “Monday, the Thirty-First of July, 2000.”  

SQL
SELECT ename, hiredate, TO_CHAR(NEXT_DAY(ADD_MONTHS(hiredate, 6), 'MONDAY'), 'fmDay, "the" Ddspth "of" Month, YYYY') AS "REVIEW"
FROM emp;

Question 10
Display the last name, hire date, and day of the week on which the employee started. Label the column DAY. Order the results by the day of the week, starting with Monday.

SQL
SELECT ename, hiredate, TO_CHAR(hiredate, 'DAY') AS "DAY"
FROM emp
ORDER BY TO_CHAR(hiredate - 1, 'D');

Question 11
Create a query that displays the employees’ last names and commission amounts. If an employee does not earn commission, show “No Commission.” Label the column COMM.

SQL
SELECT ename, NVL(TO_CHAR(comm), 'No Commission') AS "COMM"
FROM emp;

Question 12
Create a query that displays the first eight characters of the employees’ last names and indicates the amounts of their salaries with asterisks. Each asterisk signifies a thousand dollars. Sort the data in descending order of salary. Label the column EMPLOYEES_AND_THEIR_SALARIES.  

SQL
SELECT SUBSTR(ename, 1, 8) || ' ' || LPAD('*', TRUNC(sal / 1000), '*') AS "EMPLOYEES_AND_THEIR_SALARIES"
FROM emp
ORDER BY sal DESC;

Question 13
Using the DECODE function, write a query that displays the grade of all employees based on the value of the column JOB, using the following data: PRESIDENT-A,MANAGER-B,SALESMAN-C,CLERK-D

SQL
SELECT ename, job, DECODE(job, 'PRESIDENT', 'A', 'MANAGER', 'B', 'SALESMAN', 'C', 'CLERK', 'D', '0') AS "GRADE"
FROM emp;

Question 14
Rewrite the statement in the preceding exercise using the CASE syntax.

SQL
SELECT ename, job,
       CASE job
            WHEN 'PRESIDENT' THEN 'A'
            WHEN 'MANAGER' THEN 'B'
            WHEN 'SALESMAN' THEN 'C'
            WHEN 'CLERK' THEN 'D'
            ELSE '0'
       END AS "GRADE"
FROM emp;
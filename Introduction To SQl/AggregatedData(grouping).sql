Question 1
Find the highest, lowest, sum, and average salary of all employees. Label the columns Maximum, Minimum, Sum, and Average, respectively. Round your results to the nearest whole number.

SQL
SELECT ROUND(MAX(sal)) AS "Maximum",
       ROUND(MIN(sal)) AS "Minimum",
       ROUND(SUM(sal)) AS "Sum",
       ROUND(AVG(sal)) AS "Average"
FROM emp;

Question 2

Modify the above query to display the minimum, maximum, sum, and average salary for each job type.

SQL
SELECT job,
       ROUND(MIN(sal)) AS "Minimum",
       ROUND(MAX(sal)) AS "Maximum",
       ROUND(SUM(sal)) AS "Sum",
       ROUND(AVG(sal)) AS "Average"
FROM emp
GROUP BY job;

Question 3
Write a query to display the number of people with the same job.

SQL
SELECT job, COUNT(*)
FROM emp
GROUP BY job;

Question 4
Determine the number of managers without listing them. Label the column Number of Managers.

SQL
SELECT COUNT(DISTINCT mgr) AS "Number of Managers"
FROM emp;
Question 5
Find the difference between the highest and lowest salaries. Label the column DIFFERENCE.

SQL
SELECT MAX(sal) - MIN(sal) AS "DIFFERENCE"
FROM emp;

Question 6
Create a report to display the manager number and the salary of the lowest-paid employee for that manager. Exclude anyone whose manager is not known. Exclude any groups where the minimum salary is $2000 or less. Sort the output in descending order of salary.   

SQL
SELECT mgr, MIN(sal)
FROM emp
WHERE mgr IS NOT NULL
GROUP BY mgr
HAVING MIN(sal) > 2000
ORDER BY MIN(sal) DESC;

Question 7
Create a query to display the total number of employees and, of that total, the number of employees hired in 1980, 1981, and 1982. Create appropriate column headings.

SQL
SELECT COUNT(*) AS "TOTAL",
       COUNT(DECODE(TO_CHAR(hiredate, 'YYYY'), '1980', 1)) AS "1980",
       COUNT(DECODE(TO_CHAR(hiredate, 'YYYY'), '1981', 1)) AS "1981",
       COUNT(DECODE(TO_CHAR(hiredate, 'YYYY'), '1982', 1)) AS "1982"
FROM emp;
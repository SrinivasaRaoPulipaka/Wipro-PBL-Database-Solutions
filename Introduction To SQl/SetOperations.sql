Question 1
Create a matrix query to display the job, the salary for that job based on department number, and the total salary for that job, for departments 10, 20, and 30, giving each column an appropriate heading.

SQL
SELECT job,
       SUM(DECODE(deptno, 10, sal, 0)) AS "Dept 10",
       SUM(DECODE(deptno, 20, sal, 0)) AS "Dept 20",
       SUM(DECODE(deptno, 30, sal, 0)) AS "Dept 30",
       SUM(sal) AS "Total"
FROM emp
GROUP BY job;


Question 2
Using set operator display the DEPTNO,SUM(SAL) for each dept, JOB,SUM(SAL) for each Job and Total Salary.

SQL
SELECT TO_CHAR(deptno) AS "CATEGORY", SUM(sal) AS "TOTAL_SALARY"
FROM emp
GROUP BY deptno
UNION ALL
SELECT job AS "CATEGORY", SUM(sal) AS "TOTAL_SALARY"
FROM emp
GROUP BY job
UNION ALL
SELECT 'Total' AS "CATEGORY", SUM(sal) AS "TOTAL_SALARY"
FROM emp;

Question 3
Using Set Operator display the JOB and Deptno in employees working in deptno 20,10,30 in that order.

SQL
SELECT job, deptno
FROM emp
WHERE deptno = 20
UNION ALL
SELECT job, deptno
FROM emp
WHERE deptno = 10
UNION ALL
SELECT job, deptno
FROM emp
WHERE deptno = 30;




Question 1
Write a query for the HR department to produce the addresses of all the departments. Use the EMP and DEPT tables. Show the EMPNO, ENAME, SAL, DNAME and LOC in the output. Use a NATURAL JOIN to produce the results.SQLSELECT empno, ename, sal, dname, loc
FROM emp
NATURAL JOIN dept;

Question 2
The HR department needs a report of all employees. Write a query to display the JOB, MGR, SAL, COMM, DNAME of employees whose JOB is SALESMAN.SQLSELECT e.job, e.mgr, e.sal, e.comm, d.dname
FROM emp e
JOIN dept d ON e.deptno = d.deptno
WHERE e.job = 'SALESMAN';

Question 3
The HR department needs a report of employees in LOC DALLAS. Display the ENAME, job, DEPTNO, and DNAME for all employees who work in DALLAS.SQLSELECT e.ename, e.job, e.deptno, d.dname
FROM emp e
JOIN dept d ON e.deptno = d.deptno
WHERE d.loc = 'DALLAS';

Question 4
Create a report to display employees’ ename and employee number along with their manager’s name and manager number. Label the columns Employee, Emp#, Manager, and Mgr#, respectively.SQLSELECT e.ename AS "Employee", 
       e.empno AS "Emp#", 
       m.ename AS "Manager", 
       m.empno AS "Mgr#"
FROM emp e
JOIN emp m ON e.mgr = m.empno;

Question 5
Modify the previous Query to display all employees including King, who has no manager. Order the results by the employee number.SQLSELECT e.ename AS "Employee", 
       e.empno AS "Emp#", 
       m.ename AS "Manager", 
       m.empno AS "Mgr#"
FROM emp e
LEFT OUTER JOIN emp m ON e.mgr = m.empno
ORDER BY e.empno;

Question 6
The HR department needs a report on job grades and salaries. To familiarize yourself with the SALGRADE table, first show the structure of the SALGRADE table. Then create a query that displays the name, job, department name, salary, and grade for all employees.SQLDESCRIBE salgrade;

SELECT e.ename, e.job, d.dname, e.sal, s.grade
FROM emp e
JOIN dept d ON e.deptno = d.deptno

JOIN salgrade s ON e.sal BETWEEN s.losal AND s.hisal;

Question 7
Display the ENAME, DNAME of all the employees. Also display those department name which do not have any employees working.SQLSELECT e.ename, d.dname
FROM emp e
RIGHT OUTER JOIN dept d ON e.deptno = d.deptno;

Question 8
The HR department needs to find the names and hire dates for all employees who were hired before their managers, along with their managers’ names and hire dates.SQLSELECT e.ename AS "Employee Name", 
       e.hiredate AS "Emp Hire Date", 
       m.ename AS "Manager Name", 
       m.hiredate AS "Mgr Hire Date"
FROM emp e
JOIN emp m ON e.mgr = m.empno
WHERE e.hiredate < m.hiredate;

Question 9
Display the EMPNO, ENAME, DNAME, LOC of those employees who are working as CLERK. Use the USING clause.SQLSELECT empno, ename, dname, loc
FROM emp
JOIN dept USING (deptno)
WHERE job = 'CLERK';

Question 10
Display the ENAME, SAL, MGR, DNAME of employees whose salary is more than 2000. Use the ON clause.SQLSELECT e.ename, e.sal, e.mgr, d.dname
FROM emp e
JOIN dept d ON e.deptno = d.deptno
WHERE e.sal > 2000;

Question 11
Display the EMPNO, ENAME, JOB, DEPTNO, DNAME, LOC of employees. Use LEFT OUTER JOIN.SQLSELECT e.empno, e.ename, e.job, e.deptno, d.dname, d.loc
FROM emp e
LEFT OUTER JOIN dept d ON e.deptno = d.deptno;

Question 12
Display the ENAME, DNAME of employees. Use RIGHT OUTER JOIN.SQLSELECT e.ename, d.dname
FROM emp e
RIGHT OUTER JOIN dept d ON e.deptno = d.deptno;

Question 13
Display the EMPNO, DNAME, LOC of employees. Use FULL OUTER JOIN.SQLSELECT e.empno, d.dname, d.loc
FROM emp e
FULL OUTER JOIN dept d ON e.deptno = d.deptno;
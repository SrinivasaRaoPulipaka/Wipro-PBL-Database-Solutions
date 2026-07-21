Assignment 1
Question:

Observe the structureas of a given EMPLOYEE table as below and suggest if this table can be further Normalized  

EMPNO, ENAME, SAL, DEPTNO, DNAME, LOC  

Explain what normal form this table is and how you can make this into next normal form.  

Answer:

Current Normal Form: 2NF (Second Normal Form)

Reasoning:

The primary key is EMPNO (a single attribute), so there are no partial dependencies, meaning the table satisfies 2NF. However, it contains a Transitive Dependency: EMPNO → DEPTNO and DEPTNO → DNAME, LOC. Because non-key attributes (DNAME, LOC) depend on another non-key attribute (DEPTNO), it violates 3NF.

Decomposition to reach 3NF:

Decompose the relation into two separate tables:

EMP Table: EMPNO (Primary Key), ENAME, SAL, DEPTNO (Foreign Key)

DEPT Table: DEPTNO (Primary Key), DNAME, LOC

Assignment 2
Question:

Observe the structureas of a given STUDENT table as below and suggest if this table can be further Normalized  

ROLLNO, NAME, AGE, EXAM, MARKS, GRADE  

Explain what normal form this table is and how you can make this into next normal form.  

Answer:

Current Normal Form: 1NF (First Normal Form)

Reasoning:

The primary key is composite: (ROLLNO, EXAM). The table contains a Partial Dependency because ROLLNO alone determines NAME and AGE independently of EXAM. Since non-prime attributes depend on only a part of the primary key, it violates 2NF.

Decomposition to reach 2NF:

Decompose the relation into two separate tables:

STUDENT_INFO Table: ROLLNO (Primary Key), NAME, AGE

STUDENT_MARKS Table: ROLLNO (Foreign Key), EXAM, MARKS, GRADE

(Composite Primary Key: (ROLLNO, EXAM))

Assignment 3
Question:

Observe the structure of a given EMPLOYEE table and suggest what kind of problem this table has and how to solve the problem  

EMPNO, PROJECT_NO, NO_OF_DAYS, CUSTOMERNAME  

In the above table EMPNO AND PROJECT_NO both are together a composite primary key.  

Answer:

Problem Identified: Partial Dependency (Violation of 2NF)

Reasoning:

The composite primary key is (EMPNO, PROJECT_NO). While NO_OF_DAYS depends on both attributes, CUSTOMERNAME depends only on PROJECT_NO (PROJECT_NO → CUSTOMERNAME). This partial dependency leads to insertion, update, and deletion anomalies.

Solution (Decomposition into 2NF/3NF):

Remove the partial dependency by splitting the table into two normalized relations:

EMPLOYEE_PROJECT Table: EMPNO, PROJECT_NO, NO_OF_DAYS

(Composite Primary Key: (EMPNO, PROJECT_NO))

PROJECT_CUSTOMER Table: PROJECT_NO (Primary Key), CUSTOMERNAME
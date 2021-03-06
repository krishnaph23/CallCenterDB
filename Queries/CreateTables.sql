DROP TABLE IF EXISTS CALL_LOG;
DROP TABLE IF EXISTS CALL;
DROP TABLE IF EXISTS CUSTOMER;
DROP TABLE IF EXISTS PROBLEM;
DROP TABLE IF EXISTS SOLUTION_DESK;
DROP TABLE IF EXISTS EMPLOYEE;
DROP TABLE IF EXISTS DEPARTMENT;

-- Creating the table with check constraint

CREATE TABLE DEPARTMENT (
	DEPT_ID INT NOT NULL PRIMARY KEY,
	DEPT_NAME VARCHAR(100) UNIQUE,
	NO_OF_EMP INT CHECK(NO_OF_EMP>=10)
);

CREATE TABLE EMPLOYEE (
	EMP_ID INT NOT NULL PRIMARY KEY,
	EMP_NAME VARCHAR(100) NOT NULL,
	DEPT_ID INT FOREIGN KEY REFERENCES DEPARTMENT(DEPT_ID) ON DELETE SET NULL,	-- Referential Integrity Constraint
	SALARY VARCHAR(20),
	CITY VARCHAR(100),
	STATE VARCHAR(100),
	ZIP INT
);

CREATE TABLE SOLUTION_DESK (
	SOLUTION_ID INT NOT NULL PRIMARY KEY,
	SPECIALIST_ID INT FOREIGN KEY REFERENCES EMPLOYEE(EMP_ID) ON DELETE CASCADE
);

CREATE TABLE PROBLEM (
	PROBLEM_ID INT NOT NULL PRIMARY KEY,
	SOLUTION_ID INT FOREIGN KEY REFERENCES SOLUTION_DESK(SOLUTION_ID) ON DELETE CASCADE, -- Referential Integrity Constraint
	PROBLEM_TYPE VARCHAR(100) NOT NULL UNIQUE
);

-- Creating the table with check constraint

CREATE TABLE CUSTOMER (
	CUST_ID INT NOT NULL PRIMARY KEY,
	NAME VARCHAR(100) NOT NULL,
	CITY VARCHAR(100),
	STATE VARCHAR(100),
	ZIP INT,
	EMAIL_ID VARCHAR(100) UNIQUE CHECK (EMAIL_ID LIKE '%_@____%.com')
);

CREATE TABLE CALL (
	CALL_ID INT IDENTITY(1990, 2) NOT NULL PRIMARY KEY,
	CUST_ID INT FOREIGN KEY REFERENCES CUSTOMER(CUST_ID) ON DELETE CASCADE, -- Referential Integrity Constraint
	OPERATOR VARCHAR(100) DEFAULT 'JIO',
	PH_NO VARCHAR(10) NOT NULL,
	PROBLEM_ID INT FOREIGN KEY REFERENCES PROBLEM(PROBLEM_ID) ON DELETE CASCADE -- Referential Integrity Constraint
);

CREATE TABLE CALL_LOG (
	CALLLOG_ID INT IDENTITY(14589, 1) NOT NULL PRIMARY KEY,
	DATE DATE,
	TIME TIME,
	[DURATION(m)] INT,
	CALL_ID INT FOREIGN KEY REFERENCES CALL(CALL_ID) ON DELETE CASCADE -- Referential Integrity Constraint
);
-- LOADING DEPARTMENT TABLE

INSERT INTO DEPARTMENT
VALUES ('1505', 'GENERAL', '112');

INSERT INTO DEPARTMENT
VALUES ('1510', 'SALES', '50');

INSERT INTO DEPARTMENT
VALUES ('1515', 'FINANCE', '20');

INSERT INTO DEPARTMENT
VALUES ('1520', 'MARKETING', '80');

INSERT INTO DEPARTMENT
VALUES ('1525', 'HUMAN RESOURCE', '112');

-- LOADING EMPLYOEE TABLE

INSERT INTO EMPLOYEE
VALUES ('2001', 'Krishna P Hegde', '1525', '1000000', 'Ballari', 'Karnataka', '583103');

INSERT INTO EMPLOYEE
VALUES ('2002', 'Sherock Holmes', '1510', '60425', 'Mumbai', 'Maharashtra', NULL);

INSERT INTO EMPLOYEE
VALUES ('2003', 'Rachel Green', '1510', '78900', 'Hyderabad', NULL, '621534');

INSERT INTO EMPLOYEE
VALUES ('2004', 'Chandler Bing', '1505', '50000', 'Bangalore', 'Karnataka', '560085');

INSERT INTO EMPLOYEE
VALUES ('2005', 'Sansa Stark', '1505', '25000', 'Bangalore', 'Karnataka', '553213');

INSERT INTO EMPLOYEE
VALUES ('2006', 'Walter White', '1510', '88780', NULL, 'Karnataka', '560085');

INSERT INTO EMPLOYEE
VALUES ('2007', 'Hermoine Granger', '1515', '65000', 'Pune', NULL, NULL);

INSERT INTO EMPLOYEE
VALUES ('2008', 'Emma Watson', '1520', '1500000', 'Chennai', NULL, '651168');

INSERT INTO EMPLOYEE
VALUES ('2009', 'Chris Hemsworth', '1515', '200000', NULL, NULL, NULL);

INSERT INTO EMPLOYEE
VALUES ('2010', 'Krishna P Hegde', '1525', '86005600', 'Ballari', 'Karnataka', NULL);

INSERT INTO EMPLOYEE
VALUES ('2011', 'Liza Koshy', '1505', '658500', 'Houston', 'Texas', '77001');

INSERT INTO EMPLOYEE
VALUES ('2012', 'Jennifer Aniston', '1510', '40000', 'Los Angeles', 'California', '90042');

INSERT INTO EMPLOYEE
VALUES ('2013', 'Deepika Padukone', '1525', '90000', 'Mumbai', 'Maharashtra', NULL);

INSERT INTO EMPLOYEE
VALUES ('2014', 'John Smith', '1520', '86985', NULL, 'Delhi', NULL);

INSERT INTO EMPLOYEE
VALUES ('2015', 'Billie Eilish', '1520', '20000', NULL, 'California', NULL);

-- LOADING SOLUTION_DESK

INSERT INTO SOLUTION_DESK
VALUES ('11111', '2005');

INSERT INTO SOLUTION_DESK
VALUES ('22222', '2012');

INSERT INTO SOLUTION_DESK
VALUES ('33333', '2003');

INSERT INTO SOLUTION_DESK
VALUES ('44444', '2012');

INSERT INTO SOLUTION_DESK
VALUES ('55555', '2014');

-- LOADING PROBLEM TABLE

INSERT INTO PROBLEM
VALUES ('987', '44444', 'Navigating');

INSERT INTO PROBLEM
VALUES ('654', '55555', 'Queuing');

INSERT INTO PROBLEM
VALUES ('321', '22222', 'Technical Support');

INSERT INTO PROBLEM
VALUES ('123', '22222', 'General Service');

INSERT INTO PROBLEM
VALUES ('456', '11111', 'Appointment Scheduling');

INSERT INTO PROBLEM
VALUES ('789', '33333', 'Order Tracking');

-- LOADING CUSTOMER TABLE

INSERT INTO CUSTOMER
VALUES ('31009', 'Amar Kaushik', 'Bangalore', 'Karnataka', '560085', 'amar98@gmail.com');

INSERT INTO CUSTOMER
VALUES ('31008', 'Sumona Quereshi', 'Mumbai', 'Maharashtra', NULL, 'sumlive@hotmail.com');

INSERT INTO CUSTOMER
VALUES ('31007', 'Hema Govind', 'Ballari', 'Karnataka', '583103', 'govind.hema@yahoo.com');

INSERT INTO CUSTOMER
VALUES ('31006', 'Rahul Khanna', 'Hyderabad', NULL, '621534', 'rahulkh89@gmail.com');

INSERT INTO CUSTOMER
VALUES ('31005', 'Sunil Karnam', 'Pune', NULL, NULL, 'sunil@gmail.com');

INSERT INTO CUSTOMER
VALUES ('31004', 'Ram Bharadwaj', 'Houston', 'Texas', '77001', 'rambharadwaj@yahoo.com');

INSERT INTO CUSTOMER
VALUES ('31003', 'Rita Martin', 'Los Angeles', 'California', '90042', 'rita001@hotmail.com');

-- LOADING CALL

INSERT INTO CALL (CUST_ID, PH_NO, PROBLEM_ID)
VALUES ('31003', '9481672031', '123');

INSERT INTO CALL (CUST_ID, OPERATOR, PH_NO, PROBLEM_ID)
VALUES ('31007', 'AIRTEL', '9465511565', '456');

INSERT INTO CALL (CUST_ID, OPERATOR, PH_NO, PROBLEM_ID)
VALUES ('31005', 'VODAFONE', '9462245235', '987');

INSERT INTO CALL (CUST_ID, OPERATOR, PH_NO, PROBLEM_ID)
VALUES ('31008', 'BSNL', '8752366510', '654');

INSERT INTO CALL (CUST_ID, OPERATOR, PH_NO, PROBLEM_ID)
VALUES ('31009', 'AIRTEL', '9448148231', '987');

INSERT INTO CALL (CUST_ID, OPERATOR, PH_NO, PROBLEM_ID)
VALUES ('31009', 'AIRTEL', '9448148231', '789');

INSERT INTO CALL (CUST_ID, OPERATOR, PH_NO, PROBLEM_ID)
VALUES ('31006', 'BSNL', '9164620299', '321');

INSERT INTO CALL (CUST_ID, OPERATOR, PH_NO, PROBLEM_ID)
VALUES ('31004', 'VODAFONE', '8277611375', '456');

INSERT INTO CALL (CUST_ID, OPERATOR, PH_NO, PROBLEM_ID)
VALUES ('31006', 'BSNL', '9164620299', '789');

INSERT INTO CALL (CUST_ID, PH_NO, PROBLEM_ID)
VALUES ('31003', '9481672031', '123');

-- LOADING CALL_LOG TABLE

UPDATE TOP (1) CALL_LOG 
SET DATE = '2020-01-09', TIME = '09:10:00', [DURATION(m)] = '12'
WHERE CALL_LOG.DATE IS NULL;

UPDATE TOP (1) CALL_LOG 
SET DATE = '2020-01-24', TIME = '01:50:00', [DURATION(m)] = '26'
WHERE CALL_LOG.DATE IS NULL;

UPDATE TOP (1) CALL_LOG 
SET DATE = '2020-02-23', TIME = '08:30:00', [DURATION(m)] = '15'
WHERE CALL_LOG.DATE IS NULL;

UPDATE TOP (1) CALL_LOG 
SET DATE = '2020-02-26', TIME = '11:02:00', [DURATION(m)] = '8'
WHERE CALL_LOG.DATE IS NULL;

UPDATE TOP (1) CALL_LOG 
SET DATE = '2020-03-16', TIME = '07:20:00', [DURATION(m)] = '17'
WHERE CALL_LOG.DATE IS NULL;

UPDATE TOP (1) CALL_LOG 
SET DATE = '2020-03-27', TIME = '09:18:00', [DURATION(m)] = '32'
WHERE CALL_LOG.DATE IS NULL;

UPDATE TOP (1) CALL_LOG 
SET DATE = '2020-04-01', TIME = '02:54:00', [DURATION(m)] = '9'
WHERE CALL_LOG.DATE IS NULL;

UPDATE TOP (1) CALL_LOG 
SET DATE = '2020-04-19', TIME = '10:12:00', [DURATION(m)] = '4'
WHERE CALL_LOG.DATE IS NULL;

UPDATE TOP (1) CALL_LOG 
SET DATE = '2020-05-12', TIME = '03:15:00', [DURATION(m)] = '8'
WHERE CALL_LOG.DATE IS NULL;

UPDATE TOP (1) CALL_LOG 
SET DATE = '2020-05-28', TIME = '07:50:00', [DURATION(m)] = '1'
WHERE CALL_LOG.DATE IS NULL;

/*
SELECT * FROM DEPARTMENT;
SELECT * FROM EMPLOYEE;
SELECT * FROM SOLUTION_DESK;
SELECT * FROM PROBLEM;
SELECT * FROM CUSTOMER;
SELECT * FROM CALL;
SELECT * FROM CALL_LOG;

DELETE FROM DEPARTMENT;
DELETE FROM EMPLOYEE;
DELETE FROM SOLUTION_DESK;
DELETE FROM PROBLEM;
DELETE FROM CUSTOMER;
DELETE FROM CALL;
DELETE FROM CALL_LOG;

*/
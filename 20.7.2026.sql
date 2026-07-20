-- To create/DROP/alter new database
Create database july2026

use JULY2026

dROp database july2026

Alter database newjuly2026 
modify name = July2026
-- To display all database name from a Server
select name
from sys.databases

-- Different SQL languages
--1. DDL (Data definition language)
-- Create, alter, drop, truncate

--2. DML (Data Manipulation language)
-- Insert, update, delete

--3. DQL (Data Query language)
-- Select

-- 4. TCL (Transaction control language)
-- Commit, rollback, savepoint

Select 4+4 as addition

Select 'Suresh' + ' ' + 'Patel'

-- To create a New Table

Create table <nameTable>
( Colname1 <datatype>,
colname2 <datatype>,
colname3 <datatype>
)

Create table employee
( EID INT,
Ename Varchar (20),
Eage INT,
ESalary Money)

Select * from employee

-- Insert method 1
Insert into employee values
(101,'Suresh',20,20000)

-- Insert method 2
Insert into employee (EID,Ename,Eage) values
(102,'Jayesh',22)

-- Insert method 3
Insert into employee values
(103,'Mahesh',21,20000),
(104,'Naresh',24,22000),
(105,'Kamesh',25,23000)

Insert employee (EID,Ename,Esalary) values
(106,'Ramesh',26000)

Insert into employee (Ename,EID,Eage,ESalary) values
('Raj',107,35,26000)
Select * from employee
Select EID,Ename,ESalary from employee

-- Update method 1
Update <tablename>
Set Colname = <newvalue>
where <colname> 

update employee
Set ESalary = 30000
Where EID = 101

-- Update method 2
update employee
Set Eage = 18
Where EAge is NOT NULL

Insert into employee (EId,Ename) values
(108,'Mukesh')

-- Upadate method 3
update employee
SET ESalary = 25000

-- Delete method 1
Delete from employee
Where Ename = 'Jayesh'

-- Delete method 2
Delete from employee
where Eage is NULL

-- Delete method 3
Delete from employee

-- Delete, Drop, Truncate
Delete from employee
Drop table employee
Truncate table employee

Select * from newemployee

-- rename table name
--sp_rename 'oldtablename', 'newtablename'
sp_rename 'employee', 'newemployee'

--sp_rename 'tablename.col', 'newcolname'
sp_rename 'newemployee.Ename', 'EFullName'

select name
from sys.tables

Select GETDATE()

select SYSTEM_USER
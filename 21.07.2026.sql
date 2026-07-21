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
Insert inTo employee Values
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

Select * from newemployee

drop table newemployee

create table employee
(EID INT,
Ename Varchar(255),
Eage INT,
Esalary money,
DOJ date)

Select * from employee
insert into employee values
(102,'Mahesh',21,21000,'2011-02-19'),
(103,'Naresh',22,22000,'2012-03-19'),
(104,'Ramesh',23,23000,'2013-04-19'),
(105,'Jayesh',24,24000,'2014-05-19')

--Logical operator (Between, AND, OR, IN)

select * from employee
where Esalary between 21000 AND 24000

Select * from employee
Where (Eage = 21 AND Esalary = 21000) OR  DOJ > '2013-01-01'

Select * from employee
Where Eage = 21 OR (Esalary = 21000 AND  DOJ > '2013-01-01')

Select * from employee
Where Eage = 21 OR Esalary = 21000

Select * from employee
where Eage IN (21,22)

update employee
Set Esalary = 30000
where Eage IN (21,22)

update employee
Set Esalary = 40000
where Eage = 21 AND DOJ > '2010-01-01'

Select * from employee

-- Comparison operators >,>=,<=,=, <>, !=
-- Fetch all employees whose salary is greathan than 25000

select * from employee
where Esalary > 30000 AND Esalary < 40000

Select * from employee
where Esalary <> 30000

-- Like operator (look for the matching string)

Select * from employee
where ename like 's%'


Select * from employee
where ename like '%h'

Select * from employee
where ename like '%@gmail.com'

-- Arithemtic operator *,/,+,-

Select top 2 percent * from employee

Select EID, Ename,Esalary as OldSalary, (Esalary *1.10) as NewSalary 
from employee

Select PID, Pname, (Price * Quantity) as TotalValue from Product

-- Autoincrement - Increment (INT)

create table emp
(EID INT Identity ,
Ename Varchar(20),
Department varchar(20))

insert into emp values 
('Ramesh','Data Analytics')
select * from emp

SET Identity_insert emp ON

select * from employee

Alter table employee
Add EmailID varchar(20)

Alter table employee
alter column EmailID varchar(30)

Alter table employee
drop column EmailID

sp_help employee

-- Aggregate function: Count(Int+varchar),Max (Int+varchar),Min (Int+varchar),Sum (INT),Avg(INT)
select Max(Ename) from employee
select Min(Ename) from employee
select Avg(Ename) from employee

select Count(Ename) from employee

select SUM(Ename) from employee

select Max(Esalary) as Highest,
Min(Esalary) as Lowest,
Avg(Esalary) as Average,
Sum(Esalary) as TotalSalary
from employee
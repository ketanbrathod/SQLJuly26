-- To create/DROP/alter new database
Create database july2026

use JULY2026

drop database july2026

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
Eage INT ,
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
Where Eage = 21 AND Esalary = 21000 OR  DOJ > '2013-01-01'

Select * from employee
Where Eage = 21 OR (Esalary = 21000 AND  DOJ > '2013-01-01')

Select * from employee
Where Esalary = 21000 OR Eage = 21

Select * from employee
Where Eage = 21 

Select * from employee
where EID IN (1,2,5,8)

update employee
Set Esalary = 30000 AND DEPARTMENT = 'IT'
where EID IN (1,4)


update employee
Set Esalary = 40000
where Eage = 21 AND DOJ > '2010-01-01'

UPDATE 
SET 
WHERE

Delete
from 
where 
Select * from employee

-- Comparison operators >,>=,<=,=, <>, !=
-- Fetch all employees whose salary is greathan than 25000

select * from employee
where Esalary >= 30000 AND Esalary <= 40000

Select * from employee
where Esalary <> 30000

-- Like operator (look for the matching string)

Select * from employee
where ename like 's%'


Select * from employee
where ename like 'h%'

Select * from employee
where ename like '%@gmail.com'

-- Arithemtic operator *,/,+,-

Select top 2 percent * from employee

Select EID, Ename,Esalary as OldSalary, (Esalary *1.10) as NewSalary 
from employee

Select PID, Pname, (Price * Quantity) as Total Value from Product

-- Autoincrement - Increment (INT)

create table emp
(EID INT Identity,
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

Select * from EMP

alter table emp
add Esalary money


insert into emp values
('Kamesh','AI'),
('Naresh','Cloud')

-- Fetch all department max salary, but it should be greter than 20000 

select top 3 esalary 
from emp

--group by Department
--having Max(Esalary) > 20000
Order by Esalary DESC

Select * from emp

select Department, Max(ESalary)
from emp
Where city = ''
group by Department

Select Pname,city, SUM(Price*Quantity)
from product
group by city
having SUM(Price*Quantity) >100000

Select department,SUM(Esalary) as TotalEmployee
from emp
group by Department


-- Constraints
-- NOT Null (Ensure the values is always present, but it allows duplicate)
--Unique (Ensure the values are unique, but allows NULL)
--Check (to check specific condition)
-- default (by deafult) 
-- PK (Unique + Not NUll) 
-- FK (referential data interity, establih relationship between two tables)

create table emp1
(EID INT,
Ename Varchar(20),
City varchar(20) Default 'Vadodara')

drop table emp1
insert into emp1(EID,Ename) values
(2,'Jayesh')

update emp1
set Eage = 17
Where EID = 3
Select * from emp1


-- Assginment
1. Find out how many employees are in each department.
-- Display department with employees greathan than 10
Select Department, count(EID)
from Employee
group by Department
having count(EID) > 10
ORder by Count(EID) DESC

2. Calculate the average salary for employees in each department.

Select department, AVG(Esalary)
from employee
group by department

3. Find the total quantity sold for each distinct product.
-- Product (PID,Productname, price, quantity, city, region)
Select Distinct productname, count(Quantity)
from product
group by productname

4. Maximum Price of a Product in Each Region
Select Region,Productname, MAX(Price)
from Product
group by Region

5. Minimum and Maximum Salary per Department
Select Department,Min(Esalary), Max(Esalary)
from employee
group by Department

6. Total Sales Value per Region
-- Product (PID,Productname, price, quantity, city, region)
Select region, SUM(Price*Quantity) as Totalsales
from product
group by region
having SUM(Price*Quantity) > 100000
Order by 2 DESC


7. Find the departments with an average salary greater than 20,000. 

Select department,AVG(Esalary)
From employee
group by department
having AVG(Esalary) > 20000

8. List the cities where the average employee age is greater than 20. 
Select cities, AVG(Eage)
from emp
group by cities
having AVG(Eage) >20

9. Find the departments with more than 5 employees. 
Select department, count(EID)
from emp
group by department
having count(EID) > 5

10. List the cities where the total salary of all employees exceeds 30,000. 
Select cities, SUM(Esalary)
from emp
group by cities
having SUM(Esalary) > 30000

11. Find the departments where the average age of employees is between 20 and 25.
Select department, AVG(Eage)
from emp
group by department
having AVG(Eage) between 20 AND 25

Select department, AVG(Eage)
from emp
Where AVG(Eage) between 20 AND 25
group by Department

Select 
from
order by department, Ename DESC

alter table emp
add Eage INT

Alter table emp
add constraint Checking_age CHECK (Eage > 18)

Alter table emp1
drop constraint CK__emp1__Eage__32E0915F

create table emp1
( EID INT,
Ename varchar(20),
Eage INT Check (Eage>18)
)


Alter table emp
alter column EID INT Unique

-- Primary key
drop table emp
ALter table emp
drop constraint  

Create table emp
(EID INT Primary key,
Ename varchar(20))

Insert into emp values
(4,'Suresh'),
(1,'Mahesh'),
(5,'Ramesh'),
(2,'Mukesh')
select * from emp

Insert into emp (EID, Ename,Eage, Department) values
(1,'Jayesh',21,'QA')
select * from emp
drop table emp

create table dept
(DID INT PRIMARY KEY,
Dname varchar(20))

INSERT INTO DEPT VALUES
(101,'IT'),
(102,'AI'),
(103,'QA')

Create table emp
(EID INT,
Ename varchar(20),
DID INT FOREIGN KEY REFERENCES DEPT (DID)
ON delete cascade ON update cascade)

INSERT INTO EMP VALUES
(1,'Jayesh',101),
(2,'Suresh',102)

select * from emp

delete from dept
where DID = 101

Update Dept
set DID =105
Where Dname = 'AI'

select * from dept

-- PF & FK for Emp-Salary, Train-booking, Customer-Orders
ALter table EMP
ALter column EMP INT UNIQUE, NOT NULL

Alter table EMP
Add constraint PK_EID PRIMARY KEY EMP (EID)

Alter table Dept
Add constraint FK_DID Foreign key DID 
references EMP (EID)

-- Student records
Create table Student_records
(SID INT,
Sname Varchar(20),
SubjectName varchar(20),
Grade CHAR(1)
Primary key (SID,SubjectName))

Insert into Student_records values
(2,'Ramesh','SQL101','B')
Select * from Student_records
Select * from Student_assignment
Create table Student_assignment
(AssignmentID INT,
AssignmentDate Date,
Status varchar(20) default 'In-progress',
SID INT,
SubjectName varchar(20),
Foreign key (SID,SubjectName)
references Student_records (SID,SubjectName))

Insert into Student_assignment values
(202,'2026-07-20','Completed',2,'SQL101')

--SET Operators (Union, Union All, Intersect, Except)
-- Number of columns must be same
-- Order of the column
-- Datatype must be same

-- Banking system, differenct accounts
create table customer_saving
(CustomerID INT,
CustomerName varchar(20),
CAddress varchar(20))
Insert into customer_saving values
(101,'Suresh','Atladra'),
(102,'Ramesh','Akota'),
(103,'Mahesh','Manjalpur')

create table customer_loan
(CustomerID INT,
CustomerName varchar(20),
CAddress varchar(20))

Insert into customer_loan values
(101,'Suresh','Atladra'),
(102,'Jayesh','Padra'),
(103,'Mahesh','Manjalpur'),
(104,'Naresh','Gotri')

-- To send Diwali greetings to all customers
-- UNION - (remove duplicates)

Select CustomerID, CustomerName from customer_saving
UNION
Select CustomerID, CustomerName from customer_loan

-- To see how many accounts are open
-- Union ALL (includes duplicates)

Select CustomerID, CustomerName from customer_saving
UNION ALL
Select CustomerID, CustomerName from customer_loan

-- Premium customer
-- Intersect (common records)

Select CustomerID, CustomerName from customer_saving
Intersect
Select CustomerID, CustomerName from customer_loan

-- To check how many customer is having saving account but not loan account

Select CustomerID, CustomerName from customer_saving
Except
Select CustomerID, CustomerName from customer_loan

Create table Bank_SBI
(CustomerID INT, 
CName varchar(20))
Insert into Bank_SBI values
(101,'Suresh')

Create table Bank_HDFC
(CustomerID INT, 
CName varchar(20),
location varchar(20))
Insert into Bank_HDFC values
(101,'Suresh','Akota')

Select * from Bank_SBI
Union
Select * from Bank_HDFC

-- JOINS, 2 broad categories
-- To fetch data from more than one tables
-- Pre-requisite - It MUST have atleast ONE Common or Matching column with same data type
-- Column name & data size can be different
-- ANSI - lastest join tech. in SQL
-- Keyword 'ON'
-- Inner, Left, Right,Left Exl., Right Exl., Full join, Self join
-- Non-ANSI - traditional joins
-- Keyword - 'Where'
-- Equi join - =
-- Non equi join - >,>=,<,<=,<>, !=


Select * 
From A
FULL outer join B
ON  A.EID = B.EID
where A.EID IS NULL OR
B.EID IS NULL

-- Inner join - Intersecting value
-- Left join - Inner + left
-- Left Exl. - Left
-- Right join - Inner + right
-- Right Exl. - Right
-- Full join - Inner + left + right
-- Full Exl - Left + Right

Create table Student
(SID INT,
Sname Varchar(20),
City varchar(20),
CID INT)
Insert into student values
(1, 'Suresh','Vadodara',101),
(2,'Mahesh','Anand',102),
(3,'Ramesh','Bharuch',103),
(4,'Jayesh','Vadodara',104)

Create table Course
(CID INT,
Cname varchar(20),
Cfee Decimal(6,2))
Insert into course values
(101,'AI Engineering',9999),
(102,'Full Stack Eng',8999),
(103,'Cloud Engineering',9999),
(105,'QA',7999),
(106,'Data Analytics',7999)

Select S.SID,S.CID,S.Sname,C.Cname
from Student S 
Inner Join Course C
ON S.CID = C.CID

Select *
from Student
Right JOIN Course
ON Student.CID = Course.CID

Select *
from Student 
Left Join Course
ON Student.CID = Course.CID
where Course.CID IS NULL

Select *
from Student 
Full Join Course
ON Student.CID = Course.CID

Select * from Student
Select * from course

-- Customer (CID,Cname,location)
-- Orders (OrderID, CID, ProductName,Price)

-- 1. Fetch employee with their department name.
-- 2. Display All employee will their department name.
-- 3. Fetch employee with their Manager name.
-- 4. Fetch employee name, department name & manager name.
-- 5. Display employee name, department name, manager name & Project name
-- 6. Fetch employee name and Project name they are working on
-- 7. Fetch employee who is NOT working on any Project
-- 8. Fetch employee who is working on more than 2 Projects
-- 9. Fetch employee who is working on Cloud migration Project
-- 10. Display employee working on Cloud & Data migration both
-- 11. Fetch All employee working in AI department
-- 12. Fetch all employee working under manager Alice

-- Self join (Joining a table with itself)
drop table emp

create table emp
(EID INT,
Ename varchar(20),
Designation varchar(20),
MID INT)
Insert into emp values
(102,'Mahesh', 'IT Manager',101),
(103,'Ramesh','Team lead',102),
(104,'Jayesh','Software Developer',103)

select * from emp

Select e1.eid,e1.ename,e1.Designation, e2.ename as manager
From emp e1
Left Join emp e2
ON e1.MID = e2.EID
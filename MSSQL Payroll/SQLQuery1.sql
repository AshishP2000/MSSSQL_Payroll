--UC1-Create Database
create database Payroll_Service;
--UC2-Create Table
create table EmployeePayroll(ID int identity(1,1) Primary key,Empname varchar(200),Salary bigint,Startdate date);
--UC-3-Insert record
insert into EmployeePayroll(Empname,Salary,Startdate) values('Rock',25000,'2022-3-4');
insert into EmployeePayroll(Empname,Salary,Startdate) values('Nami',40000,'2022-03-02');
--UC4-Retrive all data
select * from EmployeePayroll;
--UC5-Retrive particular data
select * from EmployeePayroll where Startdate between cast ('2020-01-01' as date) and Getdate();
--UC-6-Update and Add Gender
alter table EmployeePayroll add Gender char(1) ;
update EmployeePayroll set Gender='M' where Empname='Rock';
update EmployeePayroll set Gender='F' where Empname='Nami';
--UC7-
select Sum(Salary) as Total_sum from EmployeePayroll where Gender='M' group by Gender;
select Avg(Salary) as Avg_Salary from EmployeePayroll where Gender='M' group by Gender;
select min(Salary) as Min_Salary from EmployeePayroll where Gender='M' group by Gender;
select max(Salary) as Max_Salary from EmployeePayroll where Gender='M' group by Gender;
select count(*) as Total_Record from EmployeePayroll where Gender='M' group by Gender;
select count(*) as Total_Record from EmployeePayroll where Gender='F' group by Gender;

--UC8-
alter table Employeepayroll add PhoneNumber bigint,Address varchar(200),Department Varchar(100);

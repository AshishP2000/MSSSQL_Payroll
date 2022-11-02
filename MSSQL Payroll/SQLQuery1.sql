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

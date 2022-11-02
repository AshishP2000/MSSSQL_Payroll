--UC1-Create Database
create database Payroll_Service;
--UC2-Create Table
create table EmployeePayroll(ID int identity(1,1) Primary key,Empname varchar(200),Salary bigint,Startdate date);


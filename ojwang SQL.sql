create database ojwang;
use ojwang;
create table employee(
employeeid int primary key,
firstname varchar(50),
lastname varchar(50),
department int,
hiredat date
);
create table project(
projectid int primary key,
projectname varchar(50),
startdate date
);
create table assignment(
assignmentid int primary key,
employeeid int,
role varchar(50),
foreign key(employeeid)references employee(employeeid),
foreign key(projectid)references project(projectid)
);

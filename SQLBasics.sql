show databases;
use edureka;

/* CREATE query */
create table emp(
id int not null auto_increment,
ename varchar(20),
lname varchar(20),
address varchar(30),
city varchar(20),
phoneno int,
primary key(id));

show tables;

/* INSERT query */
insert into emp values(101, 'Omkar', 'Korade', 'Kailash Lok Dhara', 'Kalyan', 70396686);
insert into emp values(102, 'Hrishi', 'Patil', 'Sarovar Darshan TMC Office', 'Thane', 70392198);
insert into emp values(103, 'Surabhi', 'Tambe', 'Shubhkamana CHS', 'Nahur', 92396686);
insert into emp values(104, 'Dhananjay', 'Pai', 'Rambaug', 'Kalyan', 78396686);
insert into emp values(105, 'Govind', 'Tiwari', 'Mulund check naka', 'Mulund', 75396686);
insert into emp(id, ename, lname, address, city) values(106, 'Janhavi', 'Khanvilkar', 'Raj Legacy', 'Vikhroli');

/* SELECT query */
select * from emp;

/* WHERE, AND, OR, NOT clauses */
select * from emp where city = 'Kalyan';
select id, ename, lname, address, city from emp;
select * from emp where ename = "Omkar" and lname = "Korade";
select * from emp where ename = "Govind" or city = "Kalyan";
select * from emp where not city = "Kalyan";

select * from emp;

create table employee(
eid int not null auto_increment,
Ename varchar(20),
Company varchar(20),
City varchar(20),
Position varchar(20),
Salary int,
primary key(eid)
);

/* ALTER query */
alter table employee rename column Salary to SalaryinCTC; 

insert into employee values(1, 'Janhavi', 'Capgemini', 'Pune', 'Analyst', '425000');
insert into employee values(2, 'Hrishikesh', 'Nomura', 'Powai', 'Java Developer', '1250000');
insert into employee values(3, 'Dhananjay', 'Nomura', 'Powai', 'Python Developer', '1250000');
insert into employee values(4, 'Govind', 'Deloitte USI', 'Powai', 'Analyst', '775000');
insert into employee values(5, 'Vallari', 'Capgemini', 'Pune', 'Software Engineer', '425000');

/* Aggregate functions
1. Count
2. Sum
3. Average
4. Minimum
5. Maximum */
select count(eid) from employee;
select avg(SalaryinCTC) from employee;
select sum(SalaryinCTC) from employee;
select Ename, Company, SalaryinCTC from employee where SalaryinCTC = (SELECT min(SalaryinCTC) from employee);
select Ename, Company, SalaryinCTC from employee where SalaryinCTC = (SELECT max(SalaryinCTC) from employee);

/* GROUP BY clause */
select count(eid), City from employee group by City;

/* GROUP BY and HAVING clause */
select eid, Ename, Company, SalaryinCTC from employee group by eid having SalaryinCTC>1000000;

/* ORDER BY clasuse */
select Ename, SalaryinCTC from employee group by eid order by SalaryinCTC desc;



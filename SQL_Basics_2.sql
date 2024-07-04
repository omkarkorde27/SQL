create table employee(
eid int not null auto_increment,
Ename varchar(20),
Company varchar(20),
City varchar(20),
Position varchar(20),
Salary int,
primary key(eid)
);

insert into employee values(1, 'Janhavi', 'Capgemini', 'Pune', 'Analyst', '425000');
insert into employee values(2, 'Hrishikesh', 'Nomura', 'Powai', 'Java Developer', '1250000');
insert into employee values(3, 'Dhananjay', 'Nomura', 'Powai', 'Python Developer', '1250000');
insert into employee values(4, 'Govind', 'Deloitte USI', 'Powai', 'Analyst', '775000');
insert into employee values(5, 'Vallari', 'Capgemini', 'Pune', 'Software Engineer', '425000');

/* UPDATE query */
update employee set Ename = 'Priyanka', Company = 'APL Logistics', City = 'Scottsdale', SalaryinCTC = 4500000 where eid = 5;
update employee set Position = 'CRM Data Analyst' where eid = 5;
select * from employee;

/* DELETE query */
delete from employee where eid = 1;
select * from employee;

/* WHERE, AND, OR, NOT clauses */
select * from emp where city = 'Kalyan';
select id, ename, lname, address, city from emp;
select * from emp where ename = "Omkar" and lname = "Korade";
select * from emp where ename = "Govind" or city = "Kalyan";
select * from emp where not city = "Kalyan";

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
select eid, Ename from employee group by eid order by Ename;

/* NULL values */
select ename, lname from emp where phoneno is null;
select ename, lname from emp where phoneno is not null;

/* IN, BETWEEN operator */
select Ename from employee where City in ('Powai');
select Ename, Company from employee where SalaryinCTC between 1000000 and 1500000;

/* ALIASES */

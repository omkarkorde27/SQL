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

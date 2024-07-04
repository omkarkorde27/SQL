show databases;
use edureka;

/* DDL commands 
1. CREATE
2. ALTER
3. DROP */

create table emp(
id int not null auto_increment,
ename varchar(20),
lname varchar(20),
address varchar(30),
city varchar(20),
phoneno int,
primary key(id));

/* 2. ALTER query */
alter table employee rename column Salary to SalaryinCTC; 
alter table employee add Age int;
alter table employee drop column Age;
alter table employee modify column eid int not null;

/* 3. DROP query */
drop table emp;

show tables;

/* INSERT query */
insert into emp values(101, 'Omkar', 'Korade', 'Kailash Lok Dhara', 'Kalyan', 70396686);
insert into emp values(102, 'Hrishi', 'Patil', 'Sarovar Darshan TMC Office', 'Thane', 70392198);
insert into emp values(103, 'Surabhi', 'Tambe', 'Shubhkamana CHS', 'Nahur', 92396686);
insert into emp values(104, 'Dhananjay', 'Pai', 'Rambaug', 'Kalyan', 78396686);
insert into emp values(105, 'Govind', 'Tiwari', 'Mulund check naka', 'Mulund', 75396686);
insert into emp(first_name, last_name) values('Janhavi', 'Khanvilkar');

/* SELECT query */
select * from emp;

/* Various constraints 
1. NOT NULL
2. UNIQUE
3. PRIMARY KEY
4. FOREIGN KEY
5. CHECK */
/* alternative way to make a column as primary key */
create table emp(
emp_id int,
first_name varchar(255),
last_name varchar(255),
constraint emp_pk primary key (emp_id)
);

/* Advantage of creating the primary key using the alternative way is that you can have more than one columns in one primary key 
whereas you cannot do it in the 1st method. */
create table emp1(
emp_id int,
first_name varchar(255),
last_name varchar(255),
constraint emp_pk primary key (first_name, last_name)
);

insert into emp1(first_name, last_name) values('Janhavi', 'Khanvilkar');

create table emp2(
emp_id int not null,
first_name varchar(255) not null,
last_name varchar(255)
);
/* Adding constraint after creating the table */
alter table emp2 add constraint emp_key primary key (emp_id);

create table product(
prod_id int primary key,
product_name varchar(255),
category varchar(255)
);

alter table product modify column product_name varchar(255) not null;

create table orders(
order_id int primary key,
prod_id int not null,
quantity int not null,
constraint fk_prod_id foreign key (prod_id) references product (prod_id)
); 

/* creating foreign key after the creation of the tables */
create table product1(
prod_id int primary key,
product_name varchar(255),
category varchar(255)
);
create table orders1(
order_id int primary key,
prod_id int not null,
quantity int not null
); 

/* Adding constraint to existing table */
alter table orders1 add constraint fk_prod_id1 foreign key (prod_id) references product1 (prod_id);

/* if you try to delete the data from the parent table which is referenced by the child table it will throw you an error 
hence, to avoid this error use ON delete cascade which deletes the data from both the tables
so, it is a good practice to add ON DELETE CASCADE while creating the foreign key */
create table product2(
prod_id int primary key,
product_name varchar(255),
category varchar(255)
);
create table orders2(
order_id int primary key,
prod_id int not null,
quantity int not null,
constraint fk_prod_id2 foreign key (prod_id) references product (prod_id) on delete cascade
);
/* Drop constraint of an existing table */
alter table orders2 drop constraint fk_prod_id2;














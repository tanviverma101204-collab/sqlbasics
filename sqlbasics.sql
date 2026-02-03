-- Q1 Create a new database named company_db and Create a table named employees with the following 
create database company_db;
use company_db;
create table employees(
employee_id int primary key ,
first_name varchar(50),
last_name VARCHAR(50),
department VARCHAR(50),
salary INT,
hire_date DATE);
-- Q2 Insert the following sample records into the table.

insert into employees(employee_id,first_name,last_name,department,salary,hire_date)
values 
(101,'Amit','Sharma','HR',50000,'2020-01-15'),
(102,'Riya','Kapoor','Sales',75000,'2019-03-22'),
(103,'Raj','Mehta','IT',90000,'2018-07-11'),
(104,'Neha','Verma','IT','85000','2021-09-01'),
(105,'Arjun','Singh','Finance','60000','2022-02-10');
SELECT *FROM employees;
-- Q3 Display All Employee Records Sorted by Salary (Lowest to Highest)
SELECT * from employees order by salary ;
-- Q4 Show Employees Sorted by Department (A–Z) and Salary (High → Low)
select * from employees order by department asc, salary desc;
-- Q5. List All Employees in the IT Department, Ordered by Hire Date (Newest First)
select * from employees order by hire_date desc;
-- Q6. Create and Populate a Sales Table
create table sales (
sale_id int,
customer_name varchar(50),
amount int,
sale_date date);
insert into sales (sale_id,customer_name,amount,sale_date)
values 
(1,'Aditi',1500,'2024-08-01'),
(2,'Rohan',2200,'2024-08-03'),
(3,'Aditi',3500,'2024-09-05'),
(4,'Meena',2700,'2024-09-15'),
(5,'Rohan',4500,'2024-09-25');
select * from sales ;
-- Q7. Display All Sales Records Sorted by Amount (Highest → Lowest)
select * from sales order by amount desc;
-- Q8. Show All Sales Made by Customer “Aditi”
select * from sales where customer_name = 'Aditi'
-- Q9. What is the Difference Between a Primary Key and a Foreign Key?
-- primary key : uniquely identifies each record in a table , cannot have duplicate values, cannot be null, ensures entity integrity,only one primary key per table 
-- secondary key : refers to the the primary, can have duplicate values, can be null , ensures referential integrity, multiple foreign keys allowed.
-- Q10. What Are Constraints in SQL and Why Are They Used?
-- Constraints in SQL are rules applied to table columns to restrict the type of data that can be stored in a table. They help maintain data accuracy, consistency, and integrity in the database.

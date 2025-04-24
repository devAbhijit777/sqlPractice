--
--1.  selcting rows ,
--2.  subset of rows, 
--3.  columns ,
--4.  subset of columns
--5.  Giving meaningful names to columns
--6.  Referencing an Aliased Column in the WHERE Clause
--7. Concatenating column values
--select * from employees
select emp_name + ' has salary of ' + salary as details from employees
-- concat(emp_name , ' has salary of ' , salary) as details from employees


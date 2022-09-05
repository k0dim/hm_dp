create schema emp;

create table emp.Department (
	id_dep serial primary key,
	name_dep varchar(100) not null
);

create table emp.Employees (
	id_emp serial primary key,
	name_emp varchar(100) not null,
	patronymic_emp varchar(100) not null,
	surname_emp varchar(100) not null
);

create table emp.Employee_info (
	id_emp_info serial primary key,
	id_emp int REFERENCES emp.Employees(id_emp),
	id_dep int REFERENCES emp.Department(id_dep),
	id_boss int REFERENCES emp.Employees(id_emp)
);


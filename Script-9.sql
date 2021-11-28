-- ������� ������� employees: id. serial,  primary key, employee_name. Varchar(50), not null
create table employees(
	id serial primary key,
	employee_name varchar (50) not null
)
-- ��������� ������� employee 70 ��������.
insert into employees (employee_name)
values ('Michael Chapman'),
('Jennifer Moody'),
('Tony Watkins'),
('Carole Bowers'),
('John Clark'),
('Georgia Brown'),
('Dorothy Martinez'),
('Misty Parks'),
('Anita Garcia'),
('Brenda Tate'),
('Deborah Newman'),
('Roy Davis'),
('Thomas Marshall'),
('Jeffrey Jimenez'),
('Marion Schneider'),
('Rebecca Thompson'),
('Suzanne Cannon'),
('Eddie Rodgers'),
('Carol Allen'),
('Arthur Peterson'),
('Melinda Lopez'),
('Yvonne Morgan'),
('Charlotte Ramos'),
('Mary Lee'),
('Marc Sanders'),
('Lois Evans'),
('Denise Simmons'),
('Joy Williams'),
('Margaret Hernandez'),
('Gary Fisher'),
('Keith Strickland'),
('Joyce Miller'),
('Jason Miller'),
('John Richards'),
('Louise Phelps'),
('Nicole Gordon'),
('Charles Stewart'),
('Michael Norris'),
('Carol Fitzgerald'),
('James Warren'),
('William Lee'),
('Joel McBride'),
('Beverly Bryant'),
('Stephanie Hernandez'),
('Laura Brown'),
('Rebecca Horton'),
('Linda Barnes'),
('Thomas Green'),
('Ralph Gonzalez'),
('William Davis'),
('Ann Reed'),
('David Ramirez'),
('Charles Rodgers'),
('Margie Stevens'),
('Frances Williams'),
('James Pierce'),
('Doris Lee'),
('John Kelly'),
('Jason Santiago'),
('Roberto Stewart'),
('James McCarthy'),
('Michael Thompson'),
('Alicia Rogers'),
('Mary Schultz'),
('Cindy Colon'),
('Kevin Reed'),
('James Graham'),
('Troy Hawkins'),
('James Carr'),
('Joshua Gregory');

-- ������� ������� salary: id. Serial  primary key, monthly_salary. Int, not null
create table salary (
	id serial primary key,
	monthly_salary int not null
)

-- ��������� ������� salary 16 ��������
insert into salary (monthly_salary)
values (1000),
	(1100),
	(1200),
	(1300),
	(1400),
	(1500),
	(1600),
	(1700),
	(1800),
	(1900),
	(2000),
	(2100),
	(2200),
	(2300),
	(2400),
	(2500);

--������� ������� employee_salary: id. Serial  primary key; employee_id. Int, not null, unique; salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
)

--��������� ������� employee_salary 40 ��������: � 10 ����� �� 40 �������� �������������� employee_id
insert into employee_salary (employee_id, salary_id)
values (1, 16),
	(2, 15),
	(3, 14),
	(4, 13),
	(5, 12),	
	(6, 11),
	(7, 10),
	(71, 1),
	(72, 2),
	(73, 3),	
	(74, 4),
	(75, 5),
	(8, 9),
	(9, 8),
	(10, 7),	
	(11, 6),
	(12, 5),
	(13, 4),
	(14, 3),
	(15, 2),	
	(16, 1),
	(99, 6),
	(98, 7),
	(97, 8),
	(96, 9),	
	(80, 10),
	(30, 1),
	(33, 2),
	(44, 3),
	(48, 4),	
	(50, 5),
	(56, 6),
	(61, 7),
	(67, 8),
	(70, 9),	
	(31, 10),
	(46, 11),
	(58, 12),
	(63, 13),
	(59, 14);

-- ������� ������� roles (id. Serial  primary key; role_name. int, not null, unique)
create table roles (
	id serial primary key,
	role_name int unique not null
)

-- �������� ��� ������ role_name � int �� varchar(30)
alter table roles alter column role_name type varchar(30)

-- ��������� ������� roles 20 ��������:
insert into roles (role_name)
values ('Junior Python developer'),
('Middle Python develope'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA enginee'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

-- ������� ������� roles_employee: (id. Serial  primary key; employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id); role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
create table roles_employee (
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)
)

-- ��������� ������� roles_employee 40 ��������
insert into roles_employee (employee_id, role_id)
values (1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 6),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 1),
(22, 2),
(23, 3),
(24, 4),
(25, 5),
(26, 6),
(27, 7),
(28, 8),
(29, 9),
(30, 10),
(31, 11),
(32, 12),
(33, 13),
(34, 14),
(35, 15),
(36, 16),
(37, 17),
(38, 18),
(39, 19),
(40, 20);

select * from roles_employee;
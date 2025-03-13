
SELECT 
	'vasia', 
	123;

SELECT
	5000 / 100 * 15,
	SIN(0) + COS(0),
	SYSDATETIME();

SELECT
	123 / 10,
	123.0 / 10,
	123 / 10.0;


SELECT
	id,
	id / 100,
	CAST(id AS float) / 100,
	CONVERT(float, id) / 100,
	id / 100.0
FROM employees;



SELECT *									-- :-(
FROM employees;

SELECT id, email, birthday, hire_date		-- :-)
FROM employees;


SELECT 
	e.id,
	e.email
FROM employees AS e



-- ===== DISTINCT ======
SELECT DISTINCT 
	position_id, 
	department_id
FROM employees;


SELECT
	last_name + ' ' + first_name		AS [ФИО],
	hire_date							[Дата приёма],
	salary								ЗП
FROM employees;


SELECT
	last_name + ' ' + middle_name								AS [ФИО_1],
	ISNULL(last_name, '') + ' ' + ISNULL(middle_name, '')		AS [ФИО_2],
	CONCAT(last_name, ' ', middle_name)							AS [ФИО_3]
FROM employees;


SELECT
	id,
	name,
	salary / 100 * bonus_percent											AS [Bonus_1],
	ISNULL(salary, 0) / 100 * ISNULL(bonus_percent, 0)						AS [Bonus_2],
	COALESCE(salary, 0) / 100 * COALESCE(bonus_percent, extra_percent, 0)	AS [Bonus_3]
FROM employees;



--- ===== ORDER BY ====== ----

SELECT
	last_name,
	first_name,
	salary
FROM employees
ORDER BY last_name DESC;


SELECT
	last_name,
	first_name,
	salary
FROM employees
ORDER BY salary, last_name;


SELECT
	last_name,
	first_name,
	salary
FROM employees
ORDER BY salary / 10;


SELECT
	last_name,
	first_name
FROM employees
ORDER BY salary;



-- ==== :-((( Неоднозначность результата -----

SELECT TOP 3
	id,
	last_name,
	first_name,
	salary
FROM employees
ORDER BY salary DESC;

-- :-)))
SELECT TOP 3
	id,
	last_name,
	first_name,
	salary
FROM employees
ORDER BY salary DESC, id;


--==== buns :-) ====
SELECT
	bonus_percent
FROM employees
ORDER BY bonus_percent

SELECT
	bonus_percent
FROM employees
ORDER BY ISNULL(bonus_percent, 100)



-- ===== TOP =====

SELECT TOP 2
	*
FROM employees;


SELECT TOP 30 PERCENT
	*
FROM employees;


SELECT DISTINCT TOP 2
	salary
FROM employees
ORDER BY salary;


SELECT TOP 2 WITH TIES
	id,
	first_name,
	last_name,
	salary
FROM employees
ORDER BY salary










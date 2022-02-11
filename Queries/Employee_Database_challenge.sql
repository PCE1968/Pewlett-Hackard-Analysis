-- Query to create a Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955.
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;

-- Solution
SELECT 
	DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

-- Find the number of employees by their most recent job title who are about to retire.
SELECT COUNT(*) COUNT, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(*) DESC;

-- Find employees that are eligible for the mentorship program
SELECT DISTINCT ON(e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
join titles as ti
on e.emp_no = ti.emp_no
WHERE de.to_date = '9999-01-01'
	AND e.birth_date BETWEEN '1965-01-01' and '1965-12-31'
ORDER BY e.emp_no;

-- Count of available mentors by title
SELECT COUNT(*) COUNT, title
INTO mentor_count
FROM mentorship_eligibility
GROUP BY title
ORDER BY COUNT(*) DESC;

-- Determine difference between the number of employees preparing to retire and the number of available mentors, by job title
SELECT rt.title, rt.count - mc.count as Difference 
INTO Retirement_gap
FROM retiring_titles rt
JOIN mentor_count mc
ON rt.title = mc.title

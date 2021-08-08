-- CHALLENGE 1 
	--	Call tables for visualization 
SELECT * FROM employees
SELECT * FROM titles

--	1. Create a retiring_by_title table by merging Employees and Titles tables
SELECT e.emp_no, 
		e.first_name, 
		e.last_name,
		t.title,
		t.from_date,
		t.to_date
INTO retirement_titles
FROM employees AS e
LEFT JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no ASC

	-- Verify table is correct
SELECT * FROM retirement_titles

-- 2. Create a unique_titles table by using the previous table, dropping from_date and to_date columns, 
	-- and usign Distinct ON parameters to filter the last title of employees
SELECT DISTINCT ON (r.emp_no) r.emp_no, 
		r.first_name, 
		r.last_name,
		r.title
INTO unique_titles
FROM retirement_titles AS r
ORDER BY r.emp_no ASC, r.to_date DESC;

	-- Verify table is correct
SELECT * FROM unique_titles


-- 3. Using Count retrieve the number of employees by their most recent job title who are about to retire
	-- and create a table retiring_titles
SELECT COUNT(u.title), u.title
INTO retiring_titles
FROM unique_titles AS u
GROUP BY u.title
ORDER BY COUNT(u.title) DESC

	-- Verify table is correct
SELECT * FROM retiring_titles
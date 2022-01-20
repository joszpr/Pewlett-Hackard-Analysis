-- Call tables for visualization 
SELECT * FROM employees
SELECT * FROM titles

-- Create retiring_by_title table by merging employees and titles tables
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

	-- Verify table
SELECT * FROM retirement_titles

-- Create unique_titles table by using previous table, drop from_date and to_date, 
-- filter by the last title of employees
SELECT DISTINCT ON (r.emp_no) r.emp_no, 
		r.first_name, 
		r.last_name,
		r.title
INTO unique_titles
FROM retirement_titles AS r
ORDER BY r.emp_no ASC, r.to_date DESC;

	-- Verify table
SELECT * FROM unique_titles


-- Retrieve number of employees by most recent job title who are about to retire
-- and create a retiring_titles table
SELECT COUNT(u.title), u.title
INTO retiring_titles
FROM unique_titles AS u
GROUP BY u.title
ORDER BY COUNT(u.title) DESC

	-- Verify table
SELECT * FROM retiring_titles

-- Call tables for visualization 
SELECT * FROM employees
SELECT * FROM dept_emp
SELECT * FROM titles

-- Create mentorship_eligibilty table with employees
-- who are eligible to participate in a mentorship program.
SELECT DISTINCT ON(e.emp_no) e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		d.from_date,
		d.to_date,
		t.title
-- INTO mentorship_eligibilty
FROM employees AS e
JOIN dept_emp AS d
	ON e.emp_no = d.emp_no
JOIN titles AS t
	ON e.emp_no = t.emp_no
WHERE (d.to_date = ('9999-01-01')) 
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
ORDER BY e.emp_no ASC, t.to_date DESC

	-- Verify table
SELECT * FROM mentorship_eligibilty

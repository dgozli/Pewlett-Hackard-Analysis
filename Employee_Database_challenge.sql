-- DELIVERABLE 1
-- Retrieving emp no, first name, last name columns from Employees table
Select 	e.emp_no, e.first_name, e.last_name,
		ts.title, ts.from_date, ts.to_date
Into new_table
FROM employees as e
INNER JOIN titles AS ts
ON (e.emp_no = ts.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by e.emp_no asc;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON 	(emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM new_table
WHERE to_date = '9999-01-01'
ORDER BY emp_no asc, to_date desc;

-- Number of titles
SELECT COUNT (title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count(title) desc;

-- DELIVERABLE 2
Select 	DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name,
		e.birth_date, de.from_date, de.to_date, ts.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp AS de 
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ts 
ON (e.emp_no = ts.emp_no)
WHERE ((e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	   AND (de.to_date = '9999-01-01'))
ORDER BY e.emp_no ASC;
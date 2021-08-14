SELECT d.dept_no,
    d.dept_name,
    t.title,
    count(t.title) AS count
FROM departments d
INNER JOIN dept_emp de ON d.dept_no = de.dept_no
INNER JOIN titles t ON de.emp_no = t.emp_no
GROUP BY de.dept_no, t.title
ORDER BY de.dept_no
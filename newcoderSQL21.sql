SELECT e.emp_no, 
    j.salary - s.salary AS growth
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no AND e.hire_date = s.from_date
JOIN salaries j ON e.emp_no = j.emp_no AND j.to_date = '9999-01-01'
ORDER BY growth
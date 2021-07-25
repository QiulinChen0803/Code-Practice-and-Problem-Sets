SELECT
    s.emp_no,
    dm.emp_no AS manager_no,
    s.salary AS emp_salary, 
    sa.salary AS manager_salary
FROM salaries s
JOIN dept_emp de ON de.emp_no = s.emp_no
JOIN dept_manager dm ON dm.dept_no = de.dept_no
JOIN salaries sa ON sa.emp_no = dm.emp_no
WHERE s.salary > sa.salary
    AND s.to_date='9999-01-01'
    AND sa.to_date='9999-01-01'
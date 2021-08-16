ALTER TABLE audit 
ADD CONSTRAINT FOREIGN KEY (emp_no) 
REFERENCES employees_test (id);
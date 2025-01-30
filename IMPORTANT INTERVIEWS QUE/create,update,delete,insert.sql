-- QUESTION IS TO CREATE,INSERT,UPDATE,DELETE,

-- 1. Create a table employee
CREATE TABLE employee (
    empld INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- 2. Insert data into the table employee
INSERT INTO employee (empld, name, department, salary)
VALUES 
    (1, 'Riti', 'IT', 30000),
    (2, 'Rahul', 'HR', 15000);

-- 3. Update Salary for all people in the HR department to 20000
UPDATE employee
SET salary = 20000
WHERE department = 'HR';

-- 4. Delete data for employee having empld = 1
DELETE FROM employee
WHERE empld = 1;

-- 5. Delete the entire table
DROP TABLE employee;


OUTPUT 

1.. Create Table
   
   +-------+--------+------------+--------+
| empld | name   | department | salary |
+-------+--------+------------+--------+


2.. Insert Data into Table


   +-------+--------+------------+--------+
| empld | name   | department | salary |
+-------+--------+------------+--------+
| 1     | Riti   | IT         | 30000  |
| 2     | Rahul  | HR         | 15000  |
+-------+--------+------------+--------+


3.. Update Salary for HR Department

   +-------+--------+------------+--------+
| empld | name   | department | salary |
+-------+--------+------------+--------+
| 1     | Riti   | IT         | 30000  |
| 2     | Rahul  | HR         | 20000  |
+-------+--------+------------+--------+


4.. Delete Employee where empld = 1

  +-------+--------+------------+--------+
| empld | name   | department | salary |
+-------+--------+------------+--------+
| 2     | Rahul  | HR         | 20000  |
+-------+--------+------------+--------+


5.. Delete the Entire Table

   Table `employee` no longer exists.
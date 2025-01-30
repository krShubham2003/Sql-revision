-- Query to Find Duplicate Rows in Employee for Column department

Employee Table (Before Query Execution)

+----+-----------+-----+------------+--------+--------+
| id | name      | age | department | city   | salary |
+----+-----------+-----+------------+--------+--------+
| 1  | Rahul     | 25  | IT         | Mumbai | 1500   |
| 2  | Afsara    | 26  | HR         | Pune   | 2000   |
| 3  | Abhimanyu | 27  | IT         | Mumbai | 2500   |
| 4  | Aditya    | 25  | Marketing  | Surat  | 2400   |
| 5  | Raj       | 24  | Finance    | Delhi  | 1500   |
+----+-----------+-----+------------+--------+--------+



code 

SELECT department, COUNT(*)
FROM employee
GROUP BY department
HAVING COUNT(*) > 1;


Query Execution Output

+------------+----------+
| department | COUNT(*) |
+------------+----------+
| IT         | 2        |
+------------+----------+

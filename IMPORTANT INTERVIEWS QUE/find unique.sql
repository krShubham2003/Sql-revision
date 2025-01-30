-- Query to Find Unique Salaries in Employee Table

SELECT DISTINCT salary 
FROM employee;


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



Output After Executing the Query

+--------+
| salary |
+--------+
| 1500   |
| 2000   |
| 2500   |
| 2400   |
+--------+
💡 Explanation:

The DISTINCT keyword ensures that only unique salary values are retrieved.
Although 1500 appears twice in the table, it is displayed only once in the output.

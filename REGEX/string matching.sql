Write a solution to find the patient_id, patient_name, and conditions of
the patients who have Type I Diabetes. Type I Diabetes always starts
with DIAB1 prefix.

Input: 
Patients table:
+------------+--------------+--------------+
| patient_id | patient_name | conditions   |
+------------+--------------+--------------+
| 1          | Daniel       | YFEV COUGH   |
| 2          | Alice        |              |
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |
| 5          | Alain        | DIAB201      |
+------------+--------------+--------------+
Output: 
+------------+--------------+--------------+
| patient_id | patient_name | conditions   |
+------------+--------------+--------------+
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 | 
+------------+--------------+--------------+
Explanation: Bob and George both have a condition that starts with DIAB1.



Appproch ------

1..
// LIKE ---> is use to find any matching characters in string 
// ex---> "DELHI" if we wnat to match "EL" then we will use 
// LIKE('EL');

2.. 
// if we want to check PREFIX then 
// LEFT(colm_name, length of char) = 'CHAR';
// ex -- consider above exam of DELHI and EL then 
// LEFT(colm_name, 2) = 'EL'; colm_name is any col where you wnat to chck

3.. 
// lly for SUFFIX also we can check 
// RIGHT(colm_name, length of char) = 'CHAR';

4.. 
// if we want to check that either prefix or suufix 
// then use this 
// WHERE column_name REGEXP '^start|end$';




***** write code here 

# Write your MySQL query statement below

SELECT * FROM Patients WHERE conditions REGEXP '^DIAB1| DIAB1';
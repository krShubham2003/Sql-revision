---Delete Duplicate Emails from table 

Input: 
Person table:
+----+------------------+
| id | email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |
+----+------------------+
Output: 
+----+------------------+
| id | email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
+----+------------------+


# Write your MySQL query statement below

# we use self join bcoz we are using same table ..
# p1 is we wnat to delete and p2 we want to keep...


########## code
DELETE P1 FROM Person P1 JOIN Person P2  
ON P1.email=P2.email # for checking duplicate email
AND P1.id>P2.id; # those whose id is grater will be deleted

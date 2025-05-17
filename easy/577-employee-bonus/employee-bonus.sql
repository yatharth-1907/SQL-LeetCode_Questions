# Write your MySQL query statement below
SELECT name, bonus
from Employee as e LEFT JOIN Bonus as b
on b.empId= e.empId
where b.bonus is NULL or b.bonus < 1000 ;
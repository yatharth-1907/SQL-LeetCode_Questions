# Write your MySQL query statement below
Select e2.name 
from Employee e1 
join Employee e2 
on e1.managerId= e2.id
group by e1.managerId,e2.name 
Having count(e1.id)>= 5;

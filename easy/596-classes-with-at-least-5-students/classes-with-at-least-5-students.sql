# Write your MySQL query statement below
SELECT distinct c2.class 
from Courses as c1
join (
    Select class, count(student) as number
    from Courses
    group by class
) as c2
on c1.class=c2.class
where c2.number>=5;
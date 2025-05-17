# Write your MySQL query statement below
SELECT s.student_id, s.student_name,sub.subject_name, count(e.subject_name) as attended_exams
from Students s Cross Join Subjects sub
Left Join Examinations e
on s.student_id= e.student_id AND sub.subject_name= e.subject_name
group by s.student_id, sub.subject_name, s.student_name
order by s.student_id, sub.subject_name;
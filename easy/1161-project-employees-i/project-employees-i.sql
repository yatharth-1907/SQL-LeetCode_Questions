# Write your MySQL query statement below
SELECT p.project_id, Round(AVG(e.experience_years),2) as average_years
From Project as p Left join Employee as e
on p.employee_id= e.employee_id 
group by p.project_id
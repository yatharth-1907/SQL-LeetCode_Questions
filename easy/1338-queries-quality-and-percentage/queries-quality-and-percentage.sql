# Write your MySQL query statement below
Select query_name, ROUND(avg(rating/position),2) as quality, ROUND(AVG(rating<3)*100,2) as poor_query_percentage
FROM Queries 
group by query_name
# Write your MySQL query statement below
 SELECT DISTINCT author_id AS id  from Views
 where author_id=viewer_id 
 ORDER BY author_id ASC;
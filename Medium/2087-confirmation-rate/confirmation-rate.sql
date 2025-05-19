# Write your MySQL query statement below
SELECT su.user_id, ROUND(IFNULL(SUM(c.action='confirmed')/count(c.user_id),0),2) as confirmation_rate
from Signups as su Left join Confirmations as c
on su.user_id= c.user_id
Group by su.user_id;
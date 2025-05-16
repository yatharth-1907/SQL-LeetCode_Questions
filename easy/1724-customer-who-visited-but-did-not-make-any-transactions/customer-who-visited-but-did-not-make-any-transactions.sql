# Write your MySQL query statement below
SELECT customer_id, count(customer_id) as count_no_trans
from Visits as v
Left join Transactions as t
on v.visit_id= t.visit_id
Where transaction_id is NULL
GROUP BY customer_id
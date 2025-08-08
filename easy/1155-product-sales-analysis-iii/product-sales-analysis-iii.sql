# Write your MySQL query statement below
SELECT s.product_id, s.year as first_year,s.quantity,s.price
FROM Sales as s 
join(
    SELECT product_id, MIN(year) as first_year
    from sales
    group by product_id
) as t
on s.product_id= t.product_id and s.year= t.first_year;

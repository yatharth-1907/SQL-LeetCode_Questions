# Write your MySQL query statement below
Select Round(sum(case when order_date=customer_pref_delivery_date then 1 else 0 end)/count(*)*100,2) as immediate_percentage from Delivery
where (customer_id,order_date) in (
    select customer_id, min(order_date) as first_order from delivery
    group by customer_id
);
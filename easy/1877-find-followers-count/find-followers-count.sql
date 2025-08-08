# Write your MySQL query statement below
SELECT user_id, count(follower_id) as Followers_count 
From Followers
group by user_id 
ORDER BY user_id ASC;
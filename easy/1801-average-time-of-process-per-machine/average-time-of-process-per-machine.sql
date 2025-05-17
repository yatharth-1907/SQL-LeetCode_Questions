# Write your MySQL query statement below
SELECT A.machine_id, Round(AVG(B.timestamp-A.timestamp),3) as processing_time
FROM Activity A
JOIN Activity B
ON A.machine_id= B.machine_id and A.process_id= B.process_id and A.timestamp<B.timestamp
GROUP BY A.machine_id
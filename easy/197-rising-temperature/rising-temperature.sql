# Write your MySQL query statement below
SELECT w1.id as Id
FROM Weather w1
JOIN Weather w2
ON DateDiff(w1.recordDate,w2.recordDate)=1
where w1.temperature > w2.temperature;  

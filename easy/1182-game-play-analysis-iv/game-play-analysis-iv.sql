SELECT 
    ROUND(
        COUNT(DISTINCT t.player_id)/ 
        (SELECT COUNT(DISTINCT player_id) from Activity),
    2) as fraction
    from 
        (SELECT player_id, MIN(event_date) as first_login
        from Activity 
        Group by player_id) as t
    join Activity as a1
        on t.player_id= a1.player_id
    where DATEDIFF(a1.event_date,t.first_login)=1;

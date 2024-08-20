# Write your MySQL query statement below

select
    id
    from (
        select id
        , temperature 
        , lag(temperature)over(order by recordDate) as pre_temerature
        , datediff(recordDate, lag(recordDate)over(order by recordDate)) as diff
        from Weather) a
    where  temperature  > pre_temerature and diff = 1
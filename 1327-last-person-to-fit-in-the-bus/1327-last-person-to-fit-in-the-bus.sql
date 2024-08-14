# Write your MySQL query statement below
select person_name
from(
select 
    turn
    , person_id
    , person_name
    , weight
    , sum(weight) over(order by turn asc) as total_weight
    from Queue q
    order by turn
    ) a
    where total_weight <= 1000
    order by turn desc limit 1
    ;
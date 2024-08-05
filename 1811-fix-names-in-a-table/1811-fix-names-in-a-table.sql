# Write your MySQL query statement below
select 
    user_id
    , concat(UPPER(LEFT(name,1)), LOWER(SUBSTR(name,2))) name
    from Users
    order by 1 

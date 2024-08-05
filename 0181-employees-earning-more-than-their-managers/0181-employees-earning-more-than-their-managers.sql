# Write your MySQL query statement below
select a.name Employee
from employee a
join employee b on b.id = a.managerID 
where a.salary > b.salary
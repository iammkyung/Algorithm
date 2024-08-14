# Write your MySQL query statement below

Select
    emp1.name
    From Employee emp1 
    join Employee emp2 on emp2.managerId = emp1.id
    group by emp2.managerId
    having count(*) >= 5
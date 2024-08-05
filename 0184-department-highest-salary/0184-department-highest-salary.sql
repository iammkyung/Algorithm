# Write your MySQL query statement below
select a.name Department
    , b.name Employee
    , b.salary Salary
    from Department a
    join Employee b
where b.departmentId = a.id AND (b.departmentId, salary) IN (select
    departmentId
    , max(salary) as maxSalary
    from Employee
    group by departmentId) 
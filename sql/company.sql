select Employee.name as Employee from Employee
join Employee as E2
on Employee.managerId = E2.id
where Employee.salary > E2.salary
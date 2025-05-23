SELECT t.Deparment AS Department,t.Employee AS Employee , t.Salary AS Salary FROM(
    SELECT d.name AS Deparment,e.name AS Employee, e.salary AS Salary, 
    DENSE_RANK() OVER(PARTITION BY e.departmentid  ORDER BY e.salary DESC) AS MaxSalaryRank 
    FROM Employee e INNER JOIN Department d ON e.departmentid = d.id
)t WHERE t.MaxSalaryRank <= 3;
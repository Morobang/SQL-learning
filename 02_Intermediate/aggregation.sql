-- Aggregation Queries
-- Count employees in each branch.
SELECT b.BranchName, COUNT(e.EmployeeID) AS EmployeeCount
FROM Branch b
LEFT JOIN Employee e ON b.BranchID = e.BranchID
GROUP BY b.BranchName;

-- Find the average age of employees.
SELECT AVG(Age) AS AverageAge FROM Employee;
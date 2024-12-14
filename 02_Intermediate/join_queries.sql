-- JOIN Queries
-- Inner Join: Combine Employee and Branch tables to get the branch name for each employee.
SELECT e.Name, e.Position, b.BranchName
FROM Employee e
INNER JOIN Branch b ON e.BranchID = b.BranchID;

-- Left Join: Get all employees, even if their branch is unknown.
SELECT e.Name, b.BranchName
FROM Employee e
LEFT JOIN Branch b ON e.BranchID = b.BranchID;
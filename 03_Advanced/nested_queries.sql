-- Nested Queries
-- Find employees who work at the branch named 'HQ'.
SELECT Name
FROM Employee
WHERE BranchID = (
    SELECT BranchID
    FROM Branch
    WHERE BranchName = 'HQ'
);
-- Stored Procedure Example
-- Create a stored procedure to add a new employee.
DELIMITER //
CREATE PROCEDURE AddEmployee (
    IN emp_name VARCHAR(50),
    IN emp_age INT,
    IN emp_position VARCHAR(50),
    IN branch_id INT
)
BEGIN
    INSERT INTO Employee (Name, Age, Position, BranchID)
    VALUES (emp_name, emp_age, emp_position, branch_id);
END //
DELIMITER ;
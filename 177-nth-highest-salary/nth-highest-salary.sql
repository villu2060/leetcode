CREATE OR REPLACE FUNCTION NthHighestSalary(N INT) RETURNS TABLE (Salary INT) AS $$
DECLARE calculated_offset INT;
BEGIN
    calculated_offset := N-1;
    IF calculated_offset < 0 THEN
        RETURN;
    END IF;

  RETURN QUERY (
    -- Write your PostgreSQL query statement below.  
        SELECT DISTINCT Employee.salary AS getNthHighestSalary FROM Employee
        ORDER BY Employee.salary DESC
        LIMIT 1 OFFSET calculated_offset
       

      
  );
END;
$$ LANGUAGE plpgsql;
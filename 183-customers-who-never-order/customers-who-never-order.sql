-- Write your PostgreSQL query statement below
SELECT c.name AS customers FROM 
    Customers c LEFT JOIN Orders o
    ON c.id=o.customerId 
    WHERE o.id IS NULL
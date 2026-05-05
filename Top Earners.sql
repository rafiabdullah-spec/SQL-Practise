/* Abdullah Al Rafi,
Hacker Rank, Medium
5/5/26 */

SELECT 
    MAX(salary * months) AS max_earnings,
    COUNT(*)
FROM Employee
WHERE salary * months = (
    SELECT MAX(salary * months)
    FROM Employee
);
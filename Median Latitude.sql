/* Abdullah Al Rafi,
Hacker Rank, Medium
5/3/26 */


WITH CTE AS (
    SELECT LAT_N, ROW_NUMBER() OVER(ORDER BY LAT_N) AS RowNum, COUNT(*) OVER() AS TotalCount
    FROM STATION
)
SELECT ROUND(AVG(LAT_N), 4)
FROM CTE
WHERE RowNum IN (FLOOR((TotalCount + 1) / 2), CEIL((TotalCount + 1) / 2));
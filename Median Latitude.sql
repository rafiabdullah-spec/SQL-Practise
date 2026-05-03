/* Abdullah Al Rafi,
Hacker Rank, Medium
5/3/26 */


-- WITH CTE AS (
--     SELECT LAT_N, ROW_NUMBER() OVER(ORDER BY LAT_N) AS RowNum, COUNT(*) OVER() AS TotalCount
--     FROM STATION
-- )
-- SELECT ROUND(AVG(LAT_N), 4)
-- FROM CTE
-- WHERE RowNum IN (FLOOR((TotalCount + 1) / 2), CEIL((TotalCount + 1) / 2));


   SELECT ROUND(S1.LAT_N, 4) 
    FROM STATION AS S1 
    WHERE (SELECT ROUND(COUNT(S1.ID)/2) - 1 
           FROM STATION) = 
          (SELECT COUNT(S2.ID) 
           FROM STATION AS S2 
           WHERE S2.LAT_N > S1.LAT_N);  

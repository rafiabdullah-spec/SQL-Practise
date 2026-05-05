/* Abdullah Al Rafi,
Hacker Rank, Medium
5/4/26 */

SELECT ROUND(LAT_N, 4)
FROM STATION
WHERE LAT_N = (
    SELECT MAX(LAT_N)
    FROM STATION
    WHERE LAT_N < 137.2345
);
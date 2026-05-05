/* Abdullah Al Rafi,
Hacker Rank, Medium
5/5/26 */

SELECT ROUND(
    SQRT(POWER(MAX(LAT_N) - MIN(LAT_N), 2) + 
         POWER(MAX(LONG_W) - MIN(LONG_W), 2)
    ), 4)
FROM STATION;
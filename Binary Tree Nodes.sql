/* Abdullah Al Rafi,
Hacker Rank, Medium
5/3/26 */

SELECT
  N,
  CASE
    WHEN P IS NULL THEN 'Root'
    WHEN N IN (SELECT P FROM BST) THEN 'Inner'
    ELSE 'Leaf'
  END AS NodeType
FROM
  BST
ORDER BY
  N;

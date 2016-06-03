-- Write a SQL query to find all numbers that appear at least three times consecutively.
--
-- +----+-----+
-- | Id | Num |
-- +----+-----+
-- | 1  |  1  |
-- | 2  |  1  |
-- | 3  |  1  |
-- | 4  |  2  |
-- | 5  |  1  |
-- | 6  |  2  |
-- | 7  |  2  |
-- +----+-----+
-- For example, given the above Logs table, 1 is the only number that appears consecutively for at least three times.

SELECT DISTINCT
    L1.Num ConsecutiveNums
FROM Logs L1
JOIN Logs L2
    ON L1.Id = L2.Id + 1
JOIN Logs L3
    ON L1.Id = L3.Id + 2
WHERE L1.Num = L2.Num
    AND L1.Num = L3.Num

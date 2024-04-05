# The Report : https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true

SELECT IF(g.GRADE < 8, 'NULL',  s.NAME), g.GRADE, s.MARKS
FROM STUDENTS s LEFT JOIN GRADES g ON s.MARKS BETWEEN g.MIN_MARK  AND g.MAX_MARK
ORDER BY g.GRADE DESC,
                  CASE WHEN g.GRADE >= 8 THEN s.NAME
                            WHEN g.GRADE < 8 THEN s.MARKS END ASC;

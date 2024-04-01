/*
입양 시각 구하기(1) : https://school.programmers.co.kr/learn/courses/30/lessons/59412
09:00부터 19:59까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성. 결과는 시간대 순으로 정렬.
*/

SELECT HOUR(DATETIME) H, COUNT(1) CNT
FROM ANIMAL_OUTS
WHERE HOUR(DATETIME) >= 9 and HOUR(DATETIME) <= 19
GROUP BY 1
ORDER BY H

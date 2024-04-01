/*
있었는데요 없었습니다 : https://school.programmers.co.kr/learn/courses/30/lessons/59043
보호 시작일보다 입양일이 더 빠른 동물의 아이디와 이름을 조회하는 SQL문을 작성. 
결과는 보호 시작일이 빠른 순으로 조회.
*/

SELECT A.ANIMAL_ID, A.NAME
FROM ANIMAL_INS A LEFT JOIN ANIMAL_OUTS B ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE A.DATETIME > B.DATETIME
ORDER BY A.DATETIME

/*
오랜 기간 보호한 동물(2) : https://school.programmers.co.kr/learn/courses/30/lessons/59411
입양을 간 동물 중, 보호 기간이 가장 길었던 동물 두 마리의 아이디와 이름을 조회하는 SQL문을 작성. 
결과는 보호 기간이 긴 순으로 조회.
*/

SELECT A.ANIMAL_ID, A.NAME
FROM ANIMAL_INS A LEFT JOIN ANIMAL_OUTS B ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE B.DATETIME IS NOT NULL
ORDER BY (B.DATETIME - A.DATETIME) DESC LIMIT 2

/*
오랜 기간 보호한 동물(1) : https://school.programmers.co.kr/learn/courses/30/lessons/59044
아직 입양을 못 간 동물 중, 가장 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일을 조회하는 SQL문을 작성. 
결과는 보호 시작일 순으로 조회.
*/

SELECT AIN.NAME, AIN.DATETIME
FROM ANIMAL_INS AIN LEFT JOIN ANIMAL_OUTS AOUT ON AIN.ANIMAL_ID = AOUT.ANIMAL_ID
WHERE AOUT.DATETIME IS NULL
ORDER BY AIN.DATETIME LIMIT 3

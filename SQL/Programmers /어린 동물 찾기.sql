/*
어린 동물 찾기 : https://school.programmers.co.kr/learn/courses/30/lessons/59037
동물 보호소에 들어온 동물 중 젊은 동물의 아이디와 이름을 조회하는 SQL 문을 작성.
결과는 아이디 순으로 조회.
*/

SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION <> "Aged"

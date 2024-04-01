/*
이름에 el이 들어가는 동물 찾기 : https://school.programmers.co.kr/learn/courses/30/lessons/59047
동물 보호소에 들어온 동물 이름 중, 이름에 "EL"이 들어가는 개의 아이디와 이름을 조회하는 SQL문을 작성.
결과는 이름 순으로 조회, 이름의 대소문자는 구분하지 않음.
*/

SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE ANIMAL_TYPE = "Dog" and UPPER(NAME) LIKE "%EL%"
ORDER BY NAME

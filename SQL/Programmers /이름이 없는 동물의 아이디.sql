/*
이름이 없는 동물의 아이디 : https://school.programmers.co.kr/learn/courses/30/lessons/59039
이름이 없는 채로 들어온 동물의 ID를 조회하는 SQL 문을 작성. ID는 오름차순 정렬.
*/

SELECT ANIMAL_ID
FROM ANIMAL_INS
WHERE NAME is null
ORDER BY ANIMAL_ID

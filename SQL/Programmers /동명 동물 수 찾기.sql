/*
동명 동물 수 찾기 : https://school.programmers.co.kr/learn/courses/30/lessons/59041
동물 보호소에 들어온 동물 이름 중 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회하는 SQL문을 작성. 
이름이 없는 동물은 집계에서 제외, 결과는 이름 순으로 조회.
*/

-- 방법 1
SELECT NAME, if(count(NAME) > 1, count(NAME), "") cnt_name
FROM ANIMAL_INS
WHERE NAME is not null
GROUP BY NAME
HAVING COUNT(NAME) > 1
ORDER BY NAME

-- if(count(NAME) > 1, count(NAME), "") 이 쿼리는 필요없는 쿼리


-- 방법 2
SELECT NAME, COUNT(NAME) cnt_name
FROM ANIMAL_INS
WHERE NAME is not null
GROUP BY NAME
HAVING COUNT(NAME) > 1
ORDER BY NAME

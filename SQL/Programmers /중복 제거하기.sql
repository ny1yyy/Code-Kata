/*
중복 제거하기 : https://school.programmers.co.kr/learn/courses/30/lessons/59408
동물 보호소에 들어온 동물의 이름은 몇 개인지 조회하는 SQL 문을 작성.
이름이 NULL인 경우는 집계하지 않으며 중복되는 이름은 하나로 간주
*/

# 방법 1
SELECT count(1) cnt_name
FROM 
    (select distinct NAME
     FROM ANIMAL_INS
    ) a
WHERE NAME is not null

  
# 방법 2
SELECT count(distinct NAME) cnt_name
FROM ANIMAL_INS
WHERE NAME is not null

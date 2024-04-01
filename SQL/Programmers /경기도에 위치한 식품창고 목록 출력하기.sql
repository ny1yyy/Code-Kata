/*
경기도에 위치한 식품창고 목록 출력하기 : https://school.programmers.co.kr/learn/courses/30/lessons/131114
경기도에 위치한 창고의 ID, 이름, 주소, 냉동시설 여부를 조회하는 SQL문을 작성.
냉동시설 여부가 NULL인 경우 'N'으로 출력, 결과는 창고 ID를 기준으로 오름차순 정렬.
*/

SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS, IF(FREEZER_YN is null, "N", FREEZER_YN)FREEZER_YN
FROM FOOD_WAREHOUSE
WHERE ADDRESS LIKE "경기%"
ORDER BY WAREHOUSE_ID

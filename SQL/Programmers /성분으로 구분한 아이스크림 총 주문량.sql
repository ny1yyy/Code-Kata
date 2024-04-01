/*
성분으로 구분한 아이스크림 총 주문량 : https://school.programmers.co.kr/learn/courses/30/lessons/133026
상반기 동안 각 아이스크림 성분 타입과 성분 타입에 대한 아이스크림의 총주문량을 총주문량이 작은 순서대로 조회하는 SQL 문을 작성.
총주문량을 나타내는 컬럼명은 TOTAL_ORDER로 지정.
*/

SELECT I.INGREDIENT_TYPE, SUM(F.TOTAL_ORDER) TOTAL_ORDER
FROM FIRST_HALF F LEFT JOIN ICECREAM_INFO I ON F.FLAVOR = I.FLAVOR
GROUP BY I.INGREDIENT_TYPE
ORDER BY TOTAL_ORDER

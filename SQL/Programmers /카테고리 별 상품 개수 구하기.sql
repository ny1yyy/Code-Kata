/*
카테고리 별 상품 개수 구하기 : https://school.programmers.co.kr/learn/courses/30/lessons/131529
상품 카테고리 코드(PRODUCT_CODE 앞 2자리) 별 상품 개수를 출력하는 SQL문을 작성.
결과는 상품 카테고리 코드를 기준으로 오름차순 정렬.
*/

SELECT SUBSTR(PRODUCT_CODE, 1, 2) "카테고리", COUNT(1) "개수"
FROM PRODUCT
GROUP BY 1

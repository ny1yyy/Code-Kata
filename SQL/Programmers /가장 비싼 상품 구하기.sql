/*
가장 비싼 상품 구하기 : https://school.programmers.co.kr/learn/courses/30/lessons/131697
PRODUCT 테이블에서 판매 중인 상품 중 가장 높은 판매가를 출력하는 SQL문을 작성. 컬럼명은 MAX_PRICE로 지정.
*/

SELECT MAX(PRICE) "MAX_PRICE"
FROM PRODUCT

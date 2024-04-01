/*
상품 별 오프라인 매출 구하기 : https://school.programmers.co.kr/learn/courses/30/lessons/131533
PRODUCT 테이블과 OFFLINE_SALE 테이블에서 상품코드 별 매출액(판매가 * 판매량) 합계를 출력하는 SQL문을 작성. 
결과는 매출액을 기준으로 내림차순 정렬, 매출액이 같다면 상품코드를 기준으로 오름차순 정렬.
*/

SELECT P.PRODUCT_CODE, SUM(P.price * O.sales_amount) SALES
FROM OFFLINE_SALE O LEFT JOIN PRODUCT P ON O.PRODUCT_ID = P.PRODUCT_ID
GROUP BY P.PRODUCT_CODE
ORDER BY SALES DESC, P.PRODUCT_CODE

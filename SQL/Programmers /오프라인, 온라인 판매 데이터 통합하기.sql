/*
오프라인/온라인 판매 데이터 통합하기 : https://school.programmers.co.kr/learn/courses/30/lessons/131537
12세 이하인 여자환자의 환자이름, 환자번호, 성별코드, 나이, 전화번호를 조회하는 SQL문을 작성.
전화번호가 없는 경우, 'NONE'으로 출력, 결과는 나이를 기준으로 내림차순 정렬,
나이가 같다면 환자이름을 기준으로 오름차순 정렬.
*/

SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
FROM ONLINE_SALE
WHERE YEAR(SALES_DATE) = 2022 AND MONTH(SALES_DATE) = 3
UNION ALL
SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE, PRODUCT_ID, NULL USER_ID, SALES_AMOUNT
FROM OFFLINE_SALE
WHERE YEAR(SALES_DATE) = 2022 AND MONTH(SALES_DATE) = 3
ORDER BY SALES_DATE ASC, PRODUCT_ID ASC, USER_ID ASC;

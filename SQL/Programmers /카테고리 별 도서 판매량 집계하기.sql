/*
카테고리 별 도서 판매량 집계하기 : https://school.programmers.co.kr/learn/courses/30/lessons/144855
2022년 1월의 카테고리 별 도서 판매량을 합산하고, 카테고리(CATEGORY), 총 판매량(TOTAL_SALES) 리스트를 출력하는 SQL문을 작성. 
결과는 카테고리명을 기준으로 오름차순 정렬.
*/

SELECT B.CATEGORY '카테고리', SUM(BS.SALES) '총 판매량'
FROM BOOK B LEFT JOIN BOOK_SALES BS ON B.BOOK_ID = BS.BOOK_ID
WHERE DATE_FORMAT(BS.SALES_DATE, '%Y-%m') = '2022-01'
GROUP BY B.CATEGORY
ORDER BY B.CATEGORY

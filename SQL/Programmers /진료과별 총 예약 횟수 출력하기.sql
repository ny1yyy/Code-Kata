/*
진료과별 총 예약 횟수 출력하기 : https://school.programmers.co.kr/learn/courses/30/lessons/132202
2022년 5월에 예약한 환자 수를 진료과코드 별로 조회하는 SQL문을 작성.
컬럼명은 '진료과 코드', '5월예약건수'로 지정, 결과는 진료과별 예약한 환자 수를 기준으로 오름차순 정렬,
예약한 환자 수가 같다면 진료과 코드를 기준으로 오름차순 정렬.
*/

SELECT MCDP_CD '진료과코드', COUNT(APNT_NO) '5월예약건수'
FROM APPOINTMENT
WHERE DATE_FORMAT(APNT_YMD, "%Y-%m") = '2022-05'
GROUP BY 1
ORDER BY COUNT(APNT_NO), 진료과코드   -- ORDER BY 5월예약건수, 진료과코드 

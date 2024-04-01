/*
흉부외과 또는 일반외과 의사 목록 출력하기 : https://school.programmers.co.kr/learn/courses/30/lessons/132203
진료과가 흉부외과이거나 일반외과인 의사의 이름, 의사ID, 진료과, 고용일자를 조회하는 SQL문을 작성.
결과는 고용일자를 기준으로 내림차순 정렬하고, 고용일자가 같다면 이름을 기준으로 오름차순 정렬.
*/

SELECT DR_NAME, DR_ID, MCDP_CD, DATE_FORMAT(HIRE_YMD, "%Y-%m-%d") HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD = "CS" or MCDP_CD = "GS"
ORDER BY HIRE_YMD DESC, DR_NAME

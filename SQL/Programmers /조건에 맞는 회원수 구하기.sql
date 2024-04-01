/*
조건에 맞는 회원수 구하기 : https://school.programmers.co.kr/learn/courses/30/lessons/131535
2021년에 가입한 회원 중 나이가 20세 이상 29세 이하인 회원이 몇 명인지 출력하는 SQL문을 작성.
*/

SELECT COUNT(1) USERS_CNT
FROM USER_INFO
WHERE DATE_FORMAT(JOINED, "%Y") = 2021 and AGE BETWEEN 20 and 29

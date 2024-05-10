/*
FrontEnd 개발자 찾기 : https://school.programmers.co.kr/learn/courses/30/lessons/276035
DEVELOPERS 테이블에서 Front End 스킬을 가진 개발자의 정보를 조회.
조건에 맞는 개발자의 ID, 이메일, 이름, 성을 조회.
결과는 ID를 기준으로 오름차순 정렬.
*/

SELECT DISTINCT d.ID, d.EMAIL, d.FIRST_NAME, d.LAST_NAME
FROM DEVELOPERS d JOIN SKILLCODES s on d.SKILL_CODE & s.CODE
WHERE s.CATEGORY = 'Front End'
ORDER BY d.ID ASC;

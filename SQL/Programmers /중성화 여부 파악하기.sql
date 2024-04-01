/*
중성화 여부 파악하기 : https://school.programmers.co.kr/learn/courses/30/lessons/59409
동물의 아이디와 이름, 중성화 여부를 아이디 순으로 조회하는 SQL문을 작성.
중성화가 되어있다면 'O', 아니라면 'X'라고 표시.
*/

SELECT ANIMAL_ID, NAME, IF(SEX_UPON_INTAKE LIKE "Neutered%" OR SEX_UPON_INTAKE LIKE "Spayed%", "O", "X") "중성화 여부"
FROM ANIMAL_INS

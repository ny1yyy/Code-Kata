# The PADS : https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true

SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')') 
FROM OCCUPATIONS
ORDER BY Name ASC, LEFT(Occupation, 1) ASC;

SELECT CONCAT('There are a total of ', COUNT(NAME), ' ', LOWER(OCCUPATION), 's.')
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(NAME) ASC, OCCUPATION ASC;

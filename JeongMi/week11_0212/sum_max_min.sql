-- SUM, MAX, MIN: 중복 제거하기(Lv.2)
SELECT COUNT(DISTINCT NAME)
FROM ANIMAL_INS
WHERE NAME IS NOT NULL;

-- DISTINCT: 중복 제거
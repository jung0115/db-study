-- 프로그래머스 SQL 고득점 Kit
-- SELECT: 12세 이하인 여자 환자 목록 출력하기(Lv.1)

SELECT PT_NAME, PT_NO, GEND_CD, AGE, NVL(TLNO, 'NONE') as TLNO
FROM PATIENT
WHERE AGE <= 12
    AND GEND_CD LIKE 'W'
ORDER BY AGE DESC, PT_NAME ASC;
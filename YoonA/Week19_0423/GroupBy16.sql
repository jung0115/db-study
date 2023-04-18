-- 년, 월, 성별 별 상품 구매 회원 수 구하기

SELECT 
    YEAR(SALES_DATE) AS 'YEAR', 
    MONTH(SALES_DATE) AS 'MONTH', 
    GENDER, 
    COUNT(DISTINCT U.USER_ID) AS 'USERS'
FROM USER_INFO U
JOIN ONLINE_SALE O ON U.USER_ID = O.USER_ID
WHERE GENDER IS NOT NULL
GROUP BY YEAR(SALES_DATE), MONTH(SALES_DATE), GENDER
ORDER BY YEAR(SALES_DATE), MONTH(SALES_DATE), GENDER 
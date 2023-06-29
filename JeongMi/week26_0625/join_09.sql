-- JOIN: 5월 식품들의 총매출 조회하기 (Lv.4)
SELECT od.PRODUCT_ID as PRODUCT_ID, PRODUCT_NAME, SUM(AMOUNT * PRICE) as TOTAL_SALES
FROM FOOD_ORDER as od
    LEFT JOIN FOOD_PRODUCT as pd
    ON od.PRODUCT_ID = pd.PRODUCT_ID
WHERE PRODUCE_DATE >= "2022-05-01"
    AND PRODUCE_DATE <= "2022-05-31"
    AND PRODUCT_NAME IS NOT NULL
GROUP BY PRODUCT_ID
ORDER BY TOTAL_SALES DESC, PRODUCT_ID ASC;
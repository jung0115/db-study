SELECT CATEGORY, SUM(SALES) as TOTAL_SALES
FROM BOOK
    INNER JOIN BOOK_SALES
    ON BOOK.BOOK_ID = BOOK_SALES.BOOK_ID
WHERE SALES_DATE >= '2022-01-01'
    AND SALES_DATE <= '2022-01-31'
GROUP BY CATEGORY
ORDER BY CATEGORY;
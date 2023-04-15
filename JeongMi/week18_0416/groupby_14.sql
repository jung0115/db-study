-- GROUP BY: 저자 별 카테고리 별 매출액 집계하기 (Lv.4)       
SELECT BOOK_TOTALS.AUTHOR_ID as AUTHOR_ID, AUTHOR_NAME, CATEGORY,
    SUM(TOTAL_SALES) as TOTAL_SALES
FROM (SELECT BOOK.BOOK_ID as BOOK_ID, CATEGORY, AUTHOR_ID,
      SUM(PRICE * SALES) as TOTAL_SALES
        FROM BOOK 
            INNER JOIN BOOK_SALES
            ON BOOK.BOOK_ID = BOOK_SALES.BOOK_ID
        WHERE SALES_DATE < '2022-02-01'
        GROUP BY BOOK.BOOK_ID) as BOOK_TOTALS
    INNER JOIN AUTHOR
    ON BOOK_TOTALS.AUTHOR_ID = AUTHOR.AUTHOR_ID
GROUP BY AUTHOR_ID, CATEGORY
ORDER BY AUTHOR_ID, CATEGORY DESC;
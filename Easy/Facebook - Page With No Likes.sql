-- https://datalemur.com/questions/sql-page-with-no-likes

SELECT pg.page_id from pages pg
LEFT OUTER JOIN page_likes pl 
ON pg.page_id=pl.page_id
WHERE pl.page_id IS NULL

;
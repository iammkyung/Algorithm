-- 코드를 입력하세요
SELECT B.BOOK_ID
    , A.AUTHOR_NAME
    , date_format(B.PUBLISHED_DATE, '%Y-%m-%d') as PUBLISHED_DATE
from AUTHOR A
INNER JOIN BOOK B ON A.AUTHOR_ID = B.AUTHOR_ID 
WHERE B.category = '경제' 
order by b.published_date asc
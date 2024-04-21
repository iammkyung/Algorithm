# -- 코드를 입력하세요
# SELECT
#     A.PRODUCT_ID
#     # , B.product_id
#     , B.PRODUCT_NAME
#     , SUM(B.PRICE)*A.amount AS TOTAL_SALES
#     FROM FOOD_ORDER A
#     LEFT JOIN FOOD_PRODUCT B ON B.PRODUCT_ID = A.PRODUCT_ID
#       WHERE B.PRODUCT_ID IS NOT NULL and a.produce_date > '2022-05-01'
#     GROUP BY A.PRODUCT_ID
#     order by 1
    
SELECT 
    A.PRODUCT_ID
    , B.PRODUCT_NAME
    , sum(A.AMOUNT*B.PRICE)
    FROM FOOD_ORDER A
    LEFT JOIN FOOD_PRODUCT B ON A.PRODUCT_ID = B.PRODUCT_ID
    WHERE B.PRODUCT_ID IS NOT NULL AND A.PRODUCE_DATE like '2022-05%'
    group by a.product_id
    ORDER BY 3 desc, 1 asc
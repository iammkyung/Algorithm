-- 코드를 입력하세요
/*
CART_PRODUCTS 테이블은 장바구니에 담긴 상품 정보를 담은 테이블
*/
select
cart_id
# , cart_list
from (
SELECT 
cart_id
, group_concat(name) as cart_list
from CART_PRODUCTS
group by cart_id 
) a
where REGEXP_LIKE(cart_list, 'Milk') AND REGEXP_LIKE(cart_list, 'Yogurt')
order by 1
;


# SELECT 
# cart_id
# , group_concat(name) as cart_list
# from CART_PRODUCTS
-- 코드를 입력하세요
/*
의류 쇼핑몰에 가입한 회원 정보를 담은 USER_INFO 테이블
온라인 상품 판매 정보를 담은 ONLINE_SALE 테이블 

2021년에 가입한 전체 회원들 중 
상품을 구매한 회원수와 상품을 구매한 회원의 비율(=2021년에 가입한 회원 중 상품을 구매한 회원수 / 2021년에 가입한 전체 회원 수)
*/
with A as (
SELECT user_id
from USER_INFO  
 where year(joined) = 2021
)
select
    year(onl.SALES_DATE) as year
    , month(onl.sales_date) as month
    , count(distinct onl.user_id) as purchased_users
    , round(count(distinct onl.user_id)/(select count(*) from A) ,1)as puchased_ratio
    from ONLINE_SALE onl
    join A user on user.user_id = onl.user_id 
    group by year(onl.SALES_DATE) , month(onl.sales_date)
    order by year asc, month asc
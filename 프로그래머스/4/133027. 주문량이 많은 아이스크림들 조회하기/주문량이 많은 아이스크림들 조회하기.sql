-- 코드를 입력하세요
# 7월 아이스크림 총 주문량과 상반기의 아이스크림 총 주문량을 더한 값

select 
    a.flavor
    # , sum(a.total_order) + sum(b.total_order) 
    from FIRST_HALF a
    inner join july b on b.flavor = a.flavor
    group by b.flavor
    order by sum(a.total_order) + sum(b.total_order)  desc
    limit 3
    
# select * from FIRST_HALF
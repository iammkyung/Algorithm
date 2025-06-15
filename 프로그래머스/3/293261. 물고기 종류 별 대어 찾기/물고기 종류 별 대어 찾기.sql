-- 코드를 작성해주세요

select a.id, b.fish_name, b.length
from ( select
   a.fish_type, b.fish_name,max(length) as length 
    from fish_info a
    join fish_name_info b on b.fish_type = a.fish_type
    group by a.fish_type,b.fish_name
    ) b 
    join fish_info a on a.fish_type = b.fish_type and b.length=a.length
    order by 1 asc
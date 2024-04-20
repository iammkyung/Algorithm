-- 코드를 입력하세요
# 보호 시작일 < 입양일이 빠른 동물 
SELECT 
    a.animal_id
    , b.name
    # , a.datetime # 보호시작일
    # , b.datetime # 입양일
    from ANIMAL_INS a
    join ANIMAL_OUTS b on a.animal_id = b.animal_id
    where a.datetime > b.datetime
    order by a.datetime
-- 코드를 입력하세요
SELECT
    b.animal_id
    , b.name
    from ANIMAL_INS a
    right join ANIMAL_OUTS b on a.animal_id = b.animal_id
    where a.animal_id is null
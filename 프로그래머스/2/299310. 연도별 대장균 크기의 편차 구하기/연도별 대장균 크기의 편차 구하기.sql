-- 코드를 작성해주세요
select
    YEAR(DIFFERENTIATION_DATE) as year
    , max(SIZE_OF_COLONY) over (partition by YEAR(DIFFERENTIATION_DATE)) - size_of_colony as year_dev
    , ID
    from ECOLI_DATA
    order by 1 asc, year_dev asc
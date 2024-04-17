-- 코드를 입력하세요
-- 코드를 입력하세요
SELECT 
round(AVG(DAILY_FEE), 0) as AVERAGE_FEE
from CAR_RENTAL_COMPANY_CAR
group by CAR_TYPE
having CAR_TYPE = 'SUV'
-- select * from CAR_RENTAL_COMPANY_CAR
-- 코드를 작성해주세요

# HR_DEPARTMENT 회사 부서 정보
# HR_EMPLOYEES  사원 정보

# 부서별로 부서 ID, 영문 부서명, 평균 연봉을 조회
## 평균연봉은 소수점 첫째 자리에서 반올림하고 컬럼명은 AVG_SAL로 해주세요.
## 결과는 부서별 평균 연봉을 기준으로 내림차순 정렬


select dep.dept_id, dep.dept_name_en, round(avg(emp.sal))  as avg_sal
from HR_EMPLOYEES emp
join HR_DEPARTMENT dep on dep.dept_id = emp.dept_id
group by  emp.dept_id 
order by 3 desc
;
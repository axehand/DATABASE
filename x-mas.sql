-- 1. 모든 사원 모든 컬럼 조회
select * from employee;
-- 2. 사원들의 사번(사원번호), 이름 조회
select 
		EMP_ID
	  , EMP_NAME
  from employee;
  
-- 3. 201번 사번의 사번 및 이름 조회
select
		EMP_ID
	  , EMP_NAME
  from employee
 where EMP_ID = 201;
-- 4. employee 테이블에서 부서 코드가 'D9'인 사원 조회
select
		*
  from employee
 where DEPT_CODE = 'D9';
-- 5. employee 테이블에서 직급 코드가 'J1'인 사원 조회 
select
		*
  from employee
 where JOB_CODE = 'J1'; 
 
-- 6. employee 테이블에서 급여가 300만원 이상(>=)인 사원의
-- 사번, 이름, 부서코드, 급여를 조회하시오.
select
		EMP_ID
	  , EMP_NAME
      , DEPT_CODE
      , SALARY
  FROM employee
 where SALARY >= 3000000.00;
 
-- 7. 부서코드가 'D6'이고 급여를 300만원보다 많이 받는
-- 직원의 이름, 부서코드, 급여 조회
select
	    EMP_NAME
      , DEPT_CODE
      , SALARY
  FROM employee
 where SALARY > 3000000.00 && DEPT_CODE = 'D6';
 
-- 8. 보너스를 받지 않는 사원에 대한
-- 사번, 직원명, 급여, 보너스를 조회
select
	    EMP_ID
      , EMP_NAME
      , SALARY
      , BONUS
  FROM employee
 WHERE  BONUS IS NULL;
 
-- 9. 'D9' 부서에서 근무하지 않는 사원의
-- 사번, 이름, 부서코드를 조회
select
	    EMP_ID
      , EMP_NAME
      , DEPT_CODE
  FROM employee
 WHERE  DEPT_CODE != 'D9';
 
-- 10. employee 테이블에서 퇴사 여부가 N인 직원들 조회하고
-- 사번, 이름, 입사일을 별칭을 사용해 조회해 보기
-- (퇴사 여부 컬럼은 ENT_YN이고 N은 퇴사 안한 사람, Y는 퇴사 한 사람)

SELECT
		EMP_ID AS 'EI'
	  , EMP_NAME AS 'EN'
      , HIRE_DATE AS 'HD'
  FROM employee
  WHERE ENT_YN = 'N';
  
-- 11. employee 테이블에서 급여 350만원 이상
-- 550만원 이하를 받는 직원의
-- 사번, 이름, 급여, 부서코드, 직급코드를 별칭을 사용해 조회해 보기
SELECT
		EMP_ID AS 'ID'
	  , EMP_NAME AS 'NAME'
      , SALARY AS 'SAL'
      , DEPT_CODE AS 'DC'
	  , JOB_CODE AS 'JC'
  FROM employee
  WHERE SALARY >= 3500000 AND SALARY <= 5500000;
-- 12. employee 테이블에서 '성이 김씨'인 직원의 사번, 이름, 입사일 조회
SELECT
		EMP_ID
	  , EMP_NAME
      , HIRE_DATE
  FROM employee
 WHERE EMP_NAME LIKE '김%%';
 
-- 13. employee 테이블에서 '성이 김씨'가 아닌 직원의 사번, 이름, 입사일 조회
SELECT
		EMP_ID
	  , EMP_NAME
      , HIRE_DATE
  FROM employee
 WHERE EMP_NAME NOT LIKE '김%%';

-- 14. EMPLOYEE 테이블에서 '하'문자가 이름에 포함 된
-- 직원의 이름, 주민번호, 부서코드 조회
SELECT
		EMP_NAME
	  , EMP_NO
      , DEPT_CODE
  FROM employee
 WHERE EMP_NAME LIKE '%하%';
-- 15. 'J2'직급이면서 급여가 200만원 이상인 직원이거나
-- 'J7'직급인 직원의 이름, 급여, 직급코드 조회
SELECT
		EMP_NAME
	  , SALARY
      , JOB_CODE
  FROM employee
 WHERE (JOB_CODE = 'j2' && SALARY >= 2000000) || JOB_CODE = 'J7';
 
-- 16. 'J2'직급이거나 'J7'직급인 직원들 중에
-- 급여가 200만원 이상인 직원의 이름, 급여, 직급코드 조회
SELECT
		EMP_NAME
	  , SALARY
      , JOB_CODE
  FROM employee
 WHERE JOB_CODE = 'j2' || (SALARY >= 2000000 && JOB_CODE = 'J7');

-- 17. IN 연산자로 업그레이드
SELECT
		EMP_NAME
	  , SALARY
      , JOB_CODE
  FROM employee
 WHERE JOB_CODE IN ('j2') || (SALARY >= 2000000 && JOB_CODE IN('J7'));

-- ------------------------------------------
-- <JOIN 사용 연습문제>              

-- 1. 이름에 '형'자가 들어가는 직원들의 사번, 사원명, 부서명을 조회하시오.(1명)
SELECT
		e.EMP_ID
	  , e.EMP_NAME
      , d.DEPT_TITLE
  FROM employee e
  JOIN DEPARTMENT d ON (e.DEPT_CODE = D.DEPT_ID)
 where e.EMP_NAME LIKE '%형%';
-- 2. 해외영업팀에 근무하는 사원명, 직급명, 부서코드, 부서명을 조회하시오.(9명)
SELECT
	    e.EMP_NAME
	  , J.JOB_NAME
      , e.DEPT_CODE
      , d.DEPT_TITLE
  FROM employee e
  JOIN JOB j ON (e.JOB_CODE = j.JOB_CODE)
  JOIN DEPARTMENT d ON (e.DEPT_CODE = d.DEPT_ID)
 where e.DEPT_CODE IN ('D5','D6','D7');

-- 3. 보너스포인트를 받는 직원들의 사원명, 보너스포인트, 부서명, 근무지역명을 조회하시오.(8명)(INNER JOIN 결과)
SELECT
	    e.EMP_NAME
	  , e.BONUS
	  , d.DEPT_TITLE
      , n.NATIONAL_NAME
  FROM employee e
  JOIN DEPARTMENT d ON (e.DEPT_CODE = d.DEPT_ID)
  JOIN LOCATION l ON (d.LOCATION_ID = l.LOCAL_CODE)
  JOIN NATIONAL n ON (n.NATIONAL_CODE = l.NATIONAL_CODE)
 where e.BONUS IS NOT NULL; 

-- 4. 부서코드가 D2인 직원들의 사원명, 직급명, 부서명, 근무지역명을 조회하시오.(3명)
SELECT
	    e.EMP_NAME
	  , J.JOB_NAME
	  , d.DEPT_TITLE
      , n.NATIONAL_NAME
  FROM employee e
  JOIN JOB j ON (e.JOB_CODE = j.JOB_CODE)
  JOIN DEPARTMENT d ON (e.DEPT_CODE = d.DEPT_ID)
  JOIN LOCATION l ON (d.LOCATION_ID = l.LOCAL_CODE)
  JOIN NATIONAL n ON (n.NATIONAL_CODE = l.NATIONAL_CODE)
 where e.DEPT_CODE = 'D2'; 


-- 5. 급여 테이블의 등급별 최소급여(MIN_SAL)보다 많이 받는 직원들의
-- 사원명, 직급명, 급여, 연봉을 조회하시오.
-- 연봉에 보너스포인트를 적용하시오.(20명)
ALTER TABLE employeedb.employee ADD Y_SAL INT;

UPDATE employee 
SET Y_SAL = (employee.SALARY * 12) * (1 + employee.BONUS)
where employee.BONUS IS NOT NULL;
UPDATE employee 
SET Y_SAL = (employee.SALARY * 12)
where employee.BONUS IS NULL;

SELECT
		e.EMP_NAME
	  , j.JOB_NAME
      , e.SALARY
      , e.Y_SAL
  FROM employee e
  JOIN JOB j ON (e.JOB_CODE = j.JOB_CODE)
  JOIN SAL_GRADE s ON (e.SAL_LEVEL = s.SAL_LEVEL)
 WHERE e.SALARY > s.MIN_SAL;
 
-- 6. 한국(KO)과 일본(JP)에 근무하는 직원들의 
-- 사원명, 부서명, 지역명, 국가명을 조회하시오.(15명)
SELECT
	     e.EMP_NAME
	   , d.DEPT_TITLE
      , l.LOCAL_NAME
      , n.NATIONAL_NAME
  FROM employee e
  JOIN JOB j ON (e.JOB_CODE = j.JOB_CODE)
  JOIN DEPARTMENT d ON (e.DEPT_CODE = d.DEPT_ID)
  JOIN LOCATION l ON (d.LOCATION_ID = l.LOCAL_CODE)
  JOIN NATIONAL n ON (n.NATIONAL_CODE = l.NATIONAL_CODE)
 where n.NATIONAL_NAME IN ('한국','일본'); 

-- 7. 같은 부서에 근무하는 직원들의 사원명, 부서코드, 동료이름을 조회하시오.
-- self join 사용(60명)
SELECT
		  e.EMP_NAME
		, e.DEPT_CODE
		, e2.EMP_NAME
  FROM employee e
  JOIN employee e2 ON (e.DEPT_CODE = e2.DEPT_CODE)
 WHERE e.EMP_NAME != e2.EMP_NAME;


-- 8. 보너스포인트가 없는 직원들 중에서 직급코드가 J4와 J7인 직원들의 사원명, 직급명, 급여를 조회하시오.
-- 단, join과 IN 사용할 것(8명)



-- 9. 직급이 대리이면서 아시아 지역(ASIA1, ASIA2, ASIA3 모두 해당)에 근무하는 직원 조회
-- 사번(EMPLOYEE.EMP_ID), 이름(EMPLOYEE.EMP_NAME), 직급명(JOB.JOB_NAME), 부서명(DEPARTMENT.DEPT_TITLE),
-- 근무지역명(LOCATION.LOCAL_NAME), 급여(EMPLOYEE.SALARY)를 조회하시오
-- (해당 컬럼을 찾고, 해당 컬럼을 지닌 테이블들을 찾고, 테이블들을 어떤 순서로 조인해야 하는지 고민하고 SQL문을 작성할 것) 

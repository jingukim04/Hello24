--EQUI JOIN
-- 공통 컬럼을 비교해서 같은 값(equal)을 가지는 행을 연결하여 결과를 생성하는 조인 방식

--사원의 부서 정보( 부서명, ...)
SELECT * FROM emp;
SELECT * FROM dept;

SELECT emp.*, dept.*
    FROM emp, dept
    WHERE emp.deptno = dept.deptno; 
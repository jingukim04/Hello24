--EQUI JOIN
-- 공통 컬럼을 비교해서 같은 값(equal)을 가지는 행을 연결하여 결과를 생성하는 조인 방식

--사원의 부서 정보( 부서명, ...)
SELECT * FROM emp;
SELECT * FROM dept;

SELECT emp.*, dept.*
    FROM emp, dept
    WHERE emp.deptno = dept.deptno;     --부서코드
    
SELECT e.empno, e.ename, e.deptno, d.deptno, d.dname
    FROM  emp e, dept d
    WHERE e.deptno = d.deptno; 

INSERT INTO dept VALUES(50, 'MARKETING', 'KOREA');
INSERT INTO emp VALUES (8101, 'TOMS', 'CASHIER', 7839, sysdate, 4500, 450, 50); 
COMMIT;

-- 사원의 부서정보(50)을 출력
SELECT e.empno, e.ename, e.deptno, d.deptno, d.dname
    FROM  emp e, dept d
    WHERE e.deptno = d.deptno
    AND e.deptno = 50; 
    
SELECT e.empno, e.ename, e.deptno, d.deptno, d.dname
    FROM  emp e, dept d
    WHERE e.deptno = d.deptno
    AND e.deptno in (30, 50) ; 


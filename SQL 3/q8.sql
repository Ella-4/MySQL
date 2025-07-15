SELECT *
FROM emp
WHERE sal IN (SELECT MAX(sal) FROM emp GROUP BY deptno);
-- 각 부서별 급여를 제일 많이 받는 사원의 월급을 받는 사원들을 조회하는 쿼리를 작성해주세요.

SELECT e1.*
FROM emp AS e1,
(SELECT deptno, max(sal) as max_sal from emp group by deptno) as e2
where e1.sal = e2.max_sal
and e1.deptno = e2.deptno;
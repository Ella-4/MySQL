# MySQL Database Fundamentals: Essential SQL Practice (with DBScaver)

이 프로젝트는 MySQL 환경에서 DBScaver를 사용하여 데이터베이스의 **핵심 개념과 필수 SQL 쿼리**를 실습하는 코드 모음입니다. 데이터베이스 생성부터 기본적인 데이터 조작 및 조회에 이르기까지 폭넓은 SQL 활용 방법을 다룹니다.

## 프로젝트 목표

본 프로젝트는 다음과 같은 데이터베이스 및 SQL 학습 목표를 가지고 있습니다.

  * **데이터베이스 설계 및 구축:** 공유 킥보드 서비스와 같은 실제 시나리오를 기반으로 테이블을 정의하고, 데이터를 삽입하며, 스키마를 변경하는 방법을 학습합니다.
  * **다양한 데이터 조회 및 분석:** `SELECT`, `WHERE`, `GROUP BY`, `HAVING`, `JOIN`, 서브쿼리(단일 행, 다중 행, 스칼라, 연관), 집합 연산자(UNION, INTERSECT, EXCEPT), 계층형 질의, 윈도우 함수 등 다양한 SQL 구문을 활용하여 데이터를 효율적으로 조회하고 분석하는 능력을 기릅니다.
  * **MySQL 환경 실습:** MySQL에 특화된 명령어(`SHOW`)를 포함하여 실제 데이터베이스 환경에서 쿼리를 실행하고 결과를 확인하는 경험을 제공합니다.

## 주요 기능 및 다루는 SQL 개념

이 프로젝트는 다음과 같은 SQL 개념들을 포함합니다.

### 1\. 데이터 정의어 (DDL)

  * **테이블 생성:** `kickboard`, `customer`, `rental` 등 다양한 테이블을 정의합니다.
  * **테이블 구조 변경:** `ALTER TABLE`을 이용하여 컬럼 추가, 데이터 타입 변경, 제약 조건(NOT NULL) 수정, 컬럼 이름 변경, 컬럼 삭제, 테이블 이름 변경 등을 실습합니다.
  * **테이블 확인:** `SHOW TABLES`, `DESC` 명령어를 통해 테이블 목록 및 구조를 확인합니다.

### 2\. 데이터 조작어 (DML)

  * **데이터 삽입:** `INSERT INTO` 구문을 사용하여 테이블에 데이터를 추가합니다.
  * **데이터 업데이트:** `UPDATE` 문을 사용하여 특정 조건에 맞는 데이터를 수정합니다.
  * **데이터 삭제:** `DELETE FROM` 문을 사용하여 데이터를 삭제합니다.

### 3\. 데이터 질의어 (DQL)

  * **기본 조회:** `SELECT` 문을 이용한 특정 컬럼 또는 모든 컬럼 조회.
  * **조건부 조회:** `WHERE` 절을 이용한 단일 및 복수 조건 검색 (예: 수학 점수 80점 초과, 국어 점수 90점 이상).
  * **와일드카드 검색:** `LIKE` 및 와일드카드(`%`, `_`)를 이용한 패턴 매칭 검색.
  * **정렬:** `ORDER BY`를 이용한 결과 정렬 (오름차순 `ASC`, 내림차순 `DESC`).
  * **집계 함수:** `COUNT`, `SUM`, `AVG`, `MAX`, `MIN` 등의 함수를 사용하여 데이터를 집계합니다.
  * **데이터 그룹화:** `GROUP BY`를 사용하여 데이터를 그룹별로 묶고, `HAVING`을 통해 그룹에 조건을 적용합니다.
  * **조인 (JOIN):**
      * **`INNER JOIN`:** 두 테이블의 교집합을 조회합니다.
      * **`LEFT JOIN` / `RIGHT JOIN`:** 한 테이블을 기준으로 다른 테이블의 데이터를 연결하여 조회합니다.
      * **`USING` 절:** 조인 조건에 사용될 컬럼 이름이 양쪽 테이블에 동일할 때 간결하게 조인합니다.
      * **`ON` 절:** 복잡한 조인 조건을 명시합니다.
  * **서브쿼리 (Subquery):**
      * **단일 행 서브쿼리:** 서브쿼리 결과가 1개의 행만 반환될 때 사용합니다.
      * **다중 행 서브쿼리:** 서브쿼리 결과가 여러 행을 반환할 때 `IN`, `ANY`, `ALL` 연산자와 함께 사용합니다.
      * **스칼라 서브쿼리:** `SELECT` 절에서 단일 값을 반환하는 서브쿼리입니다.
      * **연관 서브쿼리:** 메인 쿼리의 결과에 따라 서브쿼리가 실행되는 방식입니다.
  * **집합 연산자 (Set Operators):**
      * **`UNION` / `UNION ALL`:** 두 쿼리의 결과를 합칩니다 (`UNION`은 중복 제거, `UNION ALL`은 중복 유지).
      * **`INTERSECT`:** 두 쿼리의 공통된 결과를 조회합니다.
      * **`EXCEPT` (또는 `MINUS`):** 한 쿼리에는 존재하고 다른 쿼리에는 존재하지 않는 결과를 조회합니다.
  * **계층형 질의:** `WITH RECURSIVE`를 사용하여 계층 구조의 데이터를 조회합니다 (예: 멘토-멘티 관계, 관리자-직원 관계).
  * **윈도우 함수 (Window Functions):**
      * `ROW_NUMBER`, `RANK`, `DENSE_RANK`, `NTILE` 등을 사용하여 데이터를 특정 기준에 따라 순위를 매기거나 그룹으로 나눕니다.
      * `LAG`, `LEAD`를 사용하여 이전 또는 다음 행의 데이터를 참조합니다.
      * `FIRST_VALUE`, `LAST_VALUE`, `NTH_VALUE` 등을 사용하여 윈도우 내의 특정 값을 가져옵니다.
      * `CUME_DIST`, `PERCENT_RANK`를 사용하여 누적 분포 및 백분위 순위를 계산합니다.
      * `RATIO_TO_REPORT`를 사용하여 전체 대비 비율을 계산합니다.
      * `PIVOT`을 사용하여 행 데이터를 열 데이터로 전환합니다.
      * `JSON_OBJECT`, `JSON_ARRAYAGG` 등 JSON 함수를 활용합니다.

## 사용 기술 및 환경

  * **데이터베이스:** MySQL
  * **SQL 클라이언트/도구:** DBScaver (이 프로젝트의 코드들이 DBScaver 환경에서 실습됨을 명시하고 있습니다.)

## 사용 예시

각 `.md` 파일은 특정 SQL 개념에 대한 실습 문제를 포함하고 있습니다. 각 파일의 지시사항에 따라 SQL 쿼리를 작성하고 실행하여 데이터베이스 조작 및 조회 방법을 연습했습니다.

**각 실습 문제에 대한 답안은 `sql1`, `sql2`, `sql3`, `sql4` 폴더 내에 별도로 정리되어 있습니다.**

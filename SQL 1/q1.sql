-- 1. 데이터베이스 생성
CREATE DATABASE kickboard_service;

-- 2. 생성된 데이터베이스 목록 확인
SHOW DATABASES;

-- 3. 새로 생성한 데이터베이스 선택
USE kickboard_service;

-- 4. 이제 kickboard 테이블 생성 코드 실행
CREATE TABLE kickboard(
    member_id VARCHAR(16),
    member_name VARCHAR(16),
    kickboard_id VARCHAR(16),
    kickboard_brand VARCHAR(16),  
    rental_location VARCHAR(32),  
    rental_date DATETIME,
    distance INT,
    price INT
);

-- 5. 테이블 목록 확인
SHOW TABLES;

-- 6. kickboard 테이블 구조 확인
DESC kickboard;
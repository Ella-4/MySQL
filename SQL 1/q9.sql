-- borrow 테이블을 정의하세요.
CREATE TABLE borrow (
    customer_number VARCHAR(10), -- ERD에 맞춰 customer_number로 변경, 타입도 customer.customer_id에 맞춰 VARCHAR(10)
    rental_time DATETIME,
    rental_status VARCHAR(10) NOT NULL, -- ENUM 대신 ERD에 맞춰 VARCHAR(10)
    rental_location VARCHAR(20) NOT NULL,
    kickboard_id VARCHAR(10),
    CONSTRAINT borrow_pk PRIMARY KEY (customer_number, rental_time), -- 복합키 설정 (customer_number로 변경)
    FOREIGN KEY (customer_number) REFERENCES customer(customer_id), -- customer 테이블의 PK인 customer_id를 참조하도록 변경
    FOREIGN KEY (kickboard_id) REFERENCES kickboard(id)
);

-- 정의한 테이블과 외래키 제약 조건을 확인하는 코드입니다. 아래 주석을 해제하여 결과를 확인하세요.
SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_TYPE = 'FOREIGN KEY';
DESC borrow;

-- 정의한 테이블에 데이터가 올바르게 삽입되는지 확인해보세요.
INSERT INTO customer
VALUES('0187642351', '김민준', 'kmax6', 'HASH-lui235dfi2', '08786173448', '1989-03-09');
INSERT INTO kickboard
VALUES('7YWC', 'boardkick', 2015, 100, 1000, 'elice');
INSERT INTO borrow
VALUES('0187642351', '2020-08-20 13:01:02', '대여', '서울시 강남구 역삼동', '7YWC');
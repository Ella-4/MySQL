-- DESC 명령어를 통해 정의된 kickboard 테이블을 확인할 수 있습니다.
DESC kickboard;

-- kickboard 테이블에 member_birthday 컬럼을 추가하세요.
ALTER TABLE kickboard ADD COLUMN member_birthday DATE NULL;

-- rental_date 속성의 데이터 타입을 TIME으로 수정하세요
ALTER TABLE kickboard MODIFY COLUMN rental_date TIME NULL;

-- member_id와 kickboard_id 컬럼의 제약 조건을 NOT NULL로 수정하세요.
ALTER TABLE kickboard MODIFY COLUMN member_id VARCHAR(16) NOT NULL;
ALTER TABLE kickboard MODIFY COLUMN kickboard_id VARCHAR(16) NOT NULL; -- 분리하여 작성

-- kickboard_id와 kickboard_brand 컬럼의 이름을 변경하세요.
ALTER TABLE kickboard CHANGE COLUMN kickboard_id id VARCHAR(16) NOT NULL;
ALTER TABLE kickboard CHANGE COLUMN kickboard_brand brand VARCHAR(16) NULL; -- 이 부분은 문제 5에서 NOT NULL이 될 예정이므로, 현재 NULL이어도 무방

-- distance 컬럼을 삭제하세요.
ALTER TABLE kickboard DROP COLUMN distance;

-- 수정된 kickboard 테이블의 구조를 확인해봅니다. 제출 시 아래 주석을 해제하세요.
DESC kickboard;
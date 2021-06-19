-- 카테고리 테이블
create table category(
stage NUMBER, -- 단계 depth
catename VARCHAR2(50), -- 카테고리명
product_category1 NUMBER PRIMARY KEY, -- 카테고리1, 기본키
product_category2 NUMBER -- 카테고리2
);
CREATE SEQUENCE seq_category nocycle nocache;


-- 제품 테이블
CREATE TABLE product(
id NUMBER PRIMARY KEY,
product_name VARCHAR2(50), -- 제품명
product_price NUMBER, --가격
product_category1 NUMBER(10), -- 카테고리1
product_category2 NUMBER(10) -- 카테고리2
);
CREATE SEQUENCE seq_product nocycle nocache;



-- 회원 테이블
create table member(
id NUMBER primary key, —기본키
email varchar2(50), --이메일 = 아이디
name varchar2(30), -- 이름(수령인)
password varchar2(30), -- 비밀번호(암호화 필수)
phone varchar2(30), -- 전화번호
zipcode varchar2(10), -- 우편번호
addr1 varchar2(100), -- 주소1
addr2 varchar2(100), -- 주소2
birthday date, -- 생일(생일쿠폰용)
created_at date) -- 생성일
;
create sequence seq_member nocycle nocache;


-- 장바구니, 위시리스트
CREATE TABLE cart(
	id NUMBER PRIMARY KEY,               
	member_id VARCHAR2(80),  -- 회원아이디
	product_id VARCHAR2(80), -- 상품아이디
	product_count NUMBER -- 상품개수 (재고)
);

create table wishlist(
	id NUMBER PRIMARY KEY,               
	member_id VARCHAR2(80),  -- 회원아이디
	product_id VARCHAR2(80) -- 상품아이디
);

create table member(
id NUMBER primary key, —기본키
email varchar2(50), --이메일 = 아이디
name varchar2(30), -- 이름(수령인)
password varchar2(30), -- 비밀번호(암호화 필수)
phone varchar2(30), -- 전화번호
zipcode varchar2(10), -- 우편번호
addr1 varchar2(100), -- 주소1
addr2 varchar2(100), -- 주소2
birthday date, -- 생일(생일쿠폰용)
created_at date) -- 생성일
;
create sequence seq_member nocycle nocache;


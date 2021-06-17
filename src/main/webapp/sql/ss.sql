-- 상품 문의 테이블 + 댓글
create table product_qna (
   id NUMBER primary key, -- 기본키, 문의seq
   email varchar2(50), -- 이메일=아이디 ... 누가 문의를 남겼는지
    product_id VARCHAR2(80), -- 제품명 ... 어떤 상품에 대한 문의인지 
   qna_subject varchar2(100),  -- 문의의 제목
   qna_content varchar2(500), -- 문의의 내용
   created_at date, -- 등록일
   reply number -- 댓글 수
);
create table product_qna_comment (
   id NUMBER primary key, -- 기본키, 문의seq
   product_qna_id NUMBER, -- 문의글번호
   qna_answer varchar2(500), -- 답변
   created_at date -- 등록일
);


-- 리뷰 테이블
create table REVIEW (
id NUMBER, -- seq
email varchar2(50), -- 작성자
product_id NUMBER, -- 상품코드(DB검색용)
product_name varchar2(80), -- 상품명(출력용)
review_stars NUMBER, -- 별점(1~5)
review_content varchar2(200), --리뷰 내용
review_image varchar2(100), -- 리뷰 이미지
created_at date -- 등록일
); 
create sequence seq_review nocycle nocache;



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

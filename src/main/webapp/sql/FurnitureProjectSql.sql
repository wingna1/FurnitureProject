---------------------------------------------------------------

카테고리 1과 2로 나눈 이유

 - 상품 테이블에 컬럼으로 카테고리1(101, 102, 201, 202...)과 카테고리2(100, 200, 300...)가 들어감
 - 100, 200, 300 은 대 분류이고 100(ex.침대) 분류 안에 101(ex.2층형침대), 102(ex.1층형침대), 103(ex.수납형침대)... 가 들어감
->그래서 셀렉트 시 100으로 검색하면 101, 102, 103... 전부가 나옴
->셀렉트 시 101 로 검색하면 2층형 침대만 나옴.

---------------------------------------------------------------

-- 카테고리 테이블
create table category(
stage NUMBER, -- 단계 depth
catename VARCHAR2(50), -- 카테고리명
product_category1 NUMBER PRIMARY KEY, -- 카테고리1, 기본키
product_category2 NUMBER -- 카테고리2
);


상품 테이블
CREATE TABLE product(
id NUMBER PRIMARY KEY,
product_name VARCHAR2(50), -- 제품명
product_price NUMBER, --가격
product_category1 NUMBER(10), -- 카테고리1
product_category2 NUMBER(10) -- 카테고리2
product_img VARCHAR2(1000)
);
상품 seq문
CREATE SEQUENCE seq_category nocycle nocache;

---------------------------------------------------------------

insert into category (stage, catename, product_category1) values (1, '침대', 100);
insert into category values (2, '소파베드', 101, 100);
insert into category values (2, '수납형침대', 102, 100);
insert into category values (2, '간이형침대', 103, 100);

insert into category (stage, catename, product_category1) values (1, '소파', 200);
insert into category values (2, '패브릭소파', 201, 200);
insert into category values (2, '모듈식소파', 202, 200);
insert into category values (2, '천연/인조가죽 소파', 203, 200);

insert into category (stage, catename, product_category1) values (1, '책장/선반유닛', 300);
insert into category values (2, '큐브형수납', 301, 300);
insert into category values (2, '선반유닛', 302, 300);
insert into category values (2, '책장', 303, 300);
insert into category values (2, '수납선반/유닛', 304, 300);

insert into category (stage, catename, product_category1) values (1, '식탁/책상', 400);
insert into category values (2, '책상/컴퓨터책상', 401, 400);
insert into category values (2, '침대협탁', 402, 400);
insert into category values (2, '식탁세트', 403, 400);
insert into category values (2, '화장대', 404, 400);
insert into category values (2, '카페테이블', 405, 400);

insert into category (stage, catename, product_category1) values (1, '수납장/장식장', 500);
insert into category values (2, '거실장/천장', 501, 500);
insert into category values (2, '장식장', 502, 500);
insert into category values (2, '수납장', 503, 500);
insert into category values (2, '서랍장', 504, 500);

insert into category (stage, catename, product_category1) values (1, '옷장', 600);
insert into category values (2, '여닫이옷장', 601, 600);
insert into category values (2, '미닫이옷장', 602, 600);
insert into category values (2, '거울옷장', 603, 600);
insert into category values (2, '드레스룸옷장', 604, 600);
insert into category values (2, '선반형옷장', 605, 600);

insert into category (stage, catename, product_category1) values (1, '의자', 700);
insert into category values (2, '사무용의자', 701, 700);
insert into category values (2, '식탁의자', 702, 700);
insert into category values (2, '스툴/벤치', 703, 700);
insert into category values (2, '바의자', 704, 700);
insert into category values (2, '카페의자', 705, 700);

---------------------------------------------------------------
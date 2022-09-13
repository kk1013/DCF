# DCF Project

## 2022-09-13 회의 내용
```
--  상품
CREATE TABLE DCF_PRODUCT(
product_idx         number(4) primary key,	-상품 고유 번호
product_name        varchar2(200),		-상품 이름
product_price       number(10),		-상품 가격
product_image       varchar2(30),		-상품 이미지
product_content     varchar2(1000),		-상품 내용
product_age         number(10),		-상품 카테고리 - 0:전체연령, 1:베이비, 2:어덜트, 3:시니어
product_type        number(1),              	-상품 카테고리 - 사료타입 건식:0, 습식:1
product_size        varchar2(10),		-상품 카테고리 - 반려동물 0:초소형 , 1:소형, 2:중형, 3:대형, 4:초대형
product_animal      number(1),              	-상품 카테고리 - 반려동물타입 반려견:0, 반려묘:1
product_new         number(1) default 0,          -상품 카테고리 - 신상품 Off: 0,     On : 1
product_sale        number(1) default 0,           -상품 카테고리 - 세일 off: 0,     On : 1
product_hit         number(5));		-상품 조회수
```
### DB추가
product_feed_or_snack number(1)		-상품 카테고리 - 간식 0:사료, 1:간식  
product_date	date default sysdate	-상품 등록일 sysdate  
product_sample	number(1)		-상품 샘플 여부 0:false , 1:true  

주문목록 추가  
order_user_idx  
DB추가테이블  
one2one_reply  

### 반려견, 반려묘 나이 값
{"value":0,"title":"모든 연령","age":"0"},  
{"value":1,"title":"1주","age":"1"},  
{"value":2,"title":"생후 2주","age":"2"},  
{"value":3,"title":"생후 3주","age":"3"},  
{"value":4,"title":"4주","age":"4"},  
{"value":5,"title":"생후 5주","age":"5"},  
{"value":6,"title":"생후 6주","age":"6"},  
{"value":7,"title":"생후 7주","age":"7"},  
{"value":8,"title":"생후 8주","age":"8"},  
{"value":8.7,"title":"생후 2개월","age":"8.7"},  
{"value":13,"title":"생후 3개월","age":"13"},  
{"value":17.4,"title":"4개월","age":"17.4"},  
{"value":21.7,"title":"5개월","age":"21.7"},  
{"value":26.1,"title":"6개월","age":"26.1"},  
{"value":30.4,"title":"생후 7개월","age":"30.4"},  
{"value":34.8,"title":"8개월","age":"34.8"},  
{"value":39.1,"title":"생후 9개월","age":"39.1"},  
{"value":43.5,"title":"생후 10개월","age":"43.5"},  
{"value":47.8,"title":"11개월","age":"47.8"},  
{"value":52.2,"title":"생후 12개월","age":"52.2"},  
{"value":56.5,"title":"13개월","age":"56.5"},  
{"value":60.9,"title":"생후 14개월","age":"60.9"},  
{"value":65.2,"title":"생후 15개월","age":"65.2"},  
{"value":69.6,"title":"생후 16개월","age":"69.6"},  
{"value":73.9,"title":"생후 17개월","age":"73.9"},  
{"value":78.3,"title":"생후 18개월","age":"78.3"},  
{"value":82.6,"title":"생후 19개월","age":"82.6"},  
{"value":87,"title":"생후 20개월","age":"87"},  
{"value":91.3,"title":"21개월","age":"91.3"},  
{"value":95.7,"title":"생후 22개월","age":"95.7"},  
{"value":100,"title":"생후 23개월","age":"100"},  
{"value":104.4,"title":"생후 24개월","age":"104.4"},  
{"value":156.5,"title":"3년","age":"156.5"},  
{"value":208,"title":"4세","age":"208"},  
{"value":260,"title":"5년","age":"260"},  
{"value":312,"title":"6세","age":"312"},  
{"value":364,"title":"7세","age":"364"},  
{"value":416,"title":"8세","age":"416"},  
{"value":468,"title":"9세","age":"468"},  
{"value":520,"title":"10세","age":"520"}  
                                    
### 현재 남아있는 일!!!
샘플신청 페이지 검색 기능!  
헤더 마이페이지->서브메뉴, 장바구니 아이콘으로 변경  
장바구니 페이지디자인을 HTML구현  
git 정리  
1:1문의 목록 보기 HTML구현  
카테고리 검색후 type버튼 및에 div 추가후 카테고리 보기 추가!!  
상품정보 카테고리 구현  
 

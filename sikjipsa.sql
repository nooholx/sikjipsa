--------------------------------------------------------
--  파일이 생성됨 - 금요일-3월-31-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table GARDEN_LOC
--------------------------------------------------------

  CREATE TABLE "SIKJIPSA"."GARDEN_LOC" 
   (	"GARDEN_NAME" VARCHAR2(300 BYTE), 
	"GARDEN_PLACE" VARCHAR2(300 BYTE), 
	"GARDEN_PHONE" VARCHAR2(300 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HOSPITAL_LOC
--------------------------------------------------------

  CREATE TABLE "SIKJIPSA"."HOSPITAL_LOC" 
   (	"HOSPITAL_NAME" VARCHAR2(300 BYTE), 
	"HOSPITAL_PLACE" VARCHAR2(300 BYTE), 
	"HOSPITAL_PHONE" VARCHAR2(300 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "SIKJIPSA"."MEMBER" 
   (	"MEM_ID" VARCHAR2(15 BYTE), 
	"MEM_PASS" VARCHAR2(15 BYTE), 
	"MEM_NAME" VARCHAR2(20 BYTE), 
	"MEM_ADD1" VARCHAR2(100 BYTE), 
	"MEM_MAIL" VARCHAR2(60 BYTE), 
	"MEM_DELETE" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table POST2
--------------------------------------------------------

  CREATE TABLE "SIKJIPSA"."POST2" 
   (	"POST2_NO" VARCHAR2(50 BYTE), 
	"POST2_CONTENT" VARCHAR2(4000 BYTE), 
	"POST2_DATE" DATE DEFAULT SYSDATE, 
	"POST2_TITLE" VARCHAR2(50 BYTE), 
	"IMG_FULLNAME" VARCHAR2(500 BYTE), 
	"POST2_COUNT" NUMBER(10,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SHOP_LOC
--------------------------------------------------------

  CREATE TABLE "SIKJIPSA"."SHOP_LOC" 
   (	"SHOP_NAME" VARCHAR2(300 BYTE), 
	"SHOP_PLACE" VARCHAR2(300 BYTE), 
	"SHOP_PHONE" VARCHAR2(300 BYTE), 
	"SHOP_CLASS" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SIKJIPSA.GARDEN_LOC
SET DEFINE OFF;
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('국립수목원','경기도 포천시 소흘읍 광릉수목원로 509','031-540-2000');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('국립백두대간수목원','경북 봉화군 춘양면 문수로 2160-53','054-679-1000');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('국립세종수목원','세종특별자치시 연기면 수목원로 136','044-251-0001');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('국립한국자생식물원','강원도 평창군 대관령명 비안길 159-4','033-332-7069');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('푸른수목원','서울 구로구 연동로 240','02-2686-3200');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('서울식물원','서울특별시 강서구 마곡동로 161','02-2104-9716');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('화명수목원','부산광역시 북구 산성로 299','051-362-0261');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('대구수목원','대구광역시 달서구 화암로 342','053-803-7270');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('인천수목원','인천광역시 남동구 무네미로 236','032-440-5853');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('석모도수목원','인천광역시 강화군 삼산북로449번길 161','032-932-5432');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('한밭수목원','대전광역시 서구 둔산대로 169','042-472-4972');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('물향기수목원','경기도 오산시 수청동 282','031-378-1261');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('황학산수목원','경기도 여주시 황학산수목원길 73','031-887-2740');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('부천무릉도원수목원','경기도 부천시 원미구 춘의동 382','032-625-3502');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('화성시우리꽃식물원','경기도 화성시 팔탄면 3.1만세로 777-17','031-369-6161');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('서울대공원식물원','경기도 과천시 대공원광장로 102','02-500-7560');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('바다향기수목원','경기도 안산시 단원구 선감로 205-5','031-8008-6795');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('강원도립화목원','강원도 춘천시 화목원길 24','033-248-6691');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('강릉솔향수목원','강원도 강릉시 구정면 수목원길 156','033-660-2324');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('백두대간생태수목원','강원도 정선군 임계면 화천동길 351-100','033-563-9011');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('동화마을수목원','강원도 원주시 문막읍 동화골길 170','033-737-3641');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('홍천무궁화수목원','강원도 홍천군 북방면 영서로 2937-12','033-430-2777');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('양구수목원','강원도 양구군 동면 숨골로310번길 132','033-480-2529');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('미동산수목원','충청북도 청주시 상당구 미원면 수목원길 51','043-220-6101');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('금강수목원','세종특별자치시 금남면 산림박물관길110','041-635-7400');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('안면도수목원','충청남도 태안군 안면읍 안면대로 3195-6','041-635-7292');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('영인산수목원','충청남도 아산시 영인면 아산온천로 16-26','041-537-3946');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('봉수산수목원','충청남도 예산군 대흥면 임존성길110-16','041-339-7622');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('삼선산수목원','충청남도 당진시 고대면 삼선산수목원길79','041-350-4211');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('보령무궁화수목원','충청남도 보령시 성주면 성주산로 318-57','041-931-6092');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('대아수목원','전라북도 완주군 동상면 대아수목로 94-34','063-243-1951');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('고원수목원','전라북도 진안군 백운면 덕현로 45-54','063-290-5494');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('완도수목원','전라남도 완도군 군외면 초평1길 156','061-552-1544');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('구례수목원','전라남도 구례군 산동면 탑동1길 125','061-783-0599');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('경상북도수목원','경상북도 포항시 북구 죽장면 수목원로 647','054-260-6100');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('경상남도수목원','경상남도 진주시 이반성면 수목원로 386','055-254-3811');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('금원산생태수목원','경상남도 거창군 위천면 금원산길 412','055-254-3964');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('황매산수목원','경상남도 합천군 가회면 황매산공원길264-17','055-930-4759');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('창원수목원','경상남도 창원시 의창구 삼동동 197','055-255-4463');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('한라수목원','제주특별자치도 제주시 수목원길 72','064-710-7575');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('울산테마식물·수목원','울산광역시 동구 쇠평길 33-1','052-235-8585');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('베어트리파크수목원','세종특별자치시 전동면 신송로 217','044-866-7766');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('한택식물원','경기도 용인시 처인구 백암면 한택로 2','031-333-3558');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('들꽃수목원','경기도 양평군 양평읍 수목원길 16','031-772-1800');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('평강식물원','경기도 포천시 영북면 우물목길 203','031-531-7751');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('아침고요수목원','경기도 가평군 상면 수목원로 432','1544-6703');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('장흥자생수목원','경기도 양주시 장흥면 권율로 309번길 167-35','031-826-0933');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('곤지암수목원(화담숲)','경기도 광주시 도척면 도척윗로 278','031-8026-6666');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('용도수목원','경기도 시흥시 밭뒤길 32','031-313-9090');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('산들소리수목원','경기도 남양주시 불암산로 59번길 48-31','031-574-3252');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('덕평공룡수목원','경기도 이천시 마장면 작촌로 282','031-633-5029');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('상림수목원','경경기도 광주시 태성로 130-43','070-4319-5722');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('제이드가든','강원도 춘천시 남산면 햇골길80','033-260-8323');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('천리포수목원','충청남도 태안군 소원면 천리포1길 187','041-672-9985');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('고운식물원','충청남도 청양군 청양읍 식물원길 398-23','041-943-6245');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('그림같은수목원','충청남도 홍성군 광천읍 충서로 400번길 102-36','041-641-1477');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('한국도로공사수목원','전라북도 전주시 덕진구 번영로 462-45','063-212-0652');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('아담원','전라북도 남원시 이백면 목가길 193','063-635-8342');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('정남진수목원','전라남도 장흥군 대덕읍 신흥1길 3-98','062-716-1146');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('상상수목원','전라남도 화순군 이서면 영평리 773-1','061-375-0380');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('나주은행나무수목원','전라남도 나주시 남평읍 동촌로236-42','061-333-7788');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('해남포레스트수목원','전라남도 해남군 현산면 봉동길 232-118','061-533-7220');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('기청산식물원','경상북도 포항시 북구 청하면 청하로 175번길 50','054-232-4129');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('사유원','경상북도 군위군 부계면 치산효령로 1150','053-589-1276');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('세아조각수목원','경상북도 칠곡군 석적읍 호국로 605-42','054-975-5500');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('진해보타닉뮤지엄','경상남도 창원시 진해구 진해대로 1137번길 89','055-264-4337');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('상효원','제주특별자치도 서귀포시 산록남로 2847-37','064-733-2200');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('솔트리수목원','제주특별자치도 제주시 구좌읍 번영로 2063','064-784-0989');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('서울대 관악수목원','경기도 안양시 만안구 예술공원로 280','031-473-0071');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('신구대학식물원','경기도 성남시 수정구 적푸리로 9','031-723-6677');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('원광대학교자연식물원','전라북도 익산시 익산대로 501','063-850-5043');
REM INSERTING into SIKJIPSA.HOSPITAL_LOC
SET DEFINE OFF;
Insert into SIKJIPSA.HOSPITAL_LOC (HOSPITAL_NAME,HOSPITAL_PLACE,HOSPITAL_PHONE) values ('허밍그린 ','서울 마포구 서강로 63 1층','0507-1305-8541');
Insert into SIKJIPSA.HOSPITAL_LOC (HOSPITAL_NAME,HOSPITAL_PLACE,HOSPITAL_PHONE) values ('닥터식물병원','경기 광주시 곤지암읍 곤지암천로 143','031-797-6243');
Insert into SIKJIPSA.HOSPITAL_LOC (HOSPITAL_NAME,HOSPITAL_PLACE,HOSPITAL_PHONE) values ('안동대학교 식물종합병원','경북 안동시 경동로 1375','054-820-7747');
Insert into SIKJIPSA.HOSPITAL_LOC (HOSPITAL_NAME,HOSPITAL_PLACE,HOSPITAL_PHONE) values ('대전시화분병원(대전시청)','대전광역시 서구 둔산로 100','042-270-2396');
Insert into SIKJIPSA.HOSPITAL_LOC (HOSPITAL_NAME,HOSPITAL_PLACE,HOSPITAL_PHONE) values ('사이버식물병원','경기도 화성시 병점중앙로 283-33','031-8008-9354');
REM INSERTING into SIKJIPSA.MEMBER
SET DEFINE OFF;
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('abcd1111','1111','홍길동','광주광역시 동구','ddd@naver.com',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('11111','1111','111111','111','111111',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('avcd1234','dfasdf','dsfasd','dsfas','dafasdf',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('a001','asdfasdf','김은대','대전시 동구 용운동','pyoedab@lycos.co.kr',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('c001','7777','신용환','대전광역시 중구 대흥동','kyh01@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('d001','123joy','성윤미','대전시 중구 하늘동 ','dbs81f@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('e001','0','이혜나','대전시 대덕구 읍내동','bosiang@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('f001','12345678','신영남','대전광역시 대흥동','SUPER-KHG@HANMAIL.NET',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('g001','1456','송경희','충남금산군 제원면','lim052@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('h001','9999','라준호','충남 논산시 양촌면','wingl7@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('i001','1111','최지현','대전시 동구 가양1동','pan@orgio.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('j001','6262','김윤희','대전시 서구 삼천동','maxsys@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('k001','7227','오철희','대전시 대덕구 대화동','equus@orgio.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('l001','12345678','구길동','충남금산군 금산읍','email815@hanmail.co.kr',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('m001','pass','박지은','대전광역시 서구 갈마동','happy@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('n001','1111','탁원재','대전시 동구 자양동','ping75@unitel.co.kr',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('o001','909','배인정','대전시 서구 갈마동','tar-song@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('p001','sahra3','오성순','대전유성구송강동','sahra235@intz.com',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('q001','0','육평회','대구광역시 대덕구 중리동','kph@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('r001','park1005','정은실','대전시 동구 용전동','econie@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('s001','819','안은정','대구광역시 서구 탄방동','songej@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('t001','506','성원태','대전광역시 중구 유천동','bob6@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('u001','1000','김성욱','대전시 동구 용전동','pss576@orgio.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('v001','1111','이진영','대전시 동구 용전동','gagsong@orgio.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('w001','12341234','김형모','대전시 대덕구 연축동','songone@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('x001','0','진현경','대전광역시 동구 오정동','happysong@hanmail.net',null);
REM INSERTING into SIKJIPSA.POST2
SET DEFINE OFF;
Insert into SIKJIPSA.POST2 (POST2_NO,POST2_CONTENT,POST2_DATE,POST2_TITLE,IMG_FULLNAME,POST2_COUNT) values ('202303301','삭제용',to_date('23/03/30','RR/MM/DD'),'삭제 테스트용',null,1);
Insert into SIKJIPSA.POST2 (POST2_NO,POST2_CONTENT,POST2_DATE,POST2_TITLE,IMG_FULLNAME,POST2_COUNT) values ('2023033039','이미지 올려보기',to_date('23/03/30','RR/MM/DD'),'이미지 업로드 테스트','/static/storyapp/file_manager/깨달음_Mv8QZ0O.png',1);
Insert into SIKJIPSA.POST2 (POST2_NO,POST2_CONTENT,POST2_DATE,POST2_TITLE,IMG_FULLNAME,POST2_COUNT) values ('2023033066','1234',to_date('23/03/30','RR/MM/DD'),'추천용','/static/storyapp/file_manager/default_bono_fhNKAVA.png',14);
Insert into SIKJIPSA.POST2 (POST2_NO,POST2_CONTENT,POST2_DATE,POST2_TITLE,IMG_FULLNAME,POST2_COUNT) values ('2023033129','ㅎㅎ',to_date('23/03/31','RR/MM/DD'),'벚꽃','/static/storyapp/file_manager/KakaoTalk_20230326_231149973_06_8zeMKtM.jpg',0);
Insert into SIKJIPSA.POST2 (POST2_NO,POST2_CONTENT,POST2_DATE,POST2_TITLE,IMG_FULLNAME,POST2_COUNT) values ('2023033196','ㅋ',to_date('23/03/31','RR/MM/DD'),'동백꽃','/static/storyapp/file_manager/KakaoTalk_20230329_111142029_yCEYfxh.jpg',5);
REM INSERTING into SIKJIPSA.SHOP_LOC
SET DEFINE OFF;
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('아로마플라워','대전 동구 동서대로 1673-1','042-639-3333','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('충대꽃화원','대전 유성구 궁동로18번길 61','0507-1400-9768','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('비밀의화원','대전 서구 도마로 16','042-532-5435','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('백합꽃화원','대전 서구 청사서로 41 백합상가 122호','042-488-6677','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('꿈에그린화원','대전 유성구 대덕대로1111번길 1-3','0507-1408-6363','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('라온화원','대전 유성구 학하서로121번길 172 인성타운 1층','042-582-4495','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('장미화원','대전 유성구 유성대로 763','042-822-1514','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('안젤라화원','대전 중구 대흥로66번길 36','042-255-7101','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('봄소리화원','대전 유성구 북유성대로 30','042-824-3115','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('몽플레르','대전 서구 둔산로 133 현대아이텔 9층 923호','042-487-8972','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('풀문','대전 서구 도솔로412번길 62 1층 풀문','0507-1348-2606','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('플라워즈온더락','대전 서구 가장로 50 1층','0507-1337-9448','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('파티오플라워스튜디오','대전 유성구 전민로 71 상가동 108호 PATIO','0507-1393-8092','y');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('꽃피우다','대전 중구 중앙로 59','042-242-7009','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('런던플레르','대전 서구 문정로90번길 60 한우리아파트 상가. 런던플레르','010-4672-0509','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('꽃이피네','대전 대덕구 비래동로16번길 27 꽃이피네','0507-1476-3695','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('그린부쉬','대전광역시 중구 은행동 134',null,'y');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('라라랜드','대전광역시 중구 대흥동 184-2',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('그리고 꽃','대전광역시 유성구 죽동 715-1','042-487-0107','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('로데오플라워','대전광역시 유성구 궁동 424-1','042-822-9001','y');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('터미널꽃도매시장','대전광역시 동구 용전동 117-14','042-223-8686','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('퓨어딜라이트','대전광역시 유성구 봉명동 1053-7','042-471-4645','y');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('충대꽃화원','대전광역시 유성구 궁동 402-4','042-822-9768','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('로맨틱가든','대전광역시 서구 둔산동 967 라이프종합상가 161','042-482-4416','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('비올레뜨플라워','대전광역시 서구 둔산동 967 라이프상가 1층158호',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('어도러블','대전광역시 서구 탄방동 57-13',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('한아름플라워','대전광역시 서구 관저동 1541','042-544-4560','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('유화','대전광역시 서구 탄방동 746',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('셀레브리떼','대전광역시 유성구 지족동 917-20','042-826-5229','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('에리카플라워','대전광역시 유성구 관평동 921 아카데미프라자 1층',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('A midi','대전광역시 서구 도안동 883',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('아로마플라워','대전광역시 동구 용전동 117-18','042-639-3333','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('언제나꽃','대전광역시 동구 가오동 481 103호',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('오엔젤플라워','대전광역시 중구 선화동 187-13','070-4414-0042','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('이미란꽃집','대전광역시 중구 대흥동 206-10','1588-0607','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('드플로르','대전광역시 서구 둔산동 1006 104호 드플로르','042-487-7181','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('메이트로즈','대전광역시 서구 둔산동 1093',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('달달꽃','대전광역시 서구 관저동 1964-8','042-544-1123','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('쇼몽플라워','대전광역시 서구 관저동 1353 1층','042-542-8084','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('꽃길','대전광역시 유성구 봉명동 469-46','042-486-7812','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('테이블가든 복합점','대전광역시 동구 용전동 68-2 복합터미널 동관 1층','042-1566-9565','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('라플레르','대전광역시 서구 월평동 325 1층','042-483-9922','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('플라워오월애','대전광역시 서구 둔산동 967','042-482-6649','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('연화플라워','대전광역시 서구 둔산동 967','042-716-3456','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('제인스가든','대전광역시 유성구 교촌동 370',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('더 설렘 플라워','대전광역시 유성구 관평동 880','042-322-6054','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('오밀','대전광역시 유성구 죽동 715-4 1층 101호 omill',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('꽃차림','대전광역시 서구 가수원동 1056',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('바구니 꽃집','대전광역시 중구 은행동 169-9 바구니 꽃집','042-222-1493','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('고백집','대전광역시 서구 탄방동 781',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('메이앤달링','대전광역시 서구 갈마동 893 메이앤달링',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('플로라르','대전광역시 유성구 관평동 666 상가동 103호',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('라르보플라워','대전광역시 서구 관저동 1402',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('피크닉스','대전광역시 서구 탄방동 60-28',null,'y');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('플레드쥬어','대전광역시 서구 도안동 1901 101호',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('바이블플라워','대전광역시 서구 도안동 1114 102호','042-542-0109','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('에스더플라워','대전광역시 유성구 반석동 632-6','042-822-5215','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('플로리스트 배현미','대전광역시 서구 탄방동 590 샤크존 1층 B188호.','042-826-0588','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('연리지플라워','대전광역시 동구 가오동 531 102호 연리지플라워',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('아르니카플라워 과기대점','대전광역시 서구 복수동 758','042-587-6100','n');
--------------------------------------------------------
--  DDL for Index SYS_C008405
--------------------------------------------------------

  CREATE UNIQUE INDEX "SIKJIPSA"."SYS_C008405" ON "SIKJIPSA"."POST2" ("POST2_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table HOSPITAL_LOC
--------------------------------------------------------

  ALTER TABLE "SIKJIPSA"."HOSPITAL_LOC" MODIFY ("HOSPITAL_NAME" NOT NULL ENABLE);
  ALTER TABLE "SIKJIPSA"."HOSPITAL_LOC" MODIFY ("HOSPITAL_PLACE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POST2
--------------------------------------------------------

  ALTER TABLE "SIKJIPSA"."POST2" MODIFY ("POST2_NO" NOT NULL ENABLE);
  ALTER TABLE "SIKJIPSA"."POST2" MODIFY ("POST2_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "SIKJIPSA"."POST2" MODIFY ("POST2_TITLE" NOT NULL ENABLE);
  ALTER TABLE "SIKJIPSA"."POST2" ADD PRIMARY KEY ("POST2_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "SIKJIPSA"."MEMBER" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "SIKJIPSA"."MEMBER" MODIFY ("MEM_PASS" NOT NULL ENABLE);
  ALTER TABLE "SIKJIPSA"."MEMBER" MODIFY ("MEM_NAME" NOT NULL ENABLE);
  ALTER TABLE "SIKJIPSA"."MEMBER" MODIFY ("MEM_ADD1" NOT NULL ENABLE);
  ALTER TABLE "SIKJIPSA"."MEMBER" MODIFY ("MEM_MAIL" NOT NULL ENABLE);
  ALTER TABLE "SIKJIPSA"."MEMBER" ADD PRIMARY KEY ("MEM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SHOP_LOC
--------------------------------------------------------

  ALTER TABLE "SIKJIPSA"."SHOP_LOC" MODIFY ("SHOP_NAME" NOT NULL ENABLE);
  ALTER TABLE "SIKJIPSA"."SHOP_LOC" MODIFY ("SHOP_PLACE" NOT NULL ENABLE);
  ALTER TABLE "SIKJIPSA"."SHOP_LOC" MODIFY ("SHOP_CLASS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GARDEN_LOC
--------------------------------------------------------

  ALTER TABLE "SIKJIPSA"."GARDEN_LOC" MODIFY ("GARDEN_NAME" NOT NULL ENABLE);
  ALTER TABLE "SIKJIPSA"."GARDEN_LOC" MODIFY ("GARDEN_PLACE" NOT NULL ENABLE);

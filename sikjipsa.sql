--------------------------------------------------------
--  ������ ������ - �ݿ���-3��-31-2023   
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
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('���������','��⵵ ��õ�� ������ ����������� 509','031-540-2000');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('������δ밣�����','��� ��ȭ�� ���� ������ 2160-53','054-679-1000');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�������������','����Ư����ġ�� ����� ������� 136','044-251-0001');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�����ѱ��ڻ��Ĺ���','������ ��â�� ����ɸ� ��ȱ� 159-4','033-332-7069');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('Ǫ�������','���� ���α� ������ 240','02-2686-3200');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('����Ĺ���','����Ư���� ������ ����� 161','02-2104-9716');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('ȭ������','�λ걤���� �ϱ� �꼺�� 299','051-362-0261');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�뱸�����','�뱸������ �޼��� ȭ�Ϸ� 342','053-803-7270');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('��õ�����','��õ������ ������ ���׹̷� 236','032-440-5853');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('���𵵼����','��õ������ ��ȭ�� ���Ϸ�449���� 161','032-932-5432');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�ѹ�����','���������� ���� �л��� 169','042-472-4972');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('���������','��⵵ ����� ��û�� 282','031-378-1261');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('Ȳ�л�����','��⵵ ���ֽ� Ȳ�л������� 73','031-887-2740');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('��õ�������������','��⵵ ��õ�� ���̱� ���ǵ� 382','032-625-3502');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('ȭ���ÿ츮�ɽĹ���','��⵵ ȭ���� ��ź�� 3.1������ 777-17','031-369-6161');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('���������Ĺ���','��⵵ ��õ�� ���������� 102','02-500-7560');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�ٴ��������','��⵵ �Ȼ�� �ܿ��� ������ 205-5','031-8008-6795');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('��������ȭ���','������ ��õ�� ȭ����� 24','033-248-6691');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('������������','������ ������ ������ ������� 156','033-660-2324');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('��δ밣���¼����','������ ������ �Ӱ�� ȭõ���� 351-100','033-563-9011');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('��ȭ���������','������ ���ֽ� ������ ��ȭ��� 170','033-737-3641');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('ȫõ����ȭ�����','������ ȫõ�� �Ϲ�� ������ 2937-12','033-430-2777');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�籸�����','������ �籸�� ���� �����310���� 132','033-480-2529');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�̵�������','��û�ϵ� û�ֽ� ��籸 �̿��� ������� 51','043-220-6101');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�ݰ������','����Ư����ġ�� �ݳ��� �긲�ڹ�����110','041-635-7400');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�ȸ鵵�����','��û���� �¾ȱ� �ȸ��� �ȸ��� 3195-6','041-635-7292');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('���λ�����','��û���� �ƻ�� ���θ� �ƻ��õ�� 16-26','041-537-3946');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('����������','��û���� ���걺 ����� ��������110-16','041-339-7622');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�Ｑ������','��û���� ������ ���� �Ｑ��������79','041-350-4211');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('���ɹ���ȭ�����','��û���� ���ɽ� ���ָ� ���ֻ�� 318-57','041-931-6092');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('��Ƽ����','����ϵ� ���ֱ� ����� ��Ƽ���� 94-34','063-243-1951');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('��������','����ϵ� ���ȱ� ���� ������ 45-54','063-290-5494');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�ϵ������','���󳲵� �ϵ��� ���ܸ� ����1�� 156','061-552-1544');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('���ʼ����','���󳲵� ���ʱ� �굿�� ž��1�� 125','061-783-0599');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('���ϵ������','���ϵ� ���׽� �ϱ� ����� ������� 647','054-260-6100');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('��󳲵������','��󳲵� ���ֽ� �̹ݼ��� ������� 386','055-254-3811');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�ݿ�����¼����','��󳲵� ��â�� ��õ�� �ݿ���� 412','055-254-3964');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('Ȳ�Ż�����','��󳲵� ��õ�� ��ȸ�� Ȳ�Ż������264-17','055-930-4759');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('â�������','��󳲵� â���� ��â�� �ﵿ�� 197','055-255-4463');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�Ѷ�����','����Ư����ġ�� ���ֽ� ������� 72','064-710-7575');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('����׸��Ĺ��������','��걤���� ���� ����� 33-1','052-235-8585');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('����Ʈ����ũ�����','����Ư����ġ�� ������ �ż۷� 217','044-866-7766');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('���ýĹ���','��⵵ ���ν� ó�α� ��ϸ� ���÷� 2','031-333-3558');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('��ɼ����','��⵵ ���� ������ ������� 16','031-772-1800');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�򰭽Ĺ���','��⵵ ��õ�� ���ϸ� �칰��� 203','031-531-7751');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('��ħ�������','��⵵ ���� ��� ������� 432','1544-6703');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�����ڻ������','��⵵ ���ֽ� ����� ������ 309���� 167-35','031-826-0933');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�����ϼ����(ȭ�㽣)','��⵵ ���ֽ� ��ô�� ��ô���� 278','031-8026-6666');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�뵵�����','��⵵ ����� ��ڱ� 32','031-313-9090');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('���Ҹ������','��⵵ �����ֽ� �Ҿϻ�� 59���� 48-31','031-574-3252');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�����������','��⵵ ��õ�� ����� ���̷� 282','031-633-5029');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�󸲼����','���⵵ ���ֽ� �¼��� 130-43','070-4319-5722');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('���̵尡��','������ ��õ�� ����� �ް��80','033-260-8323');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('õ���������','��û���� �¾ȱ� �ҿ��� õ����1�� 187','041-672-9985');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('���Ĺ���','��û���� û�籺 û���� �Ĺ����� 398-23','041-943-6245');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�׸����������','��û���� ȫ���� ��õ�� �漭�� 400���� 102-36','041-641-1477');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�ѱ����ΰ�������','����ϵ� ���ֽ� ������ ������ 462-45','063-212-0652');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�ƴ��','����ϵ� ������ �̹�� �񰡱� 193','063-635-8342');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�����������','���󳲵� ���ﱺ ����� ����1�� 3-98','062-716-1146');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�������','���󳲵� ȭ���� �̼��� ���� 773-1','061-375-0380');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�������೪�������','���󳲵� ���ֽ� ������ ���̷�236-42','061-333-7788');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�س�������Ʈ�����','���󳲵� �س��� ����� ������ 232-118','061-533-7220');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('��û��Ĺ���','���ϵ� ���׽� �ϱ� û�ϸ� û�Ϸ� 175���� 50','054-232-4129');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('������','���ϵ� ������ �ΰ�� ġ��ȿ�ɷ� 1150','053-589-1276');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�������������','���ϵ� ĥ� ������ ȣ���� 605-42','054-975-5500');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('���غ�Ÿ�й�����','��󳲵� â���� ���ر� ���ش�� 1137���� 89','055-264-4337');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('��ȿ��','����Ư����ġ�� �������� ��ϳ��� 2847-37','064-733-2200');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('��Ʈ�������','����Ư����ġ�� ���ֽ� ������ ������ 2063','064-784-0989');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('����� ���Ǽ����','��⵵ �Ⱦ�� ���ȱ� ���������� 280','031-473-0071');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�ű����нĹ���','��⵵ ������ ������ ��Ǫ���� 9','031-723-6677');
Insert into SIKJIPSA.GARDEN_LOC (GARDEN_NAME,GARDEN_PLACE,GARDEN_PHONE) values ('�������б��ڿ��Ĺ���','����ϵ� �ͻ�� �ͻ��� 501','063-850-5043');
REM INSERTING into SIKJIPSA.HOSPITAL_LOC
SET DEFINE OFF;
Insert into SIKJIPSA.HOSPITAL_LOC (HOSPITAL_NAME,HOSPITAL_PLACE,HOSPITAL_PHONE) values ('��ֱ׸� ','���� ������ ������ 63 1��','0507-1305-8541');
Insert into SIKJIPSA.HOSPITAL_LOC (HOSPITAL_NAME,HOSPITAL_PLACE,HOSPITAL_PHONE) values ('���ͽĹ�����','��� ���ֽ� �������� ������õ�� 143','031-797-6243');
Insert into SIKJIPSA.HOSPITAL_LOC (HOSPITAL_NAME,HOSPITAL_PLACE,HOSPITAL_PHONE) values ('�ȵ����б� �Ĺ����պ���','��� �ȵ��� �浿�� 1375','054-820-7747');
Insert into SIKJIPSA.HOSPITAL_LOC (HOSPITAL_NAME,HOSPITAL_PLACE,HOSPITAL_PHONE) values ('������ȭ�к���(������û)','���������� ���� �л�� 100','042-270-2396');
Insert into SIKJIPSA.HOSPITAL_LOC (HOSPITAL_NAME,HOSPITAL_PLACE,HOSPITAL_PHONE) values ('���̹��Ĺ�����','��⵵ ȭ���� �����߾ӷ� 283-33','031-8008-9354');
REM INSERTING into SIKJIPSA.MEMBER
SET DEFINE OFF;
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('abcd1111','1111','ȫ�浿','���ֱ����� ����','ddd@naver.com',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('11111','1111','111111','111','111111',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('avcd1234','dfasdf','dsfasd','dsfas','dafasdf',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('a001','asdfasdf','������','������ ���� ��','pyoedab@lycos.co.kr',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('c001','7777','�ſ�ȯ','���������� �߱� ���ﵿ','kyh01@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('d001','123joy','������','������ �߱� �ϴõ� ','dbs81f@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('e001','0','������','������ ����� ������','bosiang@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('f001','12345678','�ſ���','���������� ���ﵿ','SUPER-KHG@HANMAIL.NET',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('g001','1456','�۰���','�泲�ݻ걺 ������','lim052@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('h001','9999','����ȣ','�泲 ���� ���̸�','wingl7@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('i001','1111','������','������ ���� ����1��','pan@orgio.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('j001','6262','������','������ ���� ��õ��','maxsys@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('k001','7227','��ö��','������ ����� ��ȭ��','equus@orgio.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('l001','12345678','���浿','�泲�ݻ걺 �ݻ���','email815@hanmail.co.kr',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('m001','pass','������','���������� ���� ������','happy@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('n001','1111','Ź����','������ ���� �ھ絿','ping75@unitel.co.kr',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('o001','909','������','������ ���� ������','tar-song@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('p001','sahra3','������','�����������۰���','sahra235@intz.com',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('q001','0','����ȸ','�뱸������ ����� �߸���','kph@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('r001','park1005','������','������ ���� ������','econie@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('s001','819','������','�뱸������ ���� ź�浿','songej@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('t001','506','������','���������� �߱� ��õ��','bob6@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('u001','1000','�輺��','������ ���� ������','pss576@orgio.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('v001','1111','������','������ ���� ������','gagsong@orgio.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('w001','12341234','������','������ ����� ���ൿ','songone@hanmail.net',null);
Insert into SIKJIPSA.MEMBER (MEM_ID,MEM_PASS,MEM_NAME,MEM_ADD1,MEM_MAIL,MEM_DELETE) values ('x001','0','������','���������� ���� ������','happysong@hanmail.net',null);
REM INSERTING into SIKJIPSA.POST2
SET DEFINE OFF;
Insert into SIKJIPSA.POST2 (POST2_NO,POST2_CONTENT,POST2_DATE,POST2_TITLE,IMG_FULLNAME,POST2_COUNT) values ('202303301','������',to_date('23/03/30','RR/MM/DD'),'���� �׽�Ʈ��',null,1);
Insert into SIKJIPSA.POST2 (POST2_NO,POST2_CONTENT,POST2_DATE,POST2_TITLE,IMG_FULLNAME,POST2_COUNT) values ('2023033039','�̹��� �÷�����',to_date('23/03/30','RR/MM/DD'),'�̹��� ���ε� �׽�Ʈ','/static/storyapp/file_manager/������_Mv8QZ0O.png',1);
Insert into SIKJIPSA.POST2 (POST2_NO,POST2_CONTENT,POST2_DATE,POST2_TITLE,IMG_FULLNAME,POST2_COUNT) values ('2023033066','1234',to_date('23/03/30','RR/MM/DD'),'��õ��','/static/storyapp/file_manager/default_bono_fhNKAVA.png',14);
Insert into SIKJIPSA.POST2 (POST2_NO,POST2_CONTENT,POST2_DATE,POST2_TITLE,IMG_FULLNAME,POST2_COUNT) values ('2023033129','����',to_date('23/03/31','RR/MM/DD'),'����','/static/storyapp/file_manager/KakaoTalk_20230326_231149973_06_8zeMKtM.jpg',0);
Insert into SIKJIPSA.POST2 (POST2_NO,POST2_CONTENT,POST2_DATE,POST2_TITLE,IMG_FULLNAME,POST2_COUNT) values ('2023033196','��',to_date('23/03/31','RR/MM/DD'),'�����','/static/storyapp/file_manager/KakaoTalk_20230329_111142029_yCEYfxh.jpg',5);
REM INSERTING into SIKJIPSA.SHOP_LOC
SET DEFINE OFF;
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�Ʒθ��ö��','���� ���� ������� 1673-1','042-639-3333','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('����ȭ��','���� ������ �õ���18���� 61','0507-1400-9768','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�����ȭ��','���� ���� ������ 16','042-532-5435','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('���ղ�ȭ��','���� ���� û�缭�� 41 ���ջ� 122ȣ','042-488-6677','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�޿��׸�ȭ��','���� ������ ������1111���� 1-3','0507-1408-6363','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('���ȭ��','���� ������ ���ϼ���121���� 172 �μ�Ÿ�� 1��','042-582-4495','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('���ȭ��','���� ������ ������� 763','042-822-1514','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('������ȭ��','���� �߱� �����66���� 36','042-255-7101','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('���Ҹ�ȭ��','���� ������ ��������� 30','042-824-3115','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('���÷���','���� ���� �л�� 133 ��������� 9�� 923ȣ','042-487-8972','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('Ǯ��','���� ���� ���ַ�412���� 62 1�� Ǯ��','0507-1348-2606','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�ö����´���','���� ���� ����� 50 1��','0507-1337-9448','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('��Ƽ���ö����Ʃ���','���� ������ ���η� 71 �󰡵� 108ȣ PATIO','0507-1393-8092','y');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('���ǿ��','���� �߱� �߾ӷ� 59','042-242-7009','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�����÷���','���� ���� ������90���� 60 �ѿ츮����Ʈ ��. �����÷���','010-4672-0509','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�����ǳ�','���� ����� �񷡵���16���� 27 �����ǳ�','0507-1476-3695','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�׸��ν�','���������� �߱� ���ൿ 134',null,'y');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('��󷣵�','���������� �߱� ���ﵿ 184-2',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�׸��� ��','���������� ������ �׵� 715-1','042-487-0107','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�ε����ö��','���������� ������ �õ� 424-1','042-822-9001','y');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�͹̳βɵ��Ž���','���������� ���� ������ 117-14','042-223-8686','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('ǻ�������Ʈ','���������� ������ ���� 1053-7','042-471-4645','y');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('����ȭ��','���������� ������ �õ� 402-4','042-822-9768','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�θ�ƽ����','���������� ���� �л굿 967 ���������ջ� 161','042-482-4416','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('��÷����ö��','���������� ���� �л굿 967 �������� 1��158ȣ',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�����','���������� ���� ź�浿 57-13',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�ѾƸ��ö��','���������� ���� ������ 1541','042-544-4560','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('��ȭ','���������� ���� ź�浿 746',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�����긮��','���������� ������ ������ 917-20','042-826-5229','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('����ī�ö��','���������� ������ ���� 921 ��ī���������� 1��',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('A midi','���������� ���� ���ȵ� 883',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�Ʒθ��ö��','���������� ���� ������ 117-18','042-639-3333','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('��������','���������� ���� ������ 481 103ȣ',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�������ö��','���������� �߱� ��ȭ�� 187-13','070-4414-0042','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�̶̹�����','���������� �߱� ���ﵿ 206-10','1588-0607','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('���÷θ�','���������� ���� �л굿 1006 104ȣ ���÷θ�','042-487-7181','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('����Ʈ����','���������� ���� �л굿 1093',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�޴޲�','���������� ���� ������ 1964-8','042-544-1123','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('����ö��','���������� ���� ������ 1353 1��','042-542-8084','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�ɱ�','���������� ������ ���� 469-46','042-486-7812','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('���̺��� ������','���������� ���� ������ 68-2 �����͹̳� ���� 1��','042-1566-9565','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('���÷���','���������� ���� ���� 325 1��','042-483-9922','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�ö��������','���������� ���� �л굿 967','042-482-6649','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('��ȭ�ö��','���������� ���� �л굿 967','042-716-3456','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('���ν�����','���������� ������ ���̵� 370',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�� ���� �ö��','���������� ������ ���� 880','042-322-6054','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('����','���������� ������ �׵� 715-4 1�� 101ȣ omill',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('������','���������� ���� �������� 1056',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�ٱ��� ����','���������� �߱� ���ൿ 169-9 �ٱ��� ����','042-222-1493','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�����','���������� ���� ź�浿 781',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('���̾ش޸�','���������� ���� ������ 893 ���̾ش޸�',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�÷ζ�','���������� ������ ���� 666 �󰡵� 103ȣ',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�󸣺��ö��','���������� ���� ������ 1402',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('��ũ�н�','���������� ���� ź�浿 60-28',null,'y');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�÷������','���������� ���� ���ȵ� 1901 101ȣ',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('���̺��ö��','���������� ���� ���ȵ� 1114 102ȣ','042-542-0109','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�������ö��','���������� ������ �ݼ��� 632-6','042-822-5215','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�÷θ���Ʈ ������','���������� ���� ź�浿 590 ��ũ�� 1�� B188ȣ.','042-826-0588','n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�������ö��','���������� ���� ������ 531 102ȣ �������ö��',null,'n');
Insert into SIKJIPSA.SHOP_LOC (SHOP_NAME,SHOP_PLACE,SHOP_PHONE,SHOP_CLASS) values ('�Ƹ���ī�ö�� �������','���������� ���� ������ 758','042-587-6100','n');
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

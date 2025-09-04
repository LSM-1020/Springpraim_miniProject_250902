--------------------------------------------------------
--  파일이 생성됨 - 목요일-9월-04-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence MEMBER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MEMBER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 8 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 276 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ORDER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."ORDER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table MEMBERTBL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MEMBERTBL" 
   (	"MEMBERNUM" NUMBER, 
	"MEMBERID" VARCHAR2(20 BYTE), 
	"MEMBERPW" VARCHAR2(20 BYTE), 
	"MEMBERNAME" VARCHAR2(20 BYTE), 
	"MEMBERDATE" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BOARDTBL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."BOARDTBL" 
   (	"BNUM" VARCHAR2(20 BYTE), 
	"BTITLE" VARCHAR2(200 BYTE), 
	"BCONTENT" VARCHAR2(200 BYTE), 
	"BWRITER" VARCHAR2(200 BYTE), 
	"BHIT" NUMBER, 
	"BDATE" DATE DEFAULT sysdate
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ORDERTBL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ORDERTBL" 
   (	"ONUM" NVARCHAR2(20), 
	"AMOUNT" NUMBER(*,0), 
	"PRODUCT" VARCHAR2(20 BYTE), 
	"PRICE" NUMBER(*,0), 
	"OID" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.MEMBERTBL
SET DEFINE OFF;
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values (2,'tiger','12345','호랑이',null);
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values (3,'cat','12345','고양이',null);
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values (4,'dog','12345','강아지',null);
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values (5,'monkey','12345','원숭이',null);
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values (7,'sheep','12345','양',null);
REM INSERTING into SYSTEM.BOARDTBL
SET DEFINE OFF;
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('12','2','2','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('18','연습 더미 제목입니다.1','연습 더미 내용입니다.1번 글 내용입니다','tiger',1,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('9','dog2','dog','tiger',3,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('13','3','3','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('19','연습 더미 제목입니다.2','연습 더미 내용입니다.2번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('20','연습 더미 제목입니다.3','연습 더미 내용입니다.3번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('21','연습 더미 제목입니다.4','연습 더미 내용입니다.4번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('22','연습 더미 제목입니다.5','연습 더미 내용입니다.5번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('23','연습 더미 제목입니다.6','연습 더미 내용입니다.6번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('24','연습 더미 제목입니다.7','연습 더미 내용입니다.7번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('25','연습 더미 제목입니다.8','연습 더미 내용입니다.8번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('26','연습 더미 제목입니다.9','연습 더미 내용입니다.9번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('27','연습 더미 제목입니다.10','연습 더미 내용입니다.10번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('28','연습 더미 제목입니다.11','연습 더미 내용입니다.11번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('29','연습 더미 제목입니다.12','연습 더미 내용입니다.12번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('30','연습 더미 제목입니다.13','연습 더미 내용입니다.13번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('31','연습 더미 제목입니다.14','연습 더미 내용입니다.14번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('32','연습 더미 제목입니다.15','연습 더미 내용입니다.15번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('33','연습 더미 제목입니다.16','연습 더미 내용입니다.16번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('34','연습 더미 제목입니다.17','연습 더미 내용입니다.17번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('35','연습 더미 제목입니다.18','연습 더미 내용입니다.18번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('36','연습 더미 제목입니다.19','연습 더미 내용입니다.19번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('37','연습 더미 제목입니다.20','연습 더미 내용입니다.20번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('38','연습 더미 제목입니다.21','연습 더미 내용입니다.21번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('39','연습 더미 제목입니다.22','연습 더미 내용입니다.22번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('40','연습 더미 제목입니다.23','연습 더미 내용입니다.23번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('41','연습 더미 제목입니다.24','연습 더미 내용입니다.24번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('42','연습 더미 제목입니다.25','연습 더미 내용입니다.25번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('43','연습 더미 제목입니다.26','연습 더미 내용입니다.26번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('44','연습 더미 제목입니다.27','연습 더미 내용입니다.27번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('45','연습 더미 제목입니다.28','연습 더미 내용입니다.28번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('46','연습 더미 제목입니다.29','연습 더미 내용입니다.29번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('47','연습 더미 제목입니다.30','연습 더미 내용입니다.30번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('48','연습 더미 제목입니다.31','연습 더미 내용입니다.31번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('49','연습 더미 제목입니다.32','연습 더미 내용입니다.32번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('50','연습 더미 제목입니다.33','연습 더미 내용입니다.33번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('51','연습 더미 제목입니다.34','연습 더미 내용입니다.34번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('52','연습 더미 제목입니다.35','연습 더미 내용입니다.35번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('53','연습 더미 제목입니다.36','연습 더미 내용입니다.36번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('54','연습 더미 제목입니다.37','연습 더미 내용입니다.37번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('55','연습 더미 제목입니다.38','연습 더미 내용입니다.38번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('56','연습 더미 제목입니다.39','연습 더미 내용입니다.39번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('57','연습 더미 제목입니다.40','연습 더미 내용입니다.40번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('58','연습 더미 제목입니다.41','연습 더미 내용입니다.41번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('59','연습 더미 제목입니다.42','연습 더미 내용입니다.42번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('60','연습 더미 제목입니다.43','연습 더미 내용입니다.43번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('61','연습 더미 제목입니다.44','연습 더미 내용입니다.44번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('62','연습 더미 제목입니다.45','연습 더미 내용입니다.45번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('63','연습 더미 제목입니다.46','연습 더미 내용입니다.46번 글 내용입니다','tiger',1,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('64','연습 더미 제목입니다.47','연습 더미 내용입니다.47번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('65','연습 더미 제목입니다.48','연습 더미 내용입니다.48번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('66','연습 더미 제목입니다.49','연습 더미 내용입니다.49번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('67','연습 더미 제목입니다.50','연습 더미 내용입니다.50번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('68','연습 더미 제목입니다.51','연습 더미 내용입니다.51번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('69','연습 더미 제목입니다.52','연습 더미 내용입니다.52번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('70','연습 더미 제목입니다.53','연습 더미 내용입니다.53번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('71','연습 더미 제목입니다.54','연습 더미 내용입니다.54번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('72','연습 더미 제목입니다.55','연습 더미 내용입니다.55번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('73','연습 더미 제목입니다.56','연습 더미 내용입니다.56번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('74','연습 더미 제목입니다.57','연습 더미 내용입니다.57번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('75','연습 더미 제목입니다.58','연습 더미 내용입니다.58번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('76','연습 더미 제목입니다.59','연습 더미 내용입니다.59번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('77','연습 더미 제목입니다.60','연습 더미 내용입니다.60번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('78','연습 더미 제목입니다.61','연습 더미 내용입니다.61번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('79','연습 더미 제목입니다.62','연습 더미 내용입니다.62번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('80','연습 더미 제목입니다.63','연습 더미 내용입니다.63번 글 내용입니다','tiger',1,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('81','연습 더미 제목입니다.64','연습 더미 내용입니다.64번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('82','연습 더미 제목입니다.65','연습 더미 내용입니다.65번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('83','연습 더미 제목입니다.66','연습 더미 내용입니다.66번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('84','연습 더미 제목입니다.67','연습 더미 내용입니다.67번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('85','연습 더미 제목입니다.68','연습 더미 내용입니다.68번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('86','연습 더미 제목입니다.69','연습 더미 내용입니다.69번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('87','연습 더미 제목입니다.70','연습 더미 내용입니다.70번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('88','연습 더미 제목입니다.71','연습 더미 내용입니다.71번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('89','연습 더미 제목입니다.72','연습 더미 내용입니다.72번 글 내용입니다','tiger',1,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('90','연습 더미 제목입니다.73','연습 더미 내용입니다.73번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('91','연습 더미 제목입니다.74','연습 더미 내용입니다.74번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('92','연습 더미 제목입니다.75ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ','연습 더미 내용입니다.75번 글 내용입니다','tiger',11,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('100','연습 더미 제목입니다.83','연습 더미 내용입니다.83번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('101','연습 더미 제목입니다.84','연습 더미 내용입니다.84번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('102','연습 더미 제목입니다.85','연습 더미 내용입니다.85번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('103','연습 더미 제목입니다.86','연습 더미 내용입니다.86번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('104','연습 더미 제목입니다.87','연습 더미 내용입니다.87번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('105','연습 더미 제목입니다.88','연습 더미 내용입니다.88번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('106','연습 더미 제목입니다.89','연습 더미 내용입니다.89번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('107','연습 더미 제목입니다.90','연습 더미 내용입니다.90번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('108','연습 더미 제목입니다.91','연습 더미 내용입니다.91번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('109','연습 더미 제목입니다.92','연습 더미 내용입니다.92번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('110','연습 더미 제목입니다.93','연습 더미 내용입니다.93번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('111','연습 더미 제목입니다.94','연습 더미 내용입니다.94번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('112','연습 더미 제목입니다.95','연습 더미 내용입니다.95번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('113','연습 더미 제목입니다.96','연습 더미 내용입니다.96번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('114','연습 더미 제목입니다.97','연습 더미 내용입니다.97번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('115','연습 더미 제목입니다.98','연습 더미 내용입니다.98번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('116','연습 더미 제목입니다.99','연습 더미 내용입니다.99번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('117','연습 더미 제목입니다.100','연습 더미 내용입니다.100번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('118','연습 더미 제목입니다.101','연습 더미 내용입니다.101번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('119','연습 더미 제목입니다.102','연습 더미 내용입니다.102번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('120','연습 더미 제목입니다.103','연습 더미 내용입니다.103번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('121','연습 더미 제목입니다.104','연습 더미 내용입니다.104번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('122','연습 더미 제목입니다.105','연습 더미 내용입니다.105번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('123','연습 더미 제목입니다.106','연습 더미 내용입니다.106번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('124','연습 더미 제목입니다.107','연습 더미 내용입니다.107번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('125','연습 더미 제목입니다.108','연습 더미 내용입니다.108번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('126','연습 더미 제목입니다.109','연습 더미 내용입니다.109번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('127','연습 더미 제목입니다.110','연습 더미 내용입니다.110번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('128','연습 더미 제목입니다.111','연습 더미 내용입니다.111번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('129','연습 더미 제목입니다.112','연습 더미 내용입니다.112번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('130','연습 더미 제목입니다.113','연습 더미 내용입니다.113번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('131','연습 더미 제목입니다.114','연습 더미 내용입니다.114번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('132','연습 더미 제목입니다.115','연습 더미 내용입니다.115번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('133','연습 더미 제목입니다.116','연습 더미 내용입니다.116번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('134','연습 더미 제목입니다.117','연습 더미 내용입니다.117번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('135','연습 더미 제목입니다.118','연습 더미 내용입니다.118번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('136','연습 더미 제목입니다.119','연습 더미 내용입니다.119번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('137','연습 더미 제목입니다.120','연습 더미 내용입니다.120번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('138','연습 더미 제목입니다.121','연습 더미 내용입니다.121번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('139','연습 더미 제목입니다.122','연습 더미 내용입니다.122번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('140','연습 더미 제목입니다.123','연습 더미 내용입니다.123번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('141','연습 더미 제목입니다.124','연습 더미 내용입니다.124번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('142','연습 더미 제목입니다.125','연습 더미 내용입니다.125번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('143','연습 더미 제목입니다.126','연습 더미 내용입니다.126번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('144','연습 더미 제목입니다.127','연습 더미 내용입니다.127번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('145','연습 더미 제목입니다.128','연습 더미 내용입니다.128번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('146','연습 더미 제목입니다.129','연습 더미 내용입니다.129번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('147','연습 더미 제목입니다.130','연습 더미 내용입니다.130번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('148','연습 더미 제목입니다.131','연습 더미 내용입니다.131번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('149','연습 더미 제목입니다.132','연습 더미 내용입니다.132번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('150','연습 더미 제목입니다.133','연습 더미 내용입니다.133번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('151','연습 더미 제목입니다.134','연습 더미 내용입니다.134번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('152','연습 더미 제목입니다.135','연습 더미 내용입니다.135번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('153','연습 더미 제목입니다.136','연습 더미 내용입니다.136번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('154','연습 더미 제목입니다.137','연습 더미 내용입니다.137번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('155','연습 더미 제목입니다.138','연습 더미 내용입니다.138번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('156','연습 더미 제목입니다.139','연습 더미 내용입니다.139번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('157','연습 더미 제목입니다.140','연습 더미 내용입니다.140번 글 내용입니다','tiger',1,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('158','연습 더미 제목입니다.141','연습 더미 내용입니다.141번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('159','연습 더미 제목입니다.142','연습 더미 내용입니다.142번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('160','연습 더미 제목입니다.143','연습 더미 내용입니다.143번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('161','연습 더미 제목입니다.144','연습 더미 내용입니다.144번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('162','연습 더미 제목입니다.145','연습 더미 내용입니다.145번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('163','연습 더미 제목입니다.146','연습 더미 내용입니다.146번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('164','연습 더미 제목입니다.147','연습 더미 내용입니다.147번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('165','연습 더미 제목입니다.148','연습 더미 내용입니다.148번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('166','연습 더미 제목입니다.149','연습 더미 내용입니다.149번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('167','연습 더미 제목입니다.150','연습 더미 내용입니다.150번 글 내용입니다','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('170',null,null,'cat',4,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('169',null,null,'cat',7,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('171',null,null,'cat',3,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('172',null,null,'cat',4,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('173','ㅇㅇㅇㅇ','ㅇㅇㅇㅇ','cat',3,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('174','ㅇ','ㅇ','tiger',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('175','ㅇㅇ','ㅇㅇㅇ','tiger',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('176','ㅅㅇ','ㅅㅇ','tiger',2,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('177','ㅅㅅㅅ','ㅅㅅㅅㅅ','tiger',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('178','11','111','tiger',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('179','222','222','tiger',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values ('180','444','444','tiger',7,to_date('25/09/03','RR/MM/DD'));
REM INSERTING into SYSTEM.ORDERTBL
SET DEFINE OFF;
Insert into SYSTEM.ORDERTBL (ONUM,AMOUNT,PRODUCT,PRICE,OID) values ('183',3,'아메리카노',3000,null);
Insert into SYSTEM.ORDERTBL (ONUM,AMOUNT,PRODUCT,PRICE,OID) values ('184',3,'아메리카노',3000,null);
Insert into SYSTEM.ORDERTBL (ONUM,AMOUNT,PRODUCT,PRICE,OID) values ('185',3,'아메리카노',3000,null);
Insert into SYSTEM.ORDERTBL (ONUM,AMOUNT,PRODUCT,PRICE,OID) values ('186',1,'카푸치노',3800,null);
Insert into SYSTEM.ORDERTBL (ONUM,AMOUNT,PRODUCT,PRICE,OID) values ('187',1,'카페라떼',3500,null);
Insert into SYSTEM.ORDERTBL (ONUM,AMOUNT,PRODUCT,PRICE,OID) values ('188',1,'카푸치노',3800,null);
Insert into SYSTEM.ORDERTBL (ONUM,AMOUNT,PRODUCT,PRICE,OID) values ('189',1,'카푸치노',3800,null);
Insert into SYSTEM.ORDERTBL (ONUM,AMOUNT,PRODUCT,PRICE,OID) values ('190',1,'아메리카노',3000,null);
Insert into SYSTEM.ORDERTBL (ONUM,AMOUNT,PRODUCT,PRICE,OID) values ('191',1,'아메리카노',3000,null);
Insert into SYSTEM.ORDERTBL (ONUM,AMOUNT,PRODUCT,PRICE,OID) values ('192',1,'카푸치노',3800,null);
Insert into SYSTEM.ORDERTBL (ONUM,AMOUNT,PRODUCT,PRICE,OID) values ('193',1,'아메리카노',3000,null);
Insert into SYSTEM.ORDERTBL (ONUM,AMOUNT,PRODUCT,PRICE,OID) values ('194',1,'카페라떼',3500,null);
Insert into SYSTEM.ORDERTBL (ONUM,AMOUNT,PRODUCT,PRICE,OID) values ('195',1,'카푸치노',3800,null);
Insert into SYSTEM.ORDERTBL (ONUM,AMOUNT,PRODUCT,PRICE,OID) values ('196',1,'아메리카노',3000,null);
Insert into SYSTEM.ORDERTBL (ONUM,AMOUNT,PRODUCT,PRICE,OID) values ('197',1,'카페라떼',3500,null);
Insert into SYSTEM.ORDERTBL (ONUM,AMOUNT,PRODUCT,PRICE,OID) values ('198',1,'카푸치노',3800,null);
Insert into SYSTEM.ORDERTBL (ONUM,AMOUNT,PRODUCT,PRICE,OID) values ('199',1,'카페라떼',3500,null);

select * from client;

-- 테이블 전체 삭제문
DROP TABLE "EMPLOYEE" CASCADE CONSTRAINTS;
DROP TABLE "CLIENT" CASCADE CONSTRAINTS;
--DROP TABLE "PRODUCT" CASCADE CONSTRAINTS;
--DROP TABLE "CLIENT_LOG" CASCADE CONSTRAINTS;
--DROP TABLE "DOCU_CATE" CASCADE CONSTRAINTS;
--DROP TABLE "GROUP1" CASCADE CONSTRAINTS;

DROP TABLE "ORDER1" CASCADE CONSTRAINTS;
--DROP TABLE "ORDER_LIST" CASCADE CONSTRAINTS;
--DROP TABLE "TEAM" CASCADE CONSTRAINTS;
--DROP TABLE "PROJECT" CASCADE CONSTRAINTS;

DROP SEQUENCE C_NO_SEQ;

CREATE TABLE EMPLOYEE (
	EMPLOYEE_NO	NUMBER	NOT NULL,
	EMPLOYEE_ID	VARCHAR2(20)	NULL,
	EMPLOYEE_PWD	VARCHAR2(300)	NULL,
	EMPLOYEE_NAME	VARCHAR2(10)	NULL,
	EMPLOYEE_BIRT	DATE	NULL,
	EMPLOYEE_ADDR	VARCHAR2(100)	NULL,
	EMPLOYEE_PHONE	VARCHAR2(20)	NULL,
	EMPLOYEE_EMAIL	VARCHAR2(30)	NULL,
	HIRE_DATE	DATE	NULL,
	FIRE_DATE	DATE	NULL,
	JOP_POSITION	VARCHAR2(10)	NULL,
	TEAM_CODE	VARCHAR2(10)	NULL,
	JOP_TITLE_CODE	VARCHAR2(10)	NULL,
	ENT_YN	CHAR	NULL
);

CREATE TABLE CLIENT (
	C_NO	NUMBER	NOT NULL,
	C_NAME	VARCHAR2(100)	NULL,
	B_NO	NUMBER	NULL,
    B_NO2   NUMBER  NULL,
	C_TYPE	VARCHAR2(100)	NULL,
	C_OWNER	VARCHAR2(100)	NULL,
	C_ADDR	VARCHAR2(100)	NULL,
	C_PHONE	VARCHAR2(100)	NULL,
	C_FAX	VARCHAR2(100)	NULL,
	C_EMAIL	VARCHAR2(100)	NULL,
	C_UMONY	NUMBER	DEFAULT 0   NULL,
	C_CREDITLIMIT	NUMBER 	NULL,
	C_CREDIT_MONTH	NUMBER  NULL,
    C_CREDIT_DAY	NUMBER  NULL,
    C_DATE  DATE    DEFAULT     SYSDATE,
    C_DELETE_YN     CHAR(1)     DEFAULT 'N'
);

CREATE SEQUENCE C_NO_SEQ NOCACHE NOCYCLE
START WITH 1302000 INCREMENT BY 1;

insert into client values ('123','123','123','123','123','123','123','123','123','123',0,'123','123','123',sysdate,'N');

insert into warehouse values (11, '11', '11');
insert into warehouse values (22, '22', '22');
insert into warehouse values (33, '33', '33');

insert into product values ( 11, '11', '11',11 ,11, 11, '11', 11 );
insert into product values ( 22, '22', '22',22 ,22, 22, '22', 22 );
insert into product values ( 33, '33', '33',33 ,33, 33, '33', 33 );

insert into project values (1, '프로젝트1', 123, '2022-03-10', '2022-06-10', 'red', 11);
insert into project values (2, '프로젝트2', 125, '2022-06-10', '2022-09-10', 'red', 12);

commit;

select * from order1;

select * from order_list order by o_list_no;

delete from order1;
delete from order_list;

CREATE TABLE CLIENT_LOG (
	C_LOG_NO	NUMBER	NOT NULL,
	C_NO	NUMBER	NULL,
	C_DATE	DATE	NULL,
	C_AMOUNT	NUMBER	NULL,
	C_NOTE	VARCHAR2(100)	NULL
);



CREATE TABLE GROUP1 (
	GROUP_NO	NUMBER	NOT NULL,
	PROJECT_NO	NUMBER	NULL,
	EMPLOYEE_NO	NUMBER	NULL,
	GROUP_POSITION	VARCHAR2(20)	NULL
);

CREATE TABLE DEPARTMENT (
	DEPART_CODE	VARCHAR2(10)	NOT NULL,
	DEPART_NAME	VARCHAR2(20)	NULL
);

CREATE TABLE JOPTITLE (
	JOP_TITLE_CODE	VARCHAR2(10)	NOT NULL,
	JOP_TITLE_NAME	VARCHAR2(10)	NULL
);


CREATE TABLE ORDER1 (
	O_NO	NUMBER	NOT NULL,
	C_NO	NUMBER	NULL,
	PROJECT_NO	NUMBER	NULL,
	EMPLOYEE_NO	NUMBER	NULL,
	WAREHOUSE_NO	NUMBER	NULL,
	O_DATE	DATE	NULL,
	CREDIT_DATE DATE NULL,
	TEAM_CODE	VARCHAR2(10)	NULL,
	VAT_YN	CHAR(1)	NULL,
    O_STATEMENT VARCHAR2(100) default 'N'
);



CREATE TABLE ORDER_LIST (
	O_LIST_NO	VARCHAR(255)	NOT NULL,
	O_NO	NUMBER	NULL,
	P_NO	NUMBER	NULL,
	O_NUM	NUMBER	NULL,
	O_PRICE	NUMBER	NULL,
	O_DELIBERY_DATE	DATE	NULL
);

drop sequence O_NO_SEQ;

CREATE SEQUENCE O_NO_SEQ NOCACHE NOCYCLE;

CREATE TABLE TEAM (
	TEAM_CODE	VARCHAR2(10)	NOT NULL,
	TEAM_NAME	VARCHAR2(20)	NULL,
	TEAMREADER_NO	NUMBER	NULL,
	DEPART_CODE	VARCHAR2(10)	NULL
);


ALTER TABLE PROJECT ADD CONSTRAINT PK_PROJECT PRIMARY KEY (
	PROJECT_NO
);

ALTER TABLE EMPLOYEE ADD CONSTRAINT PK_EMPLOYEE PRIMARY KEY (
	EMPLOYEE_NO
);


ALTER TABLE CLIENT ADD CONSTRAINT PK_CLIENT PRIMARY KEY (
	C_NO
);

ALTER TABLE PRODUCT ADD CONSTRAINT PK_PRODUCT PRIMARY KEY (
	P_NO
);

ALTER TABLE CLIENT_LOG ADD CONSTRAINT PK_CLIENT_LOG PRIMARY KEY (
	C_LOG_NO
);


ALTER TABLE GROUP1 ADD CONSTRAINT PK_GROUP1 PRIMARY KEY (
	GROUP_NO
);

ALTER TABLE DEPARTMENT ADD CONSTRAINT PK_DEPARTMENT PRIMARY KEY (
	DEPART_CODE
);

ALTER TABLE JOPTITLE ADD CONSTRAINT PK_JOPTITLE PRIMARY KEY (
	JOP_TITLE_CODE
);


ALTER TABLE ORDER1 ADD CONSTRAINT PK_ORDER1 PRIMARY KEY (
	O_NO
);



ALTER TABLE ORDER_LIST ADD CONSTRAINT PK_ORDER_LIST PRIMARY KEY (
	O_LIST_NO
);

ALTER TABLE TEAM ADD CONSTRAINT PK_TEAM PRIMARY KEY (
	TEAM_CODE
);

ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_TEAM_TO_EMPLOYEE_1 FOREIGN KEY (
	TEAM_CODE
)
REFERENCES TEAM (
	TEAM_CODE
);

ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_JOPTITLE_TO_EMPLOYEE_1 FOREIGN KEY (
	JOP_TITLE_CODE
)
REFERENCES JOPTITLE (
	JOP_TITLE_CODE
);


ALTER TABLE STATEMENT ADD CONSTRAINT FK_EMPLOYEE_TO_STATEMENT_1 FOREIGN KEY (
	MANAGER
)
REFERENCES EMPLOYEE (
	EMPLOYEE_NO
);

ALTER TABLE STATEMENT ADD CONSTRAINT FK_ORDER1_TO_STATEMENT_1 FOREIGN KEY (
	O_NO
)
REFERENCES ORDER1 (
	O_NO
);


ALTER TABLE CLIENT ADD CONSTRAINT FK_EMPLOYEE_TO_CLIENT_1 FOREIGN KEY (
	C_PIC
)
REFERENCES EMPLOYEE (
	EMPLOYEE_NO
);


ALTER TABLE CLIENT_LOG ADD CONSTRAINT FK_CLIENT_TO_CLIENT_LOG_1 FOREIGN KEY (
	C_NO
)
REFERENCES CLIENT (
	C_NO
);


ALTER TABLE GROUP1 ADD CONSTRAINT FK_PROJECT_TO_GROUP1_1 FOREIGN KEY (
	PROJECT_NO
)
REFERENCES PROJECT (
	PROJECT_NO
);

ALTER TABLE GROUP1 ADD CONSTRAINT FK_EMPLOYEE_TO_GROUP1_1 FOREIGN KEY (
	EMPLOYEE_NO
)
REFERENCES EMPLOYEE (
	EMPLOYEE_NO
);



ALTER TABLE ORDER1 ADD CONSTRAINT FK_CLIENT_TO_ORDER1_1 FOREIGN KEY (
	C_NO
)
REFERENCES CLIENT (
	C_NO
);

ALTER TABLE ORDER1 ADD CONSTRAINT FK_PROJECT_TO_ORDER1_1 FOREIGN KEY (
	PROJECT_NO
)
REFERENCES PROJECT (
	PROJECT_NO
);

ALTER TABLE ORDER1 ADD CONSTRAINT FK_EMPLOYEE_TO_ORDER1_1 FOREIGN KEY (
	EMPLOYEE_NO
)
REFERENCES EMPLOYEE (
	EMPLOYEE_NO
);

ALTER TABLE ORDER1 ADD CONSTRAINT FK_WAREHOUSE_TO_ORDER1_1 FOREIGN KEY (
	WAREHOUSE_NO
)
REFERENCES WAREHOUSE (
	WAREHOUSE_NO
);

ALTER TABLE ORDER1 ADD CONSTRAINT FK_TEAM_TO_ORDER1_1 FOREIGN KEY (
	TEAM_CODE
)
REFERENCES TEAM (
	TEAM_CODE
);


ALTER TABLE ORDER_LIST ADD CONSTRAINT FK_ORDER1_TO_ORDER_LIST_1 FOREIGN KEY (
	O_NO
)
REFERENCES ORDER1 (
	O_NO
);

ALTER TABLE ORDER_LIST ADD CONSTRAINT FK_PRODUCT_TO_ORDER_LIST_1 FOREIGN KEY (
	P_NO
)
REFERENCES PRODUCT (
	P_NO
);

ALTER TABLE TEAM ADD CONSTRAINT FK_EMPLOYEE_TO_TEAM_1 FOREIGN KEY (
	TEAMREADER_NO
)
REFERENCES EMPLOYEE (
	EMPLOYEE_NO
);

ALTER TABLE TEAM ADD CONSTRAINT FK_DEPARTMENT_TO_TEAM_1 FOREIGN KEY (
	DEPART_CODE
)
REFERENCES DEPARTMENT (
	DEPART_CODE
);

-- 시퀀스
--CREATE SEQUENCE SEQ_EMPLOYEE NOCYCLE NOCACHE;


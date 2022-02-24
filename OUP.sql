-- 테이블 전체 삭제문
--SELECT 'DROP TABLE "' || TABLE_NAME || '" CASCADE CONSTRAINTS;' FROM user_tables;

--DROP SEQUENCE C_NO_SEQ;

CREATE TABLE PROJECT (
	PROJECT_NO	NUMBER	NOT NULL,
	PROJECT_NAME	VARCHAR2(100)	NULL,
	PROJECT_CONTENTS	LONG	NULL,
	PROJECT_START	DATE	NULL,
	PROJECT_END	DATE	NULL,
	PROJECT_COLOR	VARCHAR2(30)	NULL,
	D_C_CODE	NUMBER	NOT NULL
);

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
	JOB_POSITION	VARCHAR2(10)	NULL,
	TEAM_CODE	VARCHAR2(10)	NULL,
	JOB_TITLE_CODE	VARCHAR2(10)	NULL,
	ENT_YN	CHAR	NULL
);

CREATE TABLE BOARD (
	BOARD_NO	NUMBER	NOT NULL,
	EMPLOYEE_NO	NUMBER	NULL,
	BOARD_TITLE	VARCHAR2(50)	NULL,
	BOARD_CONTENTS	LONG	NULL,
	BOARD_VIEWS	NUMBER	NULL,
	BOARD_DELETE	CHAR(1)	NULL,
	BOARD_DATE	DATE	NULL,
	BOARD_CATEGORY	VARCHAR2(5)	NULL
);

CREATE TABLE MAIL (
	MAIL_NO	NUMBER	NOT NULL,
	MAIL_TITLE	VARCHAR2(100)	NULL,
	MAIL_CONTENT	VARCHAR2(4000)	NULL,
	RECIPIENT	NUMBER	NULL,
	SENDER	NUMBER	NULL,
	MAIL_DATE	DATE	NULL,
	READ_YN	CHAR(1)	NULL,
    MAIL_DEL_YN CHAR(1) NULL
);

CREATE TABLE STATEMENT (
	S_NO	NUMBER	NOT NULL,
	C_NO	NUMBER	NULL,
	P_NO	NUMBER	NULL,
	PROJECT_NO	NUMBER	NULL,
	MANAGER	NUMBER	NULL,
	O_NO	NUMBER	NULL,
	S_TOTAL	NUMBER	NULL,
	S_VALIDITY	DATE	NULL,
	S_WDATE	DATE	NULL,
	TEAM_CODE	VARCHAR2(10)	NULL,
	D_C_CODE	NUMBER	NOT NULL
);

CREATE TABLE ESTIMATE (
	E_NO	NUMBER	NOT NULL,
	EMPLOYEE_NO	NUMBER	NULL,
	C_NO	NUMBER	NULL,
	PROJECT_NO2	NUMBER	NULL,
	E_WRITINGDATE	DATE	NULL,
	Field5	VARCHAR2(100)	NULL,
	E_TERMS	VARCHAR2(100)	NULL,
	E_VALIDITY	DATE	NULL,
	E_FILE_NO	NUMBER	NULL,
	WAREHOUSE_NO	NUMBER	NULL,
	TEAM_CODE	VARCHAR2(10)	NULL
);

CREATE TABLE CLIENT (
	C_NO	NUMBER	NOT NULL,
	C_NAME	VARCHAR2(100)	NULL,
	B_NO	NUMBER	NULL,
	B_NO2	NUMBER	NULL,
	C_TYPE	VARCHAR2(100)	NULL,
	C_OWNER	VARCHAR2(100)	NULL,
	C_ADDR	VARCHAR2(100)	NULL,
	C_PHONE	NUMBER	NULL,
	C_FAX	NUMBER	NULL,
	C_EMAIL	VARCHAR2(100)	NULL,
	C_UMONY	NUMBER	NULL,
	C_CREDITLIMIT	NUMBER	NULL,
	C_CREDIT_MONTH	NUMBER	NULL,
	C_CREDIT_DAY	NUMBER	NULL,
	C_DATE	DATE	NULL,
	C_DELETE	CHAR(1)	NULL
);

CREATE TABLE PRODUCT (
	P_NO	NUMBER	NOT NULL,
	P_NAME	VARCHAR2(100)	NULL,
	P_STANDARD	VARCHAR2(200)	NULL,
	P_COUNT	NUMBER	NULL,
	P_UNIT_PRICE	NUMBER	NULL,
	P_SUPPLY_PRICE	NUMBER	NULL,
	P_NOTE	VARCHAR2(1000)	NULL,
	WAREHOUSE_NO	NUMBER	NULL
);

CREATE TABLE CLIENT_LOG (
	C_LOG_NO	NUMBER	NOT NULL,
	C_NO	NUMBER	NULL,
	C_DATE	DATE	NULL,
	C_AMOUNT	NUMBER	NULL,
	C_NOTE	VARCHAR2(100)	NULL
);

CREATE TABLE DRAFT (
	D_NO	NUMBER	NOT NULL,
	PROJECT_NO	NUMBER	NULL,
	C_NO	NUMBER	NULL,
	TEAM_CODE	VARCHAR2(10)	NULL,
	O_NO	NUMBER	NULL,
	D_PIC	NUMBER	NULL,
	D_WAREHOUSE_NO	NUMBER	NULL,
	D_CODE	VARCHAR(100)	NULL,
	E_DATE	DATE	NULL,
	D_PAYEMENTDATE	DATE	NULL,
	D_VALIDITY	DATE	NULL,
	D_TERMS	VARCHAR2(100)	NULL,
	D_DELIVERY_PLACE	VARCHAR2(100)	NULL,
	D_NOTE	VARCHAR2(300)	NULL
);

CREATE TABLE DOCU_CATE (
	D_C_CODE	NUMBER	NOT NULL,
	D_C_NAME	VARCHAR2(100)	NULL
);

CREATE TABLE BOARD_IMG (
	BOARD_IMG_NO	NUMBER	NULL,
	BOARD_NO	NUMBER	NOT NULL,
	IMG_NAME1	VARCHAR2(500)	NULL,
	IMG_NAME2	VARCHAR2(500)	NULL,
	IMG_NAME3	VARCHAR2(500)	NULL,
	SERVER_NAME1	VARCHAR2(1000)	NULL,
	SERVER_NAME2	VARCHAR2(1000)	NULL,
	SERVER_NAME3	VARCHAR2(1000)	NULL,
	IMG_ROUTE	VARCHAR2(300)	NULL
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

CREATE TABLE JOBTITLE (
	JOB_TITLE_CODE	VARCHAR2(10)	NOT NULL,
	JOB_TITLE_NAME	VARCHAR2(10)	NULL
);

CREATE TABLE BOARD_COMMENT (
	COMMENT_NO	NUMBER	NOT NULL,
	BOARD_NO	NUMBER	NULL,
	EMPLOYEE_NO	NUMBER	NULL,
	COMMENT_CONTENTS	VARCHAR2(4000)	NULL,
	COMMENT_DATE	DATE	NULL,
	COMMENT_REPLY	CHAR(1)	NULL,
	COMMENT_DELETE	CHAR(1)	NULL
);

CREATE TABLE APPR_REGUL (
	A_R_NO	NUMBER	NOT NULL,
	DECISION_CODE	VARCHAR2(10)	NULL,
	ALLDECISION_CODE	VARCHAR2(10)	NULL,
	D_C_CODE	NUMBER	NULL
);

CREATE TABLE APPR (
	A_NO	NUMBER	NOT NULL,
	A_R_NO	NUMBER	NULL,
	A_DATE	DATE	NULL,
	A_E_DATE	DATE	NULL,
	A_PIC_NY	CHAR	NULL,
	A_TEAM_NY	CHAR	NULL,
	A_DEC_NY	CHAR	NULL,
	A_ALLDEC_NY	CHAR	NULL,
	A_STATEMENT	VARCHAR2(100)	NULL
);

CREATE TABLE MAILFILE (
	MAIL_FILE_NO	NUMBER	NULL,
	MAIL_NO	NUMBER	NOT NULL,
	FILE_SERVER_NAME1	VARCHAR(100)	NULL,
	FILE_SERVER_NAME2	VARCHAR(100)	NULL,
	FILE_SERVER_NAME3	VARCHAR(100)	NULL
);

CREATE TABLE ORDER1 (
	O_NO	NUMBER	NOT NULL,
	C_NO	NUMBER	NULL,
	PROJECT_NO	NUMBER	NULL,
	EMPLOYEE_NO	NUMBER	NULL,
	WAREHOUSE_NO	NUMBER	NULL,
	O_DATE	DATE	NULL,
	O_CONDITION	VARCHAR2(200)	NULL,
	TEAM_CODE	VARCHAR2(10)	NULL,
	VAT_YN	CHAR(1)	NULL,
	D_C_CODE	NUMBER	NOT NULL
);

CREATE TABLE WAREHOUSE (
	WAREHOUSE_NO	NUMBER	NOT NULL,
	WAREHOUSE_NAME	VARCHAR2(50)	NULL,
	WAREHOUSE_ADDR	VARCHAR2(200)	NULL
);

CREATE TABLE ESTIMATE_FILE (
	E_FILE_NO	NUMBER	NOT NULL,
	FILE_NAME	VARCHAR2(500)	NULL,
	SERVER_NAME	VARCHAR2(1000)	NULL,
	FILE_PATH	VARCHAR2(300)	NULL
);

CREATE TABLE SALE (
	SALE_NO	VARCHAR2(255)	NOT NULL,
	C_NO	NUMBER	NULL,
	WAREHOUSE_NO	NUMBER	NULL,
	EMPLOYEE_NO	NUMBER	NULL,
	PROJECT_NO	NUMBER	NULL,
	O_NO	NUMBER	NULL,
	SALE_SUM	NUMBER	NULL,
	SALE_DATE	DATE	NULL,
	S_UMONY	VARCHAR2(255)	NULL,
	VAT_YN	CHAR(1)	NULL
);

CREATE TABLE DEPOSIT (
	DEP_LOG_NO	VARCHAR2(255)	NOT NULL,
	C_NO	NUMBER	NULL,
	PROJECT_NO	NUMBER	NULL,
	D_DATE	DATE	NULL,
	ACCOUNT	NUMBER	NULL,
	D_BANK	VARCHAR2(20)	NULL,
	D_MONEY	NUMBER	NULL
);

CREATE TABLE SALE_LIST (
	SALE_LIST_NO	VARCHAR(255)	NOT NULL,
	SALE_NO	VARCHAR(255)	NULL,
	P_NO	NUMBER	NULL,
	S_QNT	NUMBER	NULL,
	S_PRICE	NUMBER	NULL
);

CREATE TABLE ORDER_LIST (
	O_LIST_NO	VARCHAR(255)	NOT NULL,
	O_NO	NUMBER	NULL,
	P_NO	NUMBER	NULL,
	O_NUM	NUMBER	NULL,
	O_PRICE	NUMBER	NULL,
	O_DELIBERY_DATE	DATE	NULL
);

CREATE TABLE TEAM (
	TEAM_CODE	VARCHAR2(10)	NOT NULL,
	TEAM_NAME	VARCHAR2(20)	NULL,
	TEAMREADER_NO	NUMBER	NULL,
	DEPART_CODE	VARCHAR2(10)	NULL
);

CREATE TABLE E_LIST (
	E_LIST_NO	VARCHAR(255)	NOT NULL,
	E_NO	NUMBER	NULL
);

CREATE TABLE E_LIST_PRODUCT (
	E_LIST_NO	VARCHAR(255)	NOT NULL,
	P_NO	NUMBER	NULL,
	E_QNT	VARCHAR(255)	NULL,
	E_PRICE	VARCHAR(255)	NULL
);

ALTER TABLE PROJECT ADD CONSTRAINT PK_PROJECT PRIMARY KEY (
	PROJECT_NO
);

ALTER TABLE EMPLOYEE ADD CONSTRAINT PK_EMPLOYEE PRIMARY KEY (
	EMPLOYEE_NO
);

ALTER TABLE BOARD ADD CONSTRAINT PK_BOARD PRIMARY KEY (
	BOARD_NO
);

ALTER TABLE MAIL ADD CONSTRAINT PK_MAIL PRIMARY KEY (
	MAIL_NO
);

ALTER TABLE STATEMENT ADD CONSTRAINT PK_STATEMENT PRIMARY KEY (
	S_NO
);

ALTER TABLE ESTIMATE ADD CONSTRAINT PK_ESTIMATE PRIMARY KEY (
	E_NO
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

ALTER TABLE DRAFT ADD CONSTRAINT PK_DRAFT PRIMARY KEY (
	D_NO
);

ALTER TABLE DOCU_CATE ADD CONSTRAINT PK_DOCU_CATE PRIMARY KEY (
	D_C_CODE
);

ALTER TABLE BOARD_IMG ADD CONSTRAINT PK_BOARD_IMG PRIMARY KEY (
	BOARD_IMG_NO,
	BOARD_NO
);

ALTER TABLE GROUP1 ADD CONSTRAINT PK_GROUP1 PRIMARY KEY (
	GROUP_NO
);

ALTER TABLE DEPARTMENT ADD CONSTRAINT PK_DEPARTMENT PRIMARY KEY (
	DEPART_CODE
);

ALTER TABLE JOBTITLE ADD CONSTRAINT PK_JOBTITLE PRIMARY KEY (
	JOB_TITLE_CODE
);

ALTER TABLE BOARD_COMMENT ADD CONSTRAINT PK_BOARD_COMMENT PRIMARY KEY (
	COMMENT_NO
);

ALTER TABLE APPR_REGUL ADD CONSTRAINT PK_APPR_REGUL PRIMARY KEY (
	A_R_NO
);

ALTER TABLE APPR ADD CONSTRAINT PK_APPR PRIMARY KEY (
	A_NO
);

ALTER TABLE MAILFILE ADD CONSTRAINT PK_MAILFILE PRIMARY KEY (
	MAIL_FILE_NO,
	MAIL_NO
);

ALTER TABLE ORDER1 ADD CONSTRAINT PK_ORDER1 PRIMARY KEY (
	O_NO
);

ALTER TABLE WAREHOUSE ADD CONSTRAINT PK_WAREHOUSE PRIMARY KEY (
	WAREHOUSE_NO
);

ALTER TABLE ESTIMATE_FILE ADD CONSTRAINT PK_ESTIMATE_FILE PRIMARY KEY (
	E_FILE_NO
);

ALTER TABLE SALE ADD CONSTRAINT PK_SALE PRIMARY KEY (
	SALE_NO
);

ALTER TABLE DEPOSIT ADD CONSTRAINT PK_DEPOSIT PRIMARY KEY (
	DEP_LOG_NO
);

ALTER TABLE SALE_LIST ADD CONSTRAINT PK_SALE_LIST PRIMARY KEY (
	SALE_LIST_NO
);

ALTER TABLE ORDER_LIST ADD CONSTRAINT PK_ORDER_LIST PRIMARY KEY (
	O_LIST_NO
);

ALTER TABLE TEAM ADD CONSTRAINT PK_TEAM PRIMARY KEY (
	TEAM_CODE
);

ALTER TABLE E_LIST ADD CONSTRAINT PK_E_LIST PRIMARY KEY (
	E_LIST_NO
);

ALTER TABLE E_LIST_PRODUCT ADD CONSTRAINT PK_E_LIST_PRODUCT PRIMARY KEY (
	E_LIST_NO
);

ALTER TABLE PROJECT ADD CONSTRAINT FK_DOCU_CATE_TO_PROJECT_1 FOREIGN KEY (
	D_C_CODE
)
REFERENCES DOCU_CATE (
	D_C_CODE
);

ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_TEAM_TO_EMPLOYEE_1 FOREIGN KEY (
	TEAM_CODE
)
REFERENCES TEAM (
	TEAM_CODE
);

ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_JOBTITLE_TO_EMPLOYEE_1 FOREIGN KEY (
	JOB_TITLE_CODE
)
REFERENCES JOBTITLE (
	JOB_TITLE_CODE
);

ALTER TABLE BOARD ADD CONSTRAINT FK_EMPLOYEE_TO_BOARD_1 FOREIGN KEY (
	EMPLOYEE_NO
)
REFERENCES EMPLOYEE (
	EMPLOYEE_NO
);

ALTER TABLE MAIL ADD CONSTRAINT FK_EMPLOYEE_TO_MAIL_1 FOREIGN KEY (
	RECIPIENT
)
REFERENCES EMPLOYEE (
	EMPLOYEE_NO
);

ALTER TABLE MAIL ADD CONSTRAINT FK_EMPLOYEE_TO_MAIL_2 FOREIGN KEY (
	SENDER
)
REFERENCES EMPLOYEE (
	EMPLOYEE_NO
);

ALTER TABLE STATEMENT ADD CONSTRAINT FK_CLIENT_TO_STATEMENT_1 FOREIGN KEY (
	C_NO
)
REFERENCES CLIENT (
	C_NO
);

ALTER TABLE STATEMENT ADD CONSTRAINT FK_PRODUCT_TO_STATEMENT_1 FOREIGN KEY (
	P_NO
)
REFERENCES PRODUCT (
	P_NO
);

ALTER TABLE STATEMENT ADD CONSTRAINT FK_PROJECT_TO_STATEMENT_1 FOREIGN KEY (
	PROJECT_NO
)
REFERENCES PROJECT (
	PROJECT_NO
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

ALTER TABLE STATEMENT ADD CONSTRAINT FK_TEAM_TO_STATEMENT_1 FOREIGN KEY (
	TEAM_CODE
)
REFERENCES TEAM (
	TEAM_CODE
);

ALTER TABLE STATEMENT ADD CONSTRAINT FK_DOCU_CATE_TO_STATEMENT_1 FOREIGN KEY (
	D_C_CODE
)
REFERENCES DOCU_CATE (
	D_C_CODE
);

ALTER TABLE ESTIMATE ADD CONSTRAINT FK_EMPLOYEE_TO_ESTIMATE_1 FOREIGN KEY (
	EMPLOYEE_NO
)
REFERENCES EMPLOYEE (
	EMPLOYEE_NO
);

ALTER TABLE ESTIMATE ADD CONSTRAINT FK_CLIENT_TO_ESTIMATE_1 FOREIGN KEY (
	C_NO
)
REFERENCES CLIENT (
	C_NO
);

ALTER TABLE ESTIMATE ADD CONSTRAINT FK_PROJECT_TO_ESTIMATE_1 FOREIGN KEY (
	PROJECT_NO2
)
REFERENCES PROJECT (
	PROJECT_NO
);

ALTER TABLE ESTIMATE ADD CONSTRAINT FK_ESTIMATE_FILE_TO_ESTIMATE_1 FOREIGN KEY (
	E_FILE_NO
)
REFERENCES ESTIMATE_FILE (
	E_FILE_NO
);

ALTER TABLE ESTIMATE ADD CONSTRAINT FK_WAREHOUSE_TO_ESTIMATE_1 FOREIGN KEY (
	WAREHOUSE_NO
)
REFERENCES WAREHOUSE (
	WAREHOUSE_NO
);

ALTER TABLE ESTIMATE ADD CONSTRAINT FK_TEAM_TO_ESTIMATE_1 FOREIGN KEY (
	TEAM_CODE
)
REFERENCES TEAM (
	TEAM_CODE
);

ALTER TABLE PRODUCT ADD CONSTRAINT FK_WAREHOUSE_TO_PRODUCT_1 FOREIGN KEY (
	WAREHOUSE_NO
)
REFERENCES WAREHOUSE (
	WAREHOUSE_NO
);

ALTER TABLE CLIENT_LOG ADD CONSTRAINT FK_CLIENT_TO_CLIENT_LOG_1 FOREIGN KEY (
	C_NO
)
REFERENCES CLIENT (
	C_NO
);

ALTER TABLE DRAFT ADD CONSTRAINT FK_PROJECT_TO_DRAFT_1 FOREIGN KEY (
	PROJECT_NO
)
REFERENCES PROJECT (
	PROJECT_NO
);

ALTER TABLE DRAFT ADD CONSTRAINT FK_CLIENT_TO_DRAFT_1 FOREIGN KEY (
	C_NO
)
REFERENCES CLIENT (
	C_NO
);

ALTER TABLE DRAFT ADD CONSTRAINT FK_TEAM_TO_DRAFT_1 FOREIGN KEY (
	TEAM_CODE
)
REFERENCES TEAM (
	TEAM_CODE
);

ALTER TABLE DRAFT ADD CONSTRAINT FK_ORDER1_TO_DRAFT_1 FOREIGN KEY (
	O_NO
)
REFERENCES ORDER1 (
	O_NO
);

ALTER TABLE DRAFT ADD CONSTRAINT FK_EMPLOYEE_TO_DRAFT_1 FOREIGN KEY (
	D_PIC
)
REFERENCES EMPLOYEE (
	EMPLOYEE_NO
);

ALTER TABLE DRAFT ADD CONSTRAINT FK_WAREHOUSE_TO_DRAFT_1 FOREIGN KEY (
	D_WAREHOUSE_NO
)
REFERENCES WAREHOUSE (
	WAREHOUSE_NO
);

ALTER TABLE BOARD_IMG ADD CONSTRAINT FK_BOARD_TO_BOARD_IMG_1 FOREIGN KEY (
	BOARD_NO
)
REFERENCES BOARD (
	BOARD_NO
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

ALTER TABLE BOARD_COMMENT ADD CONSTRAINT FK_BOARD_TO_BOARD_COMMENT_1 FOREIGN KEY (
	BOARD_NO
)
REFERENCES BOARD (
	BOARD_NO
);

ALTER TABLE BOARD_COMMENT ADD CONSTRAINT FK_EMPLOYEE_TO_BOARD_COMMENT_1 FOREIGN KEY (
	EMPLOYEE_NO
)
REFERENCES EMPLOYEE (
	EMPLOYEE_NO
);

ALTER TABLE APPR_REGUL ADD CONSTRAINT FK_JOBTITLE_TO_APPR_REGUL_1 FOREIGN KEY (
	DECISION_CODE
)
REFERENCES JOBTITLE (
	JOB_TITLE_CODE
);

ALTER TABLE APPR_REGUL ADD CONSTRAINT FK_JOBTITLE_TO_APPR_REGUL_2 FOREIGN KEY (
	ALLDECISION_CODE
)
REFERENCES JOBTITLE (
	JOB_TITLE_CODE
);

ALTER TABLE APPR_REGUL ADD CONSTRAINT FK_DOCU_CATE_TO_APPR_REGUL_1 FOREIGN KEY (
	D_C_CODE
)
REFERENCES DOCU_CATE (
	D_C_CODE
);

ALTER TABLE APPR ADD CONSTRAINT FK_APPR_REGUL_TO_APPR_1 FOREIGN KEY (
	A_R_NO
)
REFERENCES APPR_REGUL (
	A_R_NO
);

ALTER TABLE MAILFILE ADD CONSTRAINT FK_MAIL_TO_MAILFILE_1 FOREIGN KEY (
	MAIL_NO
)
REFERENCES MAIL (
	MAIL_NO
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

ALTER TABLE ORDER1 ADD CONSTRAINT FK_DOCU_CATE_TO_ORDER1_1 FOREIGN KEY (
	D_C_CODE
)
REFERENCES DOCU_CATE (
	D_C_CODE
);

ALTER TABLE SALE ADD CONSTRAINT FK_CLIENT_TO_SALE_1 FOREIGN KEY (
	C_NO
)
REFERENCES CLIENT (
	C_NO
);

ALTER TABLE SALE ADD CONSTRAINT FK_WAREHOUSE_TO_SALE_1 FOREIGN KEY (
	WAREHOUSE_NO
)
REFERENCES WAREHOUSE (
	WAREHOUSE_NO
);

ALTER TABLE SALE ADD CONSTRAINT FK_EMPLOYEE_TO_SALE_1 FOREIGN KEY (
	EMPLOYEE_NO
)
REFERENCES EMPLOYEE (
	EMPLOYEE_NO
);

ALTER TABLE SALE ADD CONSTRAINT FK_PROJECT_TO_SALE_1 FOREIGN KEY (
	PROJECT_NO
)
REFERENCES PROJECT (
	PROJECT_NO
);

ALTER TABLE SALE ADD CONSTRAINT FK_ORDER1_TO_SALE_1 FOREIGN KEY (
	O_NO
)
REFERENCES ORDER1 (
	O_NO
);

ALTER TABLE DEPOSIT ADD CONSTRAINT FK_CLIENT_TO_DEPOSIT_1 FOREIGN KEY (
	C_NO
)
REFERENCES CLIENT (
	C_NO
);

ALTER TABLE DEPOSIT ADD CONSTRAINT FK_PROJECT_TO_DEPOSIT_1 FOREIGN KEY (
	PROJECT_NO
)
REFERENCES PROJECT (
	PROJECT_NO
);

ALTER TABLE SALE_LIST ADD CONSTRAINT FK_SALE_TO_SALE_LIST_1 FOREIGN KEY (
	SALE_NO
)
REFERENCES SALE (
	SALE_NO
);

ALTER TABLE SALE_LIST ADD CONSTRAINT FK_PRODUCT_TO_SALE_LIST_1 FOREIGN KEY (
	P_NO
)
REFERENCES PRODUCT (
	P_NO
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

ALTER TABLE E_LIST ADD CONSTRAINT FK_ESTIMATE_TO_E_LIST_1 FOREIGN KEY (
	E_NO
)
REFERENCES ESTIMATE (
	E_NO
);

ALTER TABLE E_LIST_PRODUCT ADD CONSTRAINT FK_E_LIST_TO_E_LIST_PRODUCT_1 FOREIGN KEY (
	E_LIST_NO
)
REFERENCES E_LIST (
	E_LIST_NO
);

ALTER TABLE E_LIST_PRODUCT ADD CONSTRAINT FK_PRODUCT_TO_E_LIST_PRODUCT_1 FOREIGN KEY (
	P_NO
)
REFERENCES PRODUCT (
	P_NO
);



-- 시퀀스
--CREATE SEQUENCE SEQ_EMPLOYEE NOCYCLE NOCACHE;

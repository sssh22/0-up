package com.kh.oup.statement.vo;

import java.util.Date;

public class StatementVo {

	int S_NO;			//거래명세서 번호
	int C_NO; 			// 거래처 번호 -----client
	int PROJECT_NO;		// 프로젝트 번호
	int MANAGER;		// 담당자 (사원번호)
	int O_NO; 			// 주문서 번호
	int S_TOTAL;		//총합
	Date S_VALIDITY; 	//유효기간
	Date S_WDATE; 		//작성날짜
	String TEAM_CODE;	// 팀코드
	String D_C_CODE;	 //문서종류코드
	String APPROVAL;	//결재상태

	//CLIENT
	String C_NAME;	//상호 	VARCHAR2(100)
	int B_NO;		//사업자 등록 번호NUMBER
	String C_OWNER;		//대표자명 
	String C_ADDR;		//주소
	String C_PHONE;		//전화
	String C_FAX;		//팩스
	String C_EMAIL;		//메일 
	
	//ORDER
	//int O_NO;		//NUMBER
	//int C_NO;		
	//int PROJECT_NO;		
	//int EMPLOYEE_NO;		
	//String TEAM_CODE;		
	int WAREHOUSE_NO;		
	//String D_C_CODE;		
	Date O_DATE;		
	Date CREDIT_DATE;		
	String O_CONDITION;		
	String VAT_YN;		

	

	
}

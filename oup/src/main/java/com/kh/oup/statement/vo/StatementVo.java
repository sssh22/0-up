package com.kh.oup.statement.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
@Data
public class StatementVo {
	
	
	//ORDER -----------------------------------
	int oNo;				//주문서번호
	int cNo;				//거래처 코드
	int projectNo;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date oDate;		
	
	String oCondition;		
	String vatYn;		
	//Date creditDate;		
	//int warehouseNo;		
	//String TEAM_CODE;		
	
	
	//STATEMENT ---------------------------------------
	int sNo;				//거래명세서 번호
	int manager;			// 담당자 (사원번호)
	int sTotal;				//총합
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date sWdate; 			//작성날짜
	
	String teamCode;		// 팀코드
	String dCCode;			//문서종류코드---------ST!!!!!
	String approval;		//결재상태
	
	//int O_NO; 			//주문서 번호
	//Date sValidity; 		//유효기간
	//int C_NO; 			// 거래처 번호 -----client
	//int PROJECT_NO;		// 프로젝트 번호

	
	//CLIENT ----------------------------------------
	String cName;			//상호 	
	int bNo;				//사업자 등록 번호
	String cOwner;			//대표자명 
	String cAddr;			//주소
	String cPhone;			//전화
	String cFax;			//팩스
	String cEmail;			//메일 
	//int C_NO; 			// 거래처 번호 ----- ORDER1
	

	int sku;

	
}

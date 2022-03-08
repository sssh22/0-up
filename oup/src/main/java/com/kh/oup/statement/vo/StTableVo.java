package com.kh.oup.statement.vo;

import java.util.Date;

public class StTableVo {
	
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
	
}

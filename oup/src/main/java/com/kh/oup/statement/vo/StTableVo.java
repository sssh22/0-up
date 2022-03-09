package com.kh.oup.statement.vo;

import java.util.Date;

import lombok.Data;
@Data
public class StTableVo {
	
	int sNo;			//거래명세서 번호
	int cNo; 			// 거래처 번호 -----client
	int projectNo;		// 프로젝트 번호
	int manager;		// 담당자 (사원번호)
	int oNo; 			// 주문서 번호
	int sTotal;			//총합
	Date sValidity; 	//유효기간
	Date sWdate; 		//작성날짜
	String teamCode;	// 팀코드
	String dCCode;	 	//문서종류코드
	String approval;	//결재상태
	
}

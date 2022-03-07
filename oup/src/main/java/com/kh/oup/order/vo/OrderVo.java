package com.kh.oup.order.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVo {
	private int oNo;			// 주문서번호
	private int cNo;			// 거래처번호
	private int projectNo;		// 프로젝트번호
	private int warehouseNo;	// 창고번호
	private Date oDate;			// 주문일
	private Date creditDate; 	// 여신기한
	private String teamCode;	// 팀코드
	private int employeeNo;		// 거래처 대표, 담당자
	private String vatYn;		// 부가세 여부
	
}

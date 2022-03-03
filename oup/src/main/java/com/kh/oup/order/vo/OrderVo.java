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
	private String owner;		// 거래처 대표, 담당자
	private String vatYn;		// 부가세 여부
	private int dCCode;			// 문서종류코드
	private int[] pNo;			// 품목 번호
	private String[] pName;		// 품목 이름
	private int[] oNum;			// 품목 개수
	private int[] oPrice;			// 품목 가격
	private Date[] oDeliberyDate;	// 납기일자
	private int orderRowNum;		// 주문한 품목 row
}

package com.kh.oup.order.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderProductVo {
	private int orderNo;		// 주문서 번호
	private int[] pNo;			// 품목 번호
	private String[] pName;		// 품목 이름
	private int[] oNum;			// 품목 개수
	private int[] oPrice;			// 품목 가격
	private Date[] oDeliberyDate;	// 납기일자
	
	private String[] oDeliberyDateStr;
}

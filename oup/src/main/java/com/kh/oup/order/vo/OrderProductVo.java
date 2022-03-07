package com.kh.oup.order.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderProductVo {
	private int[] pNo;			// 前格 锅龋
	private String[] pName;		// 前格 捞抚
	private int[] oNum;			// 前格 俺荐
	private int[] oPrice;			// 前格 啊拜
	private Date[] oDeliberyDate;	// 吵扁老磊
	private int orderRowNum;		// 林巩茄 前格 row
}

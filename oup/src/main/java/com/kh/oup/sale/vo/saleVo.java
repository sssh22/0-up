package com.kh.oup.sale.vo;

import java.util.Date;

import lombok.Data;

@Data
public class saleVo {
	private long saleNo;
	private long cNo;
	private long wareHouseNo;
	private long employeeNo;
	private long projectNo;
	private long oNo;
	private long saleSum;
	private Date saleDate;
	private long sUmony;
	private char vatYN;
}

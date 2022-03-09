package com.kh.oup.statement.vo;

import java.util.Date;

import lombok.Data;

@Data
public class SearchPageVo {

	private int currentPage;	
	private int cntPerPage;	
	private int pageBtnCnt;	
	private int totalRow;	
	
	private int startRow; 
	private int endRow;	
	private int startPage;	
	private int endPage;	
	private int lastPage;	
	
	private String category;
	private String search;
	
	private Date date1;
	private Date date2;
	
}

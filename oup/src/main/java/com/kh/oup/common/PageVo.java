package com.kh.oup.common;

import lombok.Data;

@Data
public class PageVo { 
	private String search;	// �˻����� ����¡ �� ���
	
	private int currentPage;	// ���� ������
	private int cntPerPage;	// ������ �ϳ��� ������ row ����
	private int pageBtnCnt;	// ������ ��ư � ��������
	private int totalRow;	// ���̺��� ��ü row ����
	
	private int startRow; // db���� ��ȸ�� rownum
	private int endRow;	// db���� ��ȸ�� rownum
	private int startPage;	// ����������
	private int endPage;	// ������ ������
	private int lastPage;	// db�� row �������� ������ �������� ������
	
	public PageVo(String currentPage, int cntPerPage, int pageBtnCnt, int totalRow) {
		this.currentPage = Integer.parseInt(currentPage);
		this.cntPerPage = cntPerPage;
		this.pageBtnCnt = pageBtnCnt;
		this.totalRow = totalRow;
		calc(this.currentPage, cntPerPage, pageBtnCnt, totalRow);
	}
	
	public PageVo(String currentPage, int totalRow) {
		this.currentPage = Integer.parseInt(currentPage);
		this.cntPerPage = 10;
		this.pageBtnCnt = 5;
		this.totalRow = totalRow;
		calc(this.currentPage, cntPerPage, pageBtnCnt, totalRow);
	}
	
	public PageVo(String currentPage, int totalRow, String search) {
		this.search = search;
		this.currentPage = Integer.parseInt(currentPage);
		this.cntPerPage = 10;
		this.pageBtnCnt = 5;
		this.totalRow = totalRow;
		calc(this.currentPage, cntPerPage, pageBtnCnt, totalRow);
	}
	
	
	//sssh pageVo
	public PageVo(String currentPage, int cntPerPage, int pageBtnCnt, int totalRow, String search) {
		this.search = search;
		this.currentPage = Integer.parseInt(currentPage);
		this.cntPerPage = cntPerPage;
		this.pageBtnCnt = pageBtnCnt;
		this.totalRow = totalRow;
		calc(this.currentPage, cntPerPage, pageBtnCnt, totalRow);
	}
	
	
	
	private void calc(int currentPage, int cntPerPage, int pageBtnCnt, int totalRow) {
		this.setEndRow(this.getCurrentPage() * this.getCntPerPage());
		this.setStartRow(this.getEndRow() - this.getCntPerPage() + 1 );
		
		int lastPage = this.getTotalRow() / this.getCntPerPage(); 
		if(this.getTotalRow() % this.getCntPerPage() > 0) {
			lastPage++;
		}			
		this.setLastPage(lastPage);
		
		int endPage = this.getCurrentPage() / this.getPageBtnCnt();	
		if(this.getCurrentPage() % this.getPageBtnCnt() >0) {
			endPage ++;
		}
		this.setEndPage(endPage * this.getPageBtnCnt());
		
		this.setStartPage(this.getEndPage() - this.getPageBtnCnt() + 1);
		
	}


}

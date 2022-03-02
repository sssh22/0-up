package com.kh.oup.project.vo;

import lombok.Data;

@Data
public class ProjectVo {
	
	private int projectNo;
	private String projectName;
	private String projectContents1;
	private String projectContents2;
	private String projectContents3;
	private String projectContents4;
	private String projectStart; //기한 시작
	private String projectEnd;  //기한 마감
	private String projectColor;
	private String dCCode; //문서종류 코드 ,, 4
	private String aStatement; //결재상태
	
	private String saleSum; //SALE 미수금
	private String sUmoney; //SALE 미수금
	


}

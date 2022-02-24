package com.kh.oup.project.vo;

import lombok.Data;

@Data
public class ProjectVo {
	
	private int projectNo;
	private String projectName;
	private String projectContent1;
	private String projectContent2;
	private String projectContent3;
	private String projectContent4;
	private String projectStart; //기한 시작
	private String projectEnd;  //기한 마감
	private String projectColor;


}

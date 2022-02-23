package com.kh.oup.mail.vo;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MailVo {
	private long mailNo;
	private String mailTitle;
	private String mailContent;
	private long recipient;
	private long sender;
	private Date mailDate;
	private char readYn;
	private List<MultipartFile> attachment;
	private String changeName1;
	private String changeName2;
	private String changeName3;
}

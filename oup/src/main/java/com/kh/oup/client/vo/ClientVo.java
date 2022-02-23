package com.kh.oup.client.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ClientVo {
	private int cNo;		// 거래처 번호
	private String cName;	// 상호이름
	private int bNo;		// 사업자등록번호
	private int bNo2;		// 종사업장번호
	private String cType;	// 업형
	private String cOwner;	// 대표자명
	private String cAddr;	// 주소
	private String cPhone;	// 전화번호
	private String cFax;	// Fax
	private String cEmail;	// email
	private int cUmony;		// 미수금
	private int cCreditLimit;	// 여신한도
	private int cCreditDateMonth;	// 여신기한 (월)
	private int cCreditDateDay;		// 여신기한 (일)
	private Date cDate;				// 생성날짜
	private String cDeleteYn;		// 삭제여부
}

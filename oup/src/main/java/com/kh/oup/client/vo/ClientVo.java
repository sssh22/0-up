package com.kh.oup.client.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ClientVo {
	int cNo;		// 거래처 번호
	String cName;	// 상호이름
	int bNo;		// 사업자등록번호
	int bNo2;		// 종사업장번호
	String cType;	// 업형
	String cOwner;	// 대표자명
	String cAddr;	// 주소
	String cPhone;	// 전화번호
	String cFax;	// Fax
	String cEmail;	// email
	int cPic;		// 거래처 추가하는 직원
	int cUmony;		// 미수금
	int cCreditLimit;	// 여신한도
	int cCreditDateMonth;	// 여신기한 (월)
	int cCreditDateDay;		// 여신기한 (일)
	Date cDate;				// 생성날짜
	String cDeleteYn;		// 삭제여부
}

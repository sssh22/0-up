package com.kh.oup.statement.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
@Data
public class StProductsVo {

	//ORDER_LIST
	int oListNo;  			//리스트코드
	int oNo;				//주문서 번호
	int pNo;				//품목코드
	int oNum;				//품목 수량
	int oPrice;				//품목 가격
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date oDeliberyDate;		//납품 일자

}

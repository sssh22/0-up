package com.kh.oup.sale.vo;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class SaleListVo {
	private long saleListNo;
	private long saleNo;
	private int pNo;
	private int sQnt;
	private int sPrice;
	private String sDeliberyDate;
	
	private List<SaleListVo> voList;
}

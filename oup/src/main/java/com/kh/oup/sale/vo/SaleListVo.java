package com.kh.oup.sale.vo;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class SaleListVo {
	private long saleListNo;
	private long saleNo;
	private ArrayList<Product> list;
//	private List<Integer> pNo;
//	private List<Integer> sQnt;
//	private List<Integer> sPrice;
//	private List<String> sDeliberyDate;
}

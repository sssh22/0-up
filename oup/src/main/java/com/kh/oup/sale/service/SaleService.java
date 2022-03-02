package com.kh.oup.sale.service;

import com.kh.oup.sale.vo.SaleListVo;
import com.kh.oup.sale.vo.SaleVo;

public interface SaleService {

	int saleEnter(SaleVo vo, SaleListVo vo2) throws Exception;

	long getSeq() throws Exception;

}

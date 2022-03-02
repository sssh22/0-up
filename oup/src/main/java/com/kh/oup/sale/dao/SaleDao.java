package com.kh.oup.sale.dao;

import com.kh.oup.sale.vo.SaleListVo;
import com.kh.oup.sale.vo.SaleVo;

public interface SaleDao {

	int saleEnter(SaleVo vo) throws Exception;

	long getSaleSeq() throws Exception;

	int saleListEnter(SaleListVo vo2)  throws Exception;

}

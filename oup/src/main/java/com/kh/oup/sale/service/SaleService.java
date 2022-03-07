package com.kh.oup.sale.service;

import java.util.List;

import com.kh.oup.common.PageVo;
import com.kh.oup.sale.vo.SaleListVo;
import com.kh.oup.sale.vo.SaleVo;

public interface SaleService {

	int saleEnter(SaleVo vo, SaleListVo vo2) throws Exception;

	long getSeq() throws Exception;

	int clientAddUmony(long cNo, long sUmony) throws Exception;

	int getSaleCnt() throws Exception;

	List<SaleVo> getSaleList(PageVo vo) throws Exception;

}

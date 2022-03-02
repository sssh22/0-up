package com.kh.oup.sale.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.oup.sale.dao.SaleDao;
import com.kh.oup.sale.vo.SaleListVo;
import com.kh.oup.sale.vo.SaleVo;

import lombok.extern.slf4j.Slf4j;

@Service
@Transactional
@Slf4j
public class SaleServiceImpl implements SaleService{

	@Autowired
	private SaleDao dao;
	
	@Override
	public int saleEnter(SaleVo vo, SaleListVo vo2) throws Exception {
		System.out.println("vo2:::" + vo2);
		int result = dao.saleEnter(vo);
		int result2 = dao.saleListEnter(vo2);

		return result;
	}

	@Override
	public long getSeq() throws Exception {
		return dao.getSaleSeq();
	}

}

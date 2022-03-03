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
	public int saleEnter(SaleVo saleVo, SaleListVo saleListVo) throws Exception {
		int result = dao.saleEnter(saleVo);
		
		for(int i = 0; i < saleListVo.getVoList().size(); i++) {
			dao.saleListEnter(saleListVo.getVoList().get(i));
		}

		return result;
	}

	@Override
	public long getSeq() throws Exception {
		return dao.getSaleSeq();
	}

}

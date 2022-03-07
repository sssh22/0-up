package com.kh.oup.sale.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.oup.common.PageVo;
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
			System.out.println("service.saleListVo.getVoList().get("+ i + ") ::: " + saleListVo.getVoList().get(i));
			dao.saleListEnter(saleListVo.getVoList().get(i));
		}

		return result;
	}

	@Override
	public long getSeq() throws Exception {
		return dao.getSaleSeq();
	}

	@Override
	public int clientAddUmony(long cNo, long sUmony) throws Exception {
		return dao.clientAddUmony(cNo, sUmony);
	}

	@Override
	public int getSaleCnt() throws Exception {
		return dao.getSaleCnt();
	}

	@Override
	public List<SaleVo> getSaleList(PageVo vo) throws Exception {
		List<SaleVo> saleVo = dao.getSaleList(vo);
		
		for(int i = 0; i < saleVo.size(); i++) {
			//거래처명
			saleVo.get(i).setCName(dao.getCName(saleVo.get(i).getCNo()));
			//담당자명
			saleVo.get(i).setEmployeeName(dao.getEmployeeName(saleVo.get(i).getEmployeeNo()));
			//품목번호
			saleVo.get(i).setProductNo(dao.getProductNo(saleVo.get(i).getSaleNo()));
			//품목명
			saleVo.get(i).setProductName(dao.getProductName(saleVo.get(i).getProductNo()));
			//품목갯수
			saleVo.get(i).setProductCnt(Integer.parseInt(dao.getProductCnt(saleVo.get(i).getSaleNo()))-1);
			//출하창고명
			saleVo.get(i).setWareHouseName(dao.getWareHouseName(saleVo.get(i).getWareHouseNo()));
		}
		
		
		return saleVo;
	}

}

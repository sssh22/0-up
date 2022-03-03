package com.kh.oup.sale.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.oup.sale.vo.SaleListVo;
import com.kh.oup.sale.vo.SaleVo;

@Repository
public class SaleDaoImpl implements SaleDao{

	@Autowired
	private SqlSession ss;
	
	@Override
	public int saleEnter(SaleVo vo) {
		return ss.insert("sale.saleEnter", vo);
	}

	@Override
	public long getSaleSeq() throws Exception {
		return ss.selectOne("sale.getSeq");
	}

	@Override
	public int saleListEnter(SaleListVo saleListVo) throws Exception {
		for(int i = 0; i < saleListVo.getVoList().size(); i++) {
			System.out.println(saleListVo.getVoList().get(i));
		}
		System.out.println("dao.SaleListVo :::" + saleListVo);
		return ss.insert("sale.saleListEnter", saleListVo);
	}

}
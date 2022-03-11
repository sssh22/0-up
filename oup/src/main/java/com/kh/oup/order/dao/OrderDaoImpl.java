package com.kh.oup.order.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kh.oup.client.vo.ClientVo;
import com.kh.oup.common.PageVo;
import com.kh.oup.order.vo.OrderProductVo;
import com.kh.oup.order.vo.OrderVo;

@Repository
public class OrderDaoImpl implements OrderDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public int selectOrderSeq() throws Exception {
		return session.selectOne("order.selectOrderSeq");
	}

	@Override
	public int insertOrder(OrderVo vo) throws Exception {
		return session.insert("order.insertOrder", vo);
	}

	@Override
	public int insertOrderProduct(OrderProductVo pVo) throws Exception {
		return session.insert("order.insertOrderProduct", pVo);
	}

	@Override
	public int selectOrderCnt(OrderVo vo) throws Exception {
		return session.selectOne("order.selectOrderCnt", vo);
	}

	@Override
	public List<ClientVo> selectOrderList(PageVo paVo) throws Exception {
		return null;
	}


}

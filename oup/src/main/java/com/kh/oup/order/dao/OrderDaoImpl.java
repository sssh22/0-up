package com.kh.oup.order.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kh.oup.order.vo.OrderProductVo;
import com.kh.oup.order.vo.OrderVo;

@Repository
public class OrderDaoImpl implements OrderDao{
	
	@Autowired
	private SqlSession session;

	@Override
	@Transactional(rollbackFor = Exception.class) 
	public int insertOrder(OrderVo vo, OrderProductVo pVo) throws Exception {
		int order1 = session.insert("order.insertOrder", vo);
		int order2 = session.insert("order.insertOrderProduct", pVo);
		return order1 + order2;
	}

}

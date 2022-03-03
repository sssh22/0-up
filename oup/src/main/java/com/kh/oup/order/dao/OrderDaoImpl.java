package com.kh.oup.order.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.oup.order.vo.OrderVo;

@Repository
public class OrderDaoImpl implements OrderDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public int insertOrder(OrderVo vo) throws Exception {
		return session.insert("insertOrder", vo);
	}

}

package com.kh.oup.order.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.oup.order.dao.OrderDao;
import com.kh.oup.order.vo.OrderVo;

@Service
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	private OrderDao dao;

	@Override
	public int insertOrder(OrderVo vo) throws Exception {
		return dao.insertOrder(vo);
	}

}

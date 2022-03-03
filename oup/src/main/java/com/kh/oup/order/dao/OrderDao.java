package com.kh.oup.order.dao;

import com.kh.oup.order.vo.OrderVo;

public interface OrderDao {

	int insertOrder(OrderVo vo) throws Exception;
 
}

package com.kh.oup.order.service;

import com.kh.oup.order.vo.OrderProductVo;
import com.kh.oup.order.vo.OrderVo;

public interface OrderService {
	
	int insertOrder(OrderVo vo, OrderProductVo pVo) throws Exception;
	
}

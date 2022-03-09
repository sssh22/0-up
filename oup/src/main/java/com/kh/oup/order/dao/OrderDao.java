package com.kh.oup.order.dao;

import com.kh.oup.order.vo.OrderProductVo;
import com.kh.oup.order.vo.OrderVo;

public interface OrderDao {

	int insertOrder(OrderVo vo) throws Exception;
	
	int insertOrderProduct(OrderProductVo pVo) throws Exception;

	int selectOrderSeq()throws Exception;
 
}

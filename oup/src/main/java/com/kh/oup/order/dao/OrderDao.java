package com.kh.oup.order.dao;

import java.util.List;

import com.kh.oup.client.vo.ClientVo;
import com.kh.oup.common.PageVo;
import com.kh.oup.order.vo.OrderProductVo;
import com.kh.oup.order.vo.OrderVo;

public interface OrderDao {

	int insertOrder(OrderVo vo) throws Exception;
	
	int insertOrderProduct(OrderProductVo pVo) throws Exception;

	int selectOrderSeq()throws Exception;

	int selectOrderCnt(OrderVo vo)throws Exception;

	List<ClientVo> selectOrderList(PageVo paVo)throws Exception;
 
}

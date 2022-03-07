package com.kh.oup.order.service;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.oup.order.dao.OrderDao;
import com.kh.oup.order.vo.OrderProductVo;
import com.kh.oup.order.vo.OrderVo;

@Service
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	private OrderDao dao;

	@Override
	@Transactional(rollbackFor = Exception.class) 
	public int insertOrder(OrderVo vo, OrderProductVo pVo) throws Exception {	// string 으로 받아온 날짜포맷을 date형으로 변경
		int pVoNo = pVo.getPNo().length;
		Date[] delDate = new Date[pVoNo];

		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		vo.setODate(transFormat.parse(vo.getODateStr()));
		vo.setCreditDate(transFormat.parse(vo.getCreditDateStr()));
		
		for(int i=0; i<pVoNo; i++) {
			delDate[i] = transFormat.parse(pVo.getODeliberyDateStr()[i]);
		}
		pVo.setODeliberyDate(delDate);
		
		int orderResult = dao.insertOrder(vo);
		int orderProductResult = dao.insertOrderProduct(pVo);

		return orderResult + orderProductResult;
	}


}

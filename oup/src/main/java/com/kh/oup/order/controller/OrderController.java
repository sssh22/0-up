package com.kh.oup.order.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.oup.order.service.OrderService;
import com.kh.oup.order.vo.OrderProductVo;
import com.kh.oup.order.vo.OrderVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("order")
public class OrderController {
	
	@Autowired
	private OrderService service;
	
	@GetMapping("addOrder")
	public String addOrder() {
		return "pages/order/addOrder";
	}

	@PostMapping("addOrder")
	@ResponseBody
	public String addOrder(OrderVo vo, OrderProductVo pVo) throws Exception {
		int result = service.insertOrder(vo, pVo);
		if(result >0)
			return "success";
		return "fail";
	}
	
}

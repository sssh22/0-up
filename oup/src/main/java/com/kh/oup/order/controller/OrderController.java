package com.kh.oup.order.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
	public String addOrder(OrderVo vo, OrderProductVo pVo) throws Exception {
		int result = service.insertOrder(vo, pVo);
		if(result >0)
			return "pages/order/searchOrder";
		return "pages/order/addOrder";
	}
	
	@GetMapping(value = {"/list/{page}", "/list"})
	public String orderList(Model model, @PathVariable(required = false)String page, HttpServletRequest httpServletRequest) throws Exception{
		
		return "pages/order/searchOrder";
	}
	
}

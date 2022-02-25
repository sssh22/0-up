package com.kh.oup.order.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.oup.order.service.OrderService;

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
	
}

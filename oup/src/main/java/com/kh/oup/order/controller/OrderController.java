package com.kh.oup.order.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.oup.client.vo.ClientVo;
import com.kh.oup.common.PageVo;
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
			return "pages/order/addOrder";
		return "pages/order/searchOrder";
	}
	
	@GetMapping(value = {"/list/{page}", "/list"})
	public String orderList() throws Exception{
		return "pages/order/searchOrder";
	}
	
	@PostMapping(value = {"/list/{page}", "/list"})
	public String orderList(Model model, @PathVariable(required = false)String page, OrderVo vo) throws Exception{
		System.out.println(vo);
		
		if(page == null || Integer.parseInt(page) <= 0 )
			page = "1";
		
		int totalRow = service.getSearchOrderCnt(vo);	
		System.out.println(totalRow);
		//		PageVo paVo = new PageVo(page, totalRow);
//			
//		List<ClientVo> list = service.getSearchOrderList(paVo);
//		model.addAttribute("list",list);
//		model.addAttribute("page", paVo);
//		model.addAttribute("vo", vo);
		
		return "pages/order/searchOrder";
	}
	
}

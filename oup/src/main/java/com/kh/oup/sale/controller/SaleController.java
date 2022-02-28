package com.kh.oup.sale.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sale")
public class SaleController {
	
	@GetMapping("/enter")
	public String saleEnter() {
		return "pages/sale/saleEnter";
	}
	
	@GetMapping("test")
	public String saleTest() {
		return "pages/sale/test";
	}
}

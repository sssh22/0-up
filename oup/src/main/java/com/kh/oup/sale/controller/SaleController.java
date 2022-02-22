package com.kh.oup.sale.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SaleController {
	
	@GetMapping("/sale")
	public String saleEnter() {
		
		return "pages/sale/saleEnter";
	}
}

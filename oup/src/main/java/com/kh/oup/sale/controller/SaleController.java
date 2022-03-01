package com.kh.oup.sale.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.oup.sale.vo.saleVo;

@Controller
@RequestMapping("/sale")
public class SaleController {
	
	@GetMapping("/enter")
	public String saleEnter() {
		return "pages/sale/saleEnter";
	}
	
	@PostMapping("/enter")
	public String slaeEnter(saleVo vo) {
		
		System.out.println("saleVo ::: " + vo);
		
		return "redirect:/sale/enter";
	}
}

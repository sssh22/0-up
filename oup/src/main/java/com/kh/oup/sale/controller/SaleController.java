package com.kh.oup.sale.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.oup.sale.service.SaleService;
import com.kh.oup.sale.vo.SaleVo;

@Controller
@RequestMapping("/sale")
public class SaleController {
	
	@Autowired
	private SaleService service;
	
	@GetMapping("/enter")
	public String saleEnter() {
		return "pages/sale/saleEnter";
	}
	
	@PostMapping("/enter")
	public String saleEnter(SaleVo vo) throws Exception {
		System.out.println("saleVo ::: " + vo);
		int result = service.saleEnter(vo);
		
		return "redirect:/sale/enter";
	}
}

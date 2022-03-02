package com.kh.oup.sale.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.oup.sale.service.SaleService;
import com.kh.oup.sale.vo.Product;
import com.kh.oup.sale.vo.SaleListVo;
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
	public String saleEnter(@ModelAttribute SaleVo vo, @ModelAttribute Product product) throws Exception {
		System.out.println("saleVo ::: " + vo);
		System.out.println("saleListVo ::: " + product);
		vo.setSaleNo(service.getSeq());
		long saleNo = vo.getSaleNo();
		long saleListNo = 0;
//		SaleListVo vo2 = new SaleListVo(saleListNo, saleNo, product);
//		int result = service.saleEnter(vo, vo2);
		
		return "redirect:/sale/enter";
	}
}

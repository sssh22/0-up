package com.kh.oup.sale.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
	public String saleEnter(@ModelAttribute SaleVo saleVo, @ModelAttribute SaleListVo saleListVo) throws Exception {
		System.out.println("saleVo ::: " + saleVo);
		System.out.println("saleListVo ::: " + saleListVo);
		
//		for(int i = 0; i < saleListVo.getVoList().size(); i++) {
//			System.out.println(saleListVo.getVoList().get(i));
//		}
		
		long saleNo = service.getSeq();
		saleVo.setSaleNo(saleNo);
		System.out.println("controller.saleListVo.getVoList().get(0) ::: " + saleListVo.getVoList().get(0));
		System.out.println("controller.saleListVo.getVoList().get(1) ::: " + saleListVo.getVoList().get(1));
		System.out.println("controller.saleListVo.getVoList().get(2) ::: " + saleListVo.getVoList().get(2));
		for(int i = 0; i < saleListVo.getVoList().size(); i++) {
			saleListVo.getVoList().get(i).setSaleNo(saleNo);
		}
		
		int result = service.saleEnter(saleVo, saleListVo);
		
		return "redirect:/sale/enter";
	}
}

package com.kh.oup;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestSh {

	@GetMapping("charts")
	public String charts() {
		return "pages/charts/charts";
	}
	
	@GetMapping("statement")
	public String statement() {
		return "pages/statement/statement_detail";
	}
	
}

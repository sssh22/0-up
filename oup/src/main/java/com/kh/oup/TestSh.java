package com.kh.oup;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestSh {

	@GetMapping("charts")
	public String charts() {
		return "page/charts/charts.jsp";
	}
}

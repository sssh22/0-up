package com.kh.oup.statement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StatementController {

	@GetMapping("statement_detail")
	public String statement_detail() {
		return "pages/statement/statement_detail";
	}
	
	@GetMapping("statement_edit")
	public String statement_edit() {
		return "pages/statement/statement_edit";
	}
	
	
	@GetMapping("statement_enroll")
	public String statement_enroll() {
		return "pages/statement/statement_enroll";
	}
	
	@GetMapping("statement_list")
	public String statement_list() {
		return "pages/statement/statement_list";
	}
	
	
}

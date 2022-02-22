package com.kh.oup.employee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EmployeeController {
	@GetMapping("/login")
	public String login() {
		return "pages/member/login";
	}
}

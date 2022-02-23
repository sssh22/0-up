package com.kh.oup.employee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.kh.oup.employee.service.EmployeeService;
import com.kh.oup.employee.vo.EmployeeVo;

@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeService service;
	
	@GetMapping("/login")
	public String login() {
		return "pages/member/login";
	}
	
	@PostMapping("/login")
	public String login(EmployeeVo vo, HttpSession session) throws Exception {
		
		EmployeeVo loginEmployee = service.login(vo);
		
		if(loginEmployee != null) {
			session.setAttribute("loginEmployee", loginEmployee);
			return "redirect:/";
		}else {
			return "pages/member/login";
		}
	}
}

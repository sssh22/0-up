package com.kh.oup.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("client")
public class ClientController {
	
	@GetMapping("list")
	public String list() {
		return "pages/client/ClientList";
	}
	
	
	
	@GetMapping("addList")
	public String addList() {
		return "pages/client/addClient";
	}
}

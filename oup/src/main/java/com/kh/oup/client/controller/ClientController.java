package com.kh.oup.client.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.oup.client.service.ClientService;
import com.kh.oup.client.vo.ClientVo;

@Controller
@RequestMapping("client")
public class ClientController {
	
	@Autowired
	ClientService service;
	
	@GetMapping("list")
	public String list() {
		return "pages/client/ClientList";
	}
	
	
	@GetMapping("addList")
	public String addList() {
		return "pages/client/addClient";
	}
	
	@PostMapping("addList")
	public String addList(ClientVo vo) throws Exception {
		int result = service.addclient(vo);
		
		System.out.println(result);
		return "pages/client/clientList";
	}
	
	
}

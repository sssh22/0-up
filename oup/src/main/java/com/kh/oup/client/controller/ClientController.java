package com.kh.oup.client.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.oup.client.service.ClientService;
import com.kh.oup.client.vo.ClientVo;
import com.kh.oup.common.PageVo;

@Controller
@RequestMapping("client")
public class ClientController {
	
	@Autowired
	ClientService service;
	
	@GetMapping(value = {"/list/{page}", "/list"})
	public String list(Model model, @PathVariable(required = false)String page) throws Exception {
		if(page == null || Integer.parseInt(page) <= 0 )
			page = "1";
		
		int totalRow = service.getClientCnt();	
		PageVo vo = new PageVo(page, totalRow);
		
		List<ClientVo> list = service.getClientList(vo);
		model.addAttribute("list",list);
		model.addAttribute("page", vo);
		
		return "pages/client/clientList";
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

package com.kh.oup.sale.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.oup.client.service.ClientService;
import com.kh.oup.client.vo.ClientVo;
import com.kh.oup.project.vo.ProjectVo;
import com.kh.oup.sale.service.PopUpService;
import com.kh.oup.sale.vo.WarehouseVo;

@Controller
@RequestMapping("/popup")
public class PopUpController {
	
	@Autowired
	private ClientService cservice;
	@Autowired
	private PopUpService pservice;
	
	@GetMapping("searchClient")
	public String searchClient(HttpServletRequest req, Model model) throws Exception {
		String search = req.getParameter("search");
		System.out.println(search);
		
		if(search == null) {
			return "pages/client/searchClient";
		}
		
		if(search != null) {
			List<ClientVo> list = cservice.getSearchClientList(search);
			model.addAttribute("list",list);
			model.addAttribute("search", search);
		}
		
		return "pages/sale/searchClient";
	}
	
	@GetMapping("warehouseList")
	public String warehouseList(Model model) throws Exception {
		List<WarehouseVo> list = pservice.getHouseList();
		
		model.addAttribute("list", list);
		
		return "pages/sale/warehouseList";
	}
	
	@GetMapping("projectList")
	public String projectList(Model model) throws Exception {
		List<ProjectVo> list = pservice.getprojectList();
		
		model.addAttribute("list", list);
		
		return "pages/sale/projectList";
	}
}
package com.kh.oup.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.kh.oup.project.service.ProjectService;
import com.kh.oup.project.vo.DeptVo;
import com.kh.oup.project.vo.MemberSearchVo;

@Controller
public class ProjectController {

	@Autowired
	private ProjectService service;
	
	@GetMapping("project_add")
	public String project_add() {
		return "pages/project/project_add";
	}
	
	@GetMapping("project_detail")
	public String project_detail() {
		return "pages/project/project_detail";
	}
	
	@GetMapping("project_edit")
	public String project_edit() {
		return "pages/project/project_edit";
	}
	
	@GetMapping("project_list")
	public String project_list() {
		return "pages/project/project_list";
	}
	
	@GetMapping("search_member")
	public String search_member(Model model) {
		
		List<DeptVo> mlist = service.selectList();
		model.addAttribute("mlist",mlist);
		return "pages/project/search_member";
	}
	
}

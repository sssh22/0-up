package com.kh.oup.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProjectController {

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
	
}

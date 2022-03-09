package com.kh.oup.statement.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.oup.common.PageVo;
import com.kh.oup.statement.service.StatementService;
import com.kh.oup.statement.vo.StatementVo;

@Controller
@RequestMapping("statement")
public class StatementController {

	
	 @Autowired 
	 private StatementService service;
	 
	//@GetMapping(value = {"/project_list/{page}","/project_list"})
	//public String project_list(Model model, @PathVariable(required=false) String page, HttpServletRequest req) throws Exception {
	
	@GetMapping(value = {"/statement_list","/statement_list/{page}"})
	public String statement_list(Model model, @PathVariable(required=false) String page, HttpServletRequest req)throws Exception {
		
		if(page == null || Integer.parseInt(page) <= 0) {
			page="1"; 
			}
		int cntPerPage = 10; //10 rows
		int pageBtnCnt = 3; 
		int totalRow = service.getStCnt();
		PageVo pvo = new PageVo(page, cntPerPage, pageBtnCnt, totalRow);
		
		//List<StatementVo> slist = service.getStatementList();
		return "pages/statement/statement_list";
	}
	
	@GetMapping("statement_enroll")
	public String statement_enroll() {
		return "pages/statement/statement_enroll";
	}
	
	
	
	@GetMapping("statement_detail")
	public String statement_detail() {
		return "pages/statement/statement_detail";
	}
	
	@GetMapping("statement_edit")
	public String statement_edit() {
		return "pages/statement/statement_edit";
	}
	
	
	
}

package com.kh.oup.mail.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.oup.client.vo.ClientVo;
import com.kh.oup.common.PageVo;
import com.kh.oup.employee.vo.EmployeeVo;
import com.kh.oup.mail.service.MailService;
import com.kh.oup.mail.vo.MailVo;

@Controller
@RequestMapping("/mail")
public class MailController {
	
	@Autowired
	private MailService service;
	
	@GetMapping("/send")
	public String send() {
		return "pages/mailbox/mailSend";
	}
	
	@PostMapping("/send")
	public String send(MailVo vo, HttpServletRequest req, String recipientId, String senderId) throws Exception {
		
		int result = service.send(vo, req, recipientId, senderId);
		
		if(result > 0) {
			return "redirect:/";
		}else {
			req.setAttribute("msg", "메일 보내기 실패");
			return "error/MailErrorPage";
		}
	}
	
	@GetMapping(value = {"/rbox/{page}", "/rbox"})
	public String receiveBox(Model model, @PathVariable(required = false)String page, HttpServletRequest request) throws Exception {
		if(page == null || Integer.parseInt(page) <= 0 )
			page = "1";
		
		HttpSession session = request.getSession();
		EmployeeVo loginEmployee = (EmployeeVo) session.getAttribute("loginEmployee");
		long loginNo = loginEmployee.getEmployeeNo();
		
		int totalRow = service.getReMailCnt(loginNo);
		PageVo vo = new PageVo(page, totalRow);
		
		List<MailVo> list = service.getMailList(vo, loginNo);

		model.addAttribute("list",list);
		model.addAttribute("page", vo);
		return "pages/mailbox/mailBoxReceive";
	}
	
	@GetMapping(value = {"/sbox/{page}", "/sbox"})
	public String sendBox(Model model, @PathVariable(required = false)String page, HttpServletRequest request) throws Exception {
		if(page == null || Integer.parseInt(page) <= 0 )
			page = "1";
		
		HttpSession session = request.getSession();
		EmployeeVo loginEmployee = (EmployeeVo) session.getAttribute("loginEmployee");
		long loginNo = loginEmployee.getEmployeeNo();
		
		int totalRow = service.getSeMailCnt(loginNo);
		PageVo vo = new PageVo(page, totalRow);
		
		List<MailVo> list = service.getMailList(vo, loginNo);

		model.addAttribute("list",list);
		model.addAttribute("page", vo);
		return "pages/mailbox/mailBoxSend";
	}
}

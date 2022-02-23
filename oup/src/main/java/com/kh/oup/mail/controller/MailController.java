package com.kh.oup.mail.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
		System.out.println(vo);
		
		int result = service.send(vo, req, recipientId, senderId);
		
		if(result > 0) {
			return "redirect:/";
		}else {
			req.setAttribute("msg", "메일 보내기 실패");
			return "error/MailErrorPage";
		}
	}
}

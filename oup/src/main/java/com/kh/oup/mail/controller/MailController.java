package com.kh.oup.mail.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mail")
public class MailController {
	
	@GetMapping("/send")
	public String send() {
		return "pages/mailbox/mailSend";
	}
}

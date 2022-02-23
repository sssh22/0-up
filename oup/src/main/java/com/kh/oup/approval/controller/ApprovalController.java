package com.kh.oup.approval.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/approval")
public class ApprovalController {
	
	@GetMapping("/send")
	public String appSend() {
		return "pages/approval/approvalSend";
	}
	
	@GetMapping("sendbox")
	public String appBoxSend() {
		return "pages/approval/approvalBoxSend";
	}
	
	@GetMapping("receivebox")
	public String appReceiveBox() {
		return "pages/approval/approvalBoxReceive";
	}
	
	@GetMapping("detail")
	public String appDetail() {
		return "pages/approval/approvalDetail";
	}

}

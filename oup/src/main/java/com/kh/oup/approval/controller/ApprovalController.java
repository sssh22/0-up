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
	
	//거래명세서
	@GetMapping("/SP")
	public String getSPList() {
		return "pages/approval/SPList";
	}
	
	//주문서
	@GetMapping("/OD")
	public String getODList() {
		return "pages/approval/ODList";
	}
	
	//프로젝트
	@GetMapping("/PJ")
	public String getPJList() {
		return "pages/approval/PJList";
	}
	
	@GetMapping("/sendbox")
	public String appBoxSend() {
		return "pages/approval/approvalBoxSend";
	}
	
	@GetMapping("/receivebox")
	public String appReceiveBox() {
		return "pages/approval/approvalBoxReceive";
	}
	
	@GetMapping("/complete")
	public String completeBox() {
		return "pages/approval/approvalComplete";
	}
	
	@GetMapping("detail")
	public String appDetail() {
		return "pages/approval/approvalDetail";
	}

}

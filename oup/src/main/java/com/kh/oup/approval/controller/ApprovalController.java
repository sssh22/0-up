package com.kh.oup.approval.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.oup.approval.service.ApprovalPopupService;
import com.kh.oup.approval.service.ApprovalService;
import com.kh.oup.approval.vo.ApprovalODVo;
import com.kh.oup.approval.vo.ApprovalVo;
import com.kh.oup.employee.vo.EmployeeVo;
import com.kh.oup.order.service.OrderServiceImpl;
import com.kh.oup.order.vo.OrderVo;

@Controller
@RequestMapping("/approval")
public class ApprovalController {
	
	@Autowired
	private ApprovalPopupService popupservice;
	@Autowired
	private ApprovalService service;
	
	@GetMapping("/send")
	public String appSend() {
		return "pages/approval/approvalSend";
	}
	
	@PostMapping("/send")
	public String appSend(ApprovalVo vo, HttpServletRequest request, HttpServletRequest req) throws Exception {
		HttpSession session = request.getSession();
		EmployeeVo loginEmployee = (EmployeeVo)session.getAttribute("loginEmployee");
		String loginName = loginEmployee.getEmployeeName();
		vo.setAPicName(loginName); //신청자
		
		if(vo.getDcCode().equals("DF")) {
			vo.setArNo(1);
		}else if (vo.getDcCode().equals("ES")) {
			vo.setArNo(2);
		}else if (vo.getDcCode().equals("SP")) {
			vo.setArNo(3);
		}else if (vo.getDcCode().equals("PJ")) {
			vo.setArNo(4);
		}else if (vo.getDcCode().equals("OD")) {
			vo.setArNo(5);
		}
		
		System.out.println(vo);
		int result = service.appSend(vo, req);
		
		return "pages/approval/approvalBoxSend";
	}
	
	
	//거래명세서
	@GetMapping("/SP")
	public String getSPList(Model model) {
		return "pages/approval/SPList";
	}
	
	//주문서
	@GetMapping("/OD")
	public String getODList(Model model) throws Exception {
		List<ApprovalODVo> list = popupservice.getODList();
		
		model.addAttribute("list", list);
		
		return "pages/approval/ODList";
	}
	
	//프로젝트
	@GetMapping("/PJ")
	public String getPJList(Model model) {
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

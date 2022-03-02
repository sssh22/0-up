package com.kh.oup.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.oup.common.PageVo;
import com.kh.oup.project.service.ProjectService;
import com.kh.oup.project.vo.DeptVo;
import com.kh.oup.project.vo.ProjectGroupVo;
import com.kh.oup.project.vo.ProjectVo;
import com.kh.oup.project.vo.TeamVo;

@Controller
@RequestMapping("project")
public class ProjectController {

	@Autowired
	private ProjectService service;
	
	@GetMapping("project_add")
	public String project_add() {
		return "pages/project/project_add";
	}
	/*
	 * @PostMapping("project_add") public String project_add() { return
	 * "pages/project/project_add"; }
	 */
	
	@GetMapping("project_detail")
	public String project_detail() {
		return "pages/project/project_detail";
	}
	
	@GetMapping("project_edit")
	public String project_edit() {
		return "pages/project/project_edit";
	}
	
	//공지사항 화면 보여주기
	@GetMapping(value = {"/project_list/{page}","/project_list"})
	public String project_list(Model model, @PathVariable(required=false) String page) throws Exception {
		if(page == null) { page="1"; }
		
		//페이지pvo 객체 생성
		int cntPerPage = 10; //한페이지당 10개씩 row보여줌
		int pageBtnCnt = 3; // 보여줄 페이지버튼 갯수
		int totalRow = service.getPrjCnt();
		PageVo pvo = new PageVo(page, cntPerPage, pageBtnCnt, totalRow);

		System.out.println(pvo);
		//리스트조회
		List<ProjectVo> plist = service.getPrjList(pvo);
		//System.out.println(plist);

		model.addAttribute("plist",plist);
		model.addAttribute("page",pvo);
		
		return "pages/project/project_list";
	}
	
	
	
	
	
//====================  popup  =================================
	
	@GetMapping("search_member")
	public String search_member(Model model) {
		
		List<DeptVo> dlist = service.selectDeptList();
//		System.out.println(dlist);
		model.addAttribute("dlist",dlist);
		return "pages/project/search_member";
	}	
	
	@PostMapping("search_member.do")
	@ResponseBody
	public List<TeamVo> search_team(String departCode,Model model) {
//		System.out.println(departCode);
		
		List<TeamVo> tlist = service.selectTeamList(departCode);
//		System.out.println(tlist);
		model.addAttribute("tlist",tlist);
		return tlist;
	}
	
	
	@GetMapping("search_m")
	public String search_m(String deptCode ,String teamCode ,Model model) {
		System.out.println(deptCode+"and"+teamCode);
		
		if(deptCode==null || teamCode==null) {
			System.out.println(deptCode+"//"+teamCode);
			return "redirect:search_member";
		}else {
			List<ProjectGroupVo> elist = service.selectEmpList(teamCode);
			System.out.println(elist);
			model.addAttribute("elist",elist);

			List<DeptVo> dlist = service.selectDeptList();
			model.addAttribute("dlist",dlist);
			return "pages/project/search_member";
		}
		
		
	}
	
	
}

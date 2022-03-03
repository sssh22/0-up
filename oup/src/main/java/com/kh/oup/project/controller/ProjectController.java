package com.kh.oup.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	
	//수정
	@GetMapping(value={"project_edit/{projectNo}"})
	public String project_edit(Model model, @PathVariable(required=false) int projectNo) {
		

		ProjectVo prjVo = service.selectPrj(projectNo);
		List<ProjectGroupVo> glist = service.selectPrjgroup(projectNo);
		model.addAttribute("prjVo",prjVo);
		model.addAttribute("glist",glist);
		return "pages/project/project_edit";
	}
	
	
	
	
	
	//삭제 =====================================
	@PostMapping("project_del")
	public String project_del(int projectNo) {
		
		int result = service.delPrj(projectNo);
		return "pages/project/project_list";
	}
	
	
	
	
	
	//조회 ============================================
	@GetMapping(value = {"/project_list/{page}","/project_list"})
	public String project_list(Model model, @PathVariable(required=false) String page, HttpServletRequest req) throws Exception {
		
		String search = req.getParameter("search");
		
		
		if(page == null) { page="1"; }
		
		if(search == null) {
			int cntPerPage = 10; //10 rows
			int pageBtnCnt = 3; 
			int totalRow = service.getPrjCnt();
			PageVo pvo = new PageVo(page, cntPerPage, pageBtnCnt, totalRow);

			//리스트조회
			List<ProjectVo> plist = service.getPrjList(pvo);
			model.addAttribute("plist",plist);
			model.addAttribute("page",pvo);
		}
		if(search != null) {
			int cntPerPage = 10; //10 rows
			int pageBtnCnt = 3; 
			int totalRow = service.getSearchPrjCnt(search);
			PageVo pvo = new PageVo(page, cntPerPage, pageBtnCnt, totalRow, search);
			
			List<ProjectVo> plist = service.getSearchPrjList(pvo);
			model.addAttribute("plist",plist);
			model.addAttribute("page",pvo);
		}
		
		
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

package com.kh.oup.statement.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.oup.common.PageVo;
import com.kh.oup.statement.service.StatementService;
import com.kh.oup.statement.vo.SearchPageVo;
import com.kh.oup.statement.vo.StProductsVo;
import com.kh.oup.statement.vo.StatementVo;

@Controller
@RequestMapping("statement")
public class StatementController {

	
	 @Autowired 
	 private StatementService service;
	 
	//조회
	@GetMapping(value = {"/statement_list","/statement_list/{page}"})
	public String statement_list(Model model, @PathVariable(required=false) String page, SearchPageVo spv)throws Exception {
		
		if(page == null || Integer.parseInt(page) <= 0) {
			page="1"; 
			}
		
		if( (spv.getSearch() == null || "".equals(spv.getSearch())) && spv.getDate1() == null && spv.getDate2() == null) {
			int cntPerPage = 10; //10 rows
			int pageBtnCnt = 3; 
			int totalRow = service.getStCnt();
			PageVo pvo = new PageVo(page, cntPerPage, pageBtnCnt, totalRow);
			
			List<StatementVo> slist = service.getStatementList(pvo);
			List<StProductsVo> plist = service.getStProductsList();
			
			//sku
			for(int i = 0; i<slist.size(); i++) {
				int sku = 0;
				for(int j =0; j<plist.size(); j++) {
					if(slist.get(i).getONo() == plist.get(j).getONo()) {
					sku += 1;	
					}
				}
				slist.get(i).setSku(sku);
			}
			
			//합계 합산
			for(int i = 0; i<slist.size(); i++) {
				if(slist.get(i).getSTotal() == 0) {
					int total=0;
					for(int j =0; j<plist.size(); j++) {
						if(slist.get(i).getONo() == plist.get(j).getONo()) {
							total+=((plist.get(j).getONum())*(plist.get(j).getPSupplyPrice()));
						}
					}
					slist.get(i).setSTotal(total);
				}
			}
			
			
			
			model.addAttribute("slist",slist);
			model.addAttribute("page",pvo);
		}
		if( (spv.getSearch() != null || !"".equals(spv.getSearch())) || spv.getDate1() != null || spv.getDate2() != null) {
			
			int cntPerPage = 10; //10 rows
			int pageBtnCnt = 3; 
			int totalRow = service.getStCnt();
			PageVo pvo = new PageVo(page, cntPerPage, pageBtnCnt, totalRow);
			
			spv.setCurrentPage(pvo.getCurrentPage());
			spv.setCntPerPage(pvo.getCntPerPage());
			spv.setPageBtnCnt(pvo.getPageBtnCnt());
			spv.setTotalRow(pvo.getTotalRow());
			spv.setStartRow(pvo.getStartRow());
			spv.setEndRow(pvo.getEndRow());
			spv.setStartPage(pvo.getStartPage());
			spv.setEndPage(pvo.getEndPage());
			spv.setLastPage(pvo.getLastPage());
			
			List<StatementVo> slist = service.getSearchStList(spv);
			List<StProductsVo> plist = service.getStProductsList();
			
			//sku
			for(int i = 0; i<slist.size(); i++) {
				int sku = 0;
				for(int j =0; j<plist.size(); j++) {
					if(slist.get(i).getONo() == plist.get(j).getONo()) {
					sku += 1;	
					}
				}
				slist.get(i).setSku(sku);
			}
			
			
			//합계 합산
			for(int i = 0; i<slist.size(); i++) {
				if(slist.get(i).getSTotal() == 0) {
					int total=0;
					for(int j =0; j<plist.size(); j++) {
						if(slist.get(i).getONo() == plist.get(j).getONo()) {
							total+=((plist.get(j).getONum())*(plist.get(j).getPSupplyPrice()));
						}
					}
					slist.get(i).setSTotal(total);
				}
			}
			
			model.addAttribute("slist",slist);
			model.addAttribute("page",pvo);
		}
		
		
		
		
		return "pages/statement/statement_list";
	}
	
	
	//명세서 발행 ----- 페이지 보여주기
	@GetMapping("statement_enroll/{orderNo}")
	public String statement_add(Model model, @PathVariable(required=false) int orderNo) {
	
		StatementVo stVo = service.getStatement(orderNo);
		List<StProductsVo> plist = service.getStProductsList(orderNo);
		
		int total=0;
		for(int i=0;i<plist.size();i++) {
			total += ((plist.get(i).getONo())*(plist.get(i).getOPrice()));
		}
		stVo.setSTotal(total);
		
		
		model.addAttribute("stVo",stVo);
		model.addAttribute("plist",plist);
		
		return "pages/statement/statement_enroll";
	}
	
	
	//명세서 발행 ----- 로직처리

	
	//상세페이지 보여주기
	@GetMapping("statement_detail/{orderNo}")
	public String statement_detail(Model model, @PathVariable(required=false) int orderNo) {
		
		StatementVo stVo = service.getStatement(orderNo);
		List<StProductsVo> plist = service.getStProductsList(orderNo);
		
		int total=0;
		for(int i=0;i<plist.size();i++) {
			total += ((plist.get(i).getONo())*(plist.get(i).getOPrice()));
		}
		stVo.setSTotal(total);
		
		System.out.println(plist);
		
		model.addAttribute("stVo",stVo);
		model.addAttribute("plist",plist);
		
		return "pages/statement/statement_detail";
	}
	
	
	//.... 보류
	@GetMapping("statement_edit")
	public String statement_edit() {
		return "pages/statement/statement_edit";
	}
	
	
	
}

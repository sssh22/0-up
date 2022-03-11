package com.kh.oup.statement.service;

import java.util.List;

import com.kh.oup.common.PageVo;
import com.kh.oup.statement.vo.SearchPageVo;
import com.kh.oup.statement.vo.StProductsVo;
import com.kh.oup.statement.vo.StatementVo;

public interface StatementService {

	List<StatementVo> getStatementList(PageVo pvo);

	int getStCnt();

	List<StatementVo> getSearchStList(SearchPageVo spv);

	List<StProductsVo> getStProductsList();

	List<StProductsVo> getStProductsList(int orderNo);

	StatementVo getStatement(int orderNo);

}

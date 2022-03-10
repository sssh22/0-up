package com.kh.oup.statement.dao;

import java.util.List;

import com.kh.oup.common.PageVo;
import com.kh.oup.statement.vo.SearchPageVo;
import com.kh.oup.statement.vo.StatementVo;

public interface StatementDao {

	int getStCnt();

	List<StatementVo> getStList(PageVo pvo);

	List<StatementVo> getSearchStList(SearchPageVo spv);

}
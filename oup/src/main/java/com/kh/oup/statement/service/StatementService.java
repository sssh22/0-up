package com.kh.oup.statement.service;

import java.util.List;

import com.kh.oup.statement.vo.StatementVo;

public interface StatementService {

	List<StatementVo> getStatementList();

	int getStCnt();

}

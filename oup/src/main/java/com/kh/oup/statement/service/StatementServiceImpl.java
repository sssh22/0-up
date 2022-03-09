package com.kh.oup.statement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.oup.statement.dao.StatementDao;
import com.kh.oup.statement.vo.StatementVo;

@Service
public class StatementServiceImpl implements StatementService {

	@Autowired
	private StatementDao dao;
	
	@Override
	public List<StatementVo> getStatementList() {
		return null;
	}

	@Override
	public int getStCnt() {
		
		return dao.getStCnt();
	}

}

package com.kh.oup.statement.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StatementDaoImpl implements StatementDao{

	@Autowired
	private SqlSession ss;
	
	@Override
	public int getStCnt() {
		
		return ss.selectOne("statement.getStCnt");
	}

}

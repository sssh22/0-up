package com.kh.oup.statement.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.oup.common.PageVo;
import com.kh.oup.statement.vo.SearchPageVo;
import com.kh.oup.statement.vo.StProductsVo;
import com.kh.oup.statement.vo.StatementVo;

@Repository
public class StatementDaoImpl implements StatementDao{

	@Autowired
	private SqlSession ss;
	
	@Override
	public int getStCnt() {
		
		return ss.selectOne("statement.getStCnt");
	}

	@Override
	public List<StatementVo> getStList(PageVo pvo) {
		return ss.selectList("statement.getStList",pvo);
	}

	@Override
	public List<StatementVo> getSearchStList(SearchPageVo spv) {
		return ss.selectList("statement.getSearchStList",spv);
	}

	@Override
	public List<StProductsVo> getStProductsList() {
		return ss.selectList("statement.getStProductsList");
	}

	@Override
	public StatementVo getStatement(int orderNo) {
		return ss.selectOne("statement.getStatement",orderNo);
	}

	//상세보기용
	@Override
	public List<StProductsVo> getStProductsList(int orderNo) {
		return ss.selectList("statement.getStProductsListNo",orderNo);
	}

}

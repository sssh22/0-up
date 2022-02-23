package com.kh.oup.client.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.oup.client.vo.ClientVo;
import com.kh.oup.common.PageVo;

@Repository
public class ClientDaoImpl implements ClientDao{

	@Autowired
	private SqlSession session;

	@Override
	public int insertClient(ClientVo vo) throws Exception {
		return session.insert("insertClient", vo);
	}

	@Override
	public int selectClientCnt() throws Exception {
		return session.selectOne("selectClientCnt");
	}

	@Override
	public List<ClientVo> selectClientList(PageVo vo) throws Exception {
		return session.selectList("selectClientList", vo);
	}
	
	
}

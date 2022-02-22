package com.kh.oup.client.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.oup.client.vo.ClientVo;

@Repository
public class ClientDaoImpl implements ClientDao{

	@Autowired
	private SqlSession session;

	@Override
	public int insertClient(ClientVo vo) throws Exception {
		return session.insert("insertClient", vo);
	}
	
	
}

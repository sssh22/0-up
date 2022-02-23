package com.kh.oup.client.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.oup.client.dao.ClientDao;
import com.kh.oup.client.vo.ClientVo;
import com.kh.oup.common.PageVo;

@Service
public class ClientServiceImpl implements ClientService{
	
	@Autowired
	private ClientDao dao;

	@Override
	public int addclient(ClientVo vo) throws Exception {
		return dao.insertClient(vo);
	}

	@Override
	public int getClientCnt() throws Exception {
		return dao.selectClientCnt();
	}

	@Override
	public List<ClientVo> getClientList(PageVo vo) throws Exception {
		return dao.selectClientList(vo);
	}
	
}

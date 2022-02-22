package com.kh.oup.client.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.oup.client.dao.ClientDao;
import com.kh.oup.client.vo.ClientVo;

@Service
public class ClientServiceImpl implements ClientService{
	
	@Autowired
	private ClientDao dao;

	@Override
	public int addclient(ClientVo vo) throws Exception {
		return dao.insertClient(vo);
	}
	
}

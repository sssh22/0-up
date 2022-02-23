package com.kh.oup.client.service;

import java.util.List;

import com.kh.oup.client.vo.ClientVo;
import com.kh.oup.common.PageVo;

public interface ClientService {

	int addclient(ClientVo vo) throws Exception ;

	int getClientCnt() throws Exception;

	List<ClientVo> getClientList(PageVo vo) throws Exception;
	
}

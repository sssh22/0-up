package com.kh.oup.mail.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.kh.oup.client.vo.ClientVo;
import com.kh.oup.common.PageVo;
import com.kh.oup.mail.vo.MailVo;

public interface MailService {

	int send(MailVo vo, HttpServletRequest req, String recipientId, String senderId) throws Exception;

	int getReMailCnt(long receiverNo) throws Exception;

	List<MailVo> getMailList(PageVo vo, long loginNo) throws Exception;

	int getSeMailCnt(long loginNo)  throws Exception;

}

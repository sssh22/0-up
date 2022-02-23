package com.kh.oup.mail.service;

import javax.servlet.http.HttpServletRequest;

import com.kh.oup.mail.vo.MailVo;

public interface MailService {

	int send(MailVo vo, HttpServletRequest req, String recipientId, String senderId) throws Exception;

}

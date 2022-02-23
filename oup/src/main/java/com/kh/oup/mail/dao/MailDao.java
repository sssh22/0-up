package com.kh.oup.mail.dao;

import com.kh.oup.mail.vo.MailVo;

public interface MailDao {

	int getMailSeq() throws Exception;

	int insertMail(MailVo vo) throws Exception;

	int getrecipientNo(String rId) throws Exception;

	int getsenderNo(String sId) throws Exception;

	int insertMailFile(MailVo vo) throws Exception;

}

package com.kh.oup.mail.dao;

import java.util.List;

import com.kh.oup.common.PageVo;
import com.kh.oup.mail.vo.MailVo;

public interface MailDao {

	int getMailSeq() throws Exception;

	int insertMail(MailVo vo) throws Exception;

	int getrecipientNo(String rId) throws Exception;

	int getsenderNo(String sId) throws Exception;

	int insertMailFile(MailVo vo) throws Exception;

	int selectMailCnt() throws Exception;

	List<MailVo> selectReceiveMailList(PageVo vo, long receiverNo) throws Exception;

	String getSenderStr(long sender) throws Exception;

	String getSenderId(long sender) throws Exception;

}

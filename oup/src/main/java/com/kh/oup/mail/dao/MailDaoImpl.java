package com.kh.oup.mail.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.oup.common.PageVo;
import com.kh.oup.mail.vo.MailVo;

@Repository
public class MailDaoImpl implements MailDao{

	@Autowired
	private SqlSession ss;
	
	@Override
	public int getMailSeq() throws Exception {
		return ss.selectOne("mail.getSeq");
	}

	@Override
	public int insertMail(MailVo vo) throws Exception {
		return ss.insert("mail.insertMail", vo);
	}

	@Override
	public int getrecipientNo(String rId) throws Exception {
		return ss.selectOne("mail.getRecipientNo",rId);
	}

	@Override
	public int getsenderNo(String sId) throws Exception {
		return ss.selectOne("mail.getSenderNo",sId);
	}

	@Override
	public int insertMailFile(MailVo vo) throws Exception {
		return ss.insert("mail.insertMailFile", vo);
	}

	@Override
	public int selectMailCnt() throws Exception {
		return ss.selectOne("selectMailCnt");
	}

	@Override
	public List<MailVo> selectMailList(PageVo vo) throws Exception {
		return ss.selectList("selectMailList", vo);
	}

}

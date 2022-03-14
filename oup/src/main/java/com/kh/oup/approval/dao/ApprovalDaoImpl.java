package com.kh.oup.approval.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.oup.approval.vo.ApprovalVo;
import com.kh.oup.common.PageVo;

@Repository
public class ApprovalDaoImpl implements ApprovalDao{

	@Autowired
	private SqlSession ss;
	
	@Override
	public int appSend(ApprovalVo vo) throws Exception {
		return ss.insert("approval.appSend", vo);
	}

	@Override
	public int getSendAppCnt(String loginName) throws Exception {
		return ss.selectOne("approval.getSendAppCnt", loginName);
	}

	@Override
	public List<ApprovalVo> getSendApprovalList(PageVo vo, String loginName) throws Exception {
		//맵 만들기
		HashMap<String, Object> test = new HashMap<String, Object>();
		test.put("page", vo);
		test.put("loginName", loginName);
		
		return ss.selectList("approval.getSendApprovalList", test);
	}

}

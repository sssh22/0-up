package com.kh.oup.approval.dao;

import java.util.List;

import com.kh.oup.approval.vo.ApprovalVo;
import com.kh.oup.common.PageVo;

public interface ApprovalDao {

	int appSend(ApprovalVo vo) throws Exception;

	int getSendAppCnt(String loginName) throws Exception;

	List<ApprovalVo> getSendApprovalList(PageVo vo, String loginName) throws Exception;

}

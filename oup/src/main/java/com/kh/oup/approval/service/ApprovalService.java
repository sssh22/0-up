package com.kh.oup.approval.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.kh.oup.approval.vo.ApprovalVo;
import com.kh.oup.common.PageVo;

public interface ApprovalService {

	int appSend(ApprovalVo vo, HttpServletRequest req) throws Exception;

	int getSendAppCnt(String loginName) throws Exception;

	List<ApprovalVo> getSendApprovalList(PageVo vo, String loginName) throws Exception;

	List<ApprovalVo> getReceiveApprovalList(PageVo vo, String loginjobTitleCode) throws Exception;

	int getCompleteAppCnt(String loginName) throws Exception;

	int getReceiveAppCnt(String loginjobTitleCode) throws Exception;

	List<ApprovalVo> getCompleteApprovalList(PageVo vo, String loginName) throws Exception;


}

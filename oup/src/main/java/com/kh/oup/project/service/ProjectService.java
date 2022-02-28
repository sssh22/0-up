package com.kh.oup.project.service;

import java.util.List;

import com.kh.oup.project.vo.DeptVo;
import com.kh.oup.project.vo.MemberSearchVo;
import com.kh.oup.project.vo.TeamVo;

public interface ProjectService {

	List<DeptVo> selectDeptList();

	List<TeamVo> selectTeamList(String departCode);
	
}

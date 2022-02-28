package com.kh.oup.project.dao;

import java.util.List;

import com.kh.oup.project.vo.DeptVo;
import com.kh.oup.project.vo.MemberSearchVo;
import com.kh.oup.project.vo.TeamVo;

public interface ProjectDao {

	List<DeptVo> getDeptList();

	List<TeamVo> getTeamList(String departCode);
}

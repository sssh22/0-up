package com.kh.oup.project.service;

import java.util.List;

import com.kh.oup.common.PageVo;
import com.kh.oup.project.vo.DeptVo;
import com.kh.oup.project.vo.ProjectGroupVo;
import com.kh.oup.project.vo.ProjectVo;
import com.kh.oup.project.vo.TeamVo;

public interface ProjectService {

	List<DeptVo> selectDeptList();

	List<TeamVo> selectTeamList(String departCode);

	List<ProjectGroupVo> selectEmpList(String teamCode);

	int getPrjCnt();

	List<ProjectVo> getPrjList(PageVo pvo);

	int getSearchPrjCnt(String search);

	List<ProjectVo> getSearchPrjList(PageVo pvo);

	int delPrj(int projectNo);

	ProjectVo selectPrj(int projectNo);

	List<ProjectGroupVo> selectPrjgroup(int projectNo);
	
}

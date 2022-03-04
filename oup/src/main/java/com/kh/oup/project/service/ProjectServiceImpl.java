package com.kh.oup.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.oup.common.PageVo;
import com.kh.oup.project.dao.ProjectDao;
import com.kh.oup.project.vo.DeptVo;
import com.kh.oup.project.vo.ProjectGroupVo;
import com.kh.oup.project.vo.ProjectVo;
import com.kh.oup.project.vo.TeamVo;

@Service
public class ProjectServiceImpl implements ProjectService{

	@Autowired
	private ProjectDao dao;
	
	
	@Override
	public List<DeptVo> selectDeptList() {
		
		return dao.getDeptList();
	}


	@Override
	public List<TeamVo> selectTeamList(String departCode) {
		
		return dao.getTeamList(departCode);
	}


	@Override
	public List<ProjectGroupVo> selectEmpList(String teamCode) {
		
		return dao.getEmpList(teamCode);
	}

	
	//조회-----------------------------------
	//페이징
	@Override 
	public int getPrjCnt() {
		return dao.getPrjCnt();
	}
	//조회
	@Override
	public List<ProjectVo> getPrjList(PageVo pvo) {
		return dao.getPrjList(pvo);
	}
	//검색 페이징
	@Override
	public int getSearchPrjCnt(String search) {
		return dao.getSearchPrjCnt(search);
	}
	//검색 조회
	@Override
	public List<ProjectVo> getSearchPrjList(PageVo pvo) {
		return dao.getSearchPrjList(pvo);
	}

	
	
	//삭제------------------------------------
	@Override
	public int delPrj(int projectNo) {
		return dao.getDelPrj(projectNo);
	}

	//특정 prj 가져오기
	@Override
	public ProjectVo selectPrj(int projectNo) {
		return dao.getPrj(projectNo);
	}

	//그룹가져오기(projecNo)
	@Override
	public List<ProjectGroupVo> selectPrjgroup(int projectNo) {
		return dao.getPrjGroup(projectNo);
	
	}

	//프로젝트 등록
	@Override
	public int enrollPrj(ProjectVo vo) {
		return dao.enrollPrj(vo);
	}

	//프로젝트 수정
	@Override
	public int editPrj(ProjectVo vo) {
		return dao.editPrj(vo);
	}

}

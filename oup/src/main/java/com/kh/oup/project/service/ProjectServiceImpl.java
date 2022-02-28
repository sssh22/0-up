package com.kh.oup.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.oup.project.dao.ProjectDao;
import com.kh.oup.project.vo.DeptVo;
import com.kh.oup.project.vo.MemberSearchVo;
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

}

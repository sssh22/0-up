package com.kh.oup.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.oup.project.dao.ProjectDao;
import com.kh.oup.project.vo.DeptVo;
import com.kh.oup.project.vo.MemberSearchVo;

@Service
public class ProjectServiceImpl implements ProjectService{

	@Autowired
	private ProjectDao dao;
	
	
	@Override
	public List<DeptVo> selectList() {
		
		return null;
	}

}

package com.kh.oup.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.oup.project.vo.DeptVo;
import com.kh.oup.project.vo.MemberSearchVo;
import com.kh.oup.project.vo.TeamVo;

@Repository
public class ProjectDaoImpl implements ProjectDao {

	@Autowired
	private SqlSession ss;
	
	@Override
	public List<DeptVo> getDeptList() {
				
		return ss.selectList("projectgroup.getDeptList");
	}

	@Override
	public List<TeamVo> getTeamList(String departCode) {
		
		return ss.selectList("projectgroup.getTeamList",departCode);
	}

}

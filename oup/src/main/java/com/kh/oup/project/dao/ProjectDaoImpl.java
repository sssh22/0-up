package com.kh.oup.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.oup.project.vo.MemberSearchVo;

@Repository
public class ProjectDaoImpl implements ProjectDao {

	@Autowired
	private SqlSession ss;
	
	@Override
	public List<MemberSearchVo> getDeptList() {
				
		return ss.selectList("projectgroup.getDeptList");
	}

}

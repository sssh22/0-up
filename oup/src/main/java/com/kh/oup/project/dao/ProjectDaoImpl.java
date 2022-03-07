package com.kh.oup.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.oup.common.PageVo;
import com.kh.oup.project.vo.DeptVo;
import com.kh.oup.project.vo.ProjectGroupVo;
import com.kh.oup.project.vo.ProjectVo;
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

	@Override
	public List<ProjectGroupVo> getEmpList(String teamCode) {
		
		return ss.selectList("projectgroup.getEmpList",teamCode);
	}

	
	
	
	//조회==============================================================
	
	//페이징
	@Override
	public int getPrjCnt() {
		return ss.selectOne("project.getPrjCnt");
	}
	//조회
	@Override
	public List<ProjectVo> getPrjList(PageVo pvo) {
		return ss.selectList("project.getPrjList",pvo);
	}
	//검색 페이징
	@Override
	public int getSearchPrjCnt(String search) {
		return ss.selectOne("project.getSearchPrjCnt",search);
	}
	//검색 조회
	@Override
	public List<ProjectVo> getSearchPrjList(PageVo pvo) {
		return ss.selectList("project.getSearchPrjList",pvo);
	}

	//삭제-------------------------------------------
	@Override
	public int getDelPrj(int projectNo) {
		return ss.delete("project.getDelPrj",projectNo);
	}

	@Override
	public ProjectVo getPrj(int projectNo) {
		return ss.selectOne("project.getPrj",projectNo);
	}
	//그룹 prjNo
	@Override
	public List<ProjectGroupVo> getPrjGroup(int projectNo) {
		return ss.selectList("projectgroup.getPrjGroup", projectNo);
	}
	//prj 등록
	@Override
	public int enrollPrj(ProjectVo vo) {
		return ss.insert("project.enrollPrj",vo);
	}
	//prj 수정
	@Override
	public int editPrj(ProjectVo vo) {
		return ss.update("project.editPrj",vo);
	}
	// 프로젝트 구룹 전체 조회
	@Override
	public List<ProjectGroupVo> getGroupList() {
		return ss.selectList("projectgroup.getGroupList");
	}

}

package com.kh.oup.sale.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.oup.project.vo.ProjectVo;
import com.kh.oup.sale.vo.WarehouseVo;

@Repository
public class PopUpDaoImpl implements PopUpDao {

	@Autowired
	private SqlSession ss;
	
	@Override
	public List<WarehouseVo> getHouseList() throws Exception {
		return ss.selectList("popup.getHouseList");
	}

	@Override
	public List<ProjectVo> getProjectList() throws Exception {
		return ss.selectList("popup.getProjectList");
	}

}

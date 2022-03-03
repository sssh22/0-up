package com.kh.oup.sale.dao;

import java.util.List;

import com.kh.oup.project.vo.ProjectVo;
import com.kh.oup.sale.vo.WarehouseVo;

public interface PopUpDao {

	List<WarehouseVo> getHouseList() throws Exception;

	List<ProjectVo> getProjectList() throws Exception;

}

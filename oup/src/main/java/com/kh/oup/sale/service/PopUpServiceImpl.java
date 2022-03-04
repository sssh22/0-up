package com.kh.oup.sale.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.oup.product.vo.ProductVo;
import com.kh.oup.project.vo.ProjectVo;
import com.kh.oup.sale.dao.PopUpDao;
import com.kh.oup.sale.vo.WarehouseVo;

@Service
public class PopUpServiceImpl implements PopUpService{

	@Autowired
	private PopUpDao dao;
	
	@Override
	public List<WarehouseVo> getHouseList() throws Exception {
		return dao.getHouseList();
	}

	@Override
	public List<ProjectVo> getProjectList() throws Exception {
		return dao.getProjectList();
	}

	@Override
	public List<ProductVo> getProductList() throws Exception {
		return dao.getProductList();
	}

}

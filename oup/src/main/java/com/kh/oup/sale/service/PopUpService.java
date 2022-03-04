package com.kh.oup.sale.service;

import java.util.List;

import com.kh.oup.product.vo.ProductVo;
import com.kh.oup.project.vo.ProjectVo;
import com.kh.oup.sale.vo.WarehouseVo;

public interface PopUpService {

	List<WarehouseVo> getHouseList() throws Exception;

	List<ProjectVo> getProjectList() throws Exception;

	List<ProductVo> getProductList() throws Exception;

}

package com.kh.oup.employee.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.oup.employee.Vo.EmployeeVo;

@Repository
public class EmployeeDaoImpl implements EmployeeDao{

	@Autowired
	private SqlSession ss;
	
	@Override
	public EmployeeVo getEmployee(EmployeeVo vo) throws Exception {
		return ss.selectOne("employee.getEmployee", vo);
	}

}

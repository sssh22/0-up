package com.kh.oup.employee.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.oup.employee.Vo.EmployeeVo;
import com.kh.oup.employee.dao.EmployeeDao;

@Service
public class EmployeeServiceImpl implements EmployeeService{

	@Autowired
	private EmployeeDao dao;
	
	@Override
	public EmployeeVo login(EmployeeVo vo) throws Exception {
		
		//DB에서 회원 정보 조회
		EmployeeVo dbUser = dao.getEmployee(vo);
		if(dbUser == null) {
			return null;
		}
		
		return dbUser;
	}

}

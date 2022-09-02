package com.nadaena.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.PointDao;
import com.nadaena.vo.PointVo;

@Service
public class PointService {

	@Autowired
	PointDao pointDao;
	
	//포인트 사용내역(충전)
	public int insertPoint(PointVo pointVo) {
		System.out.println("PointService>chargePoint");
	
		return pointDao.insertPoint(pointVo);
		
	}
}

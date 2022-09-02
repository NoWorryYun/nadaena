package com.nadaena.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.PointVo;

@Repository
public class PointDao {

	@Autowired
	SqlSession sqlSession;
	
	//포인트 사용내역(충전)
	public int insertPoint(PointVo pointVo) {
		System.out.println("PointDao>insertPoint");
	
		return sqlSession.insert("point.insertPoint", pointVo);
		
	}
}

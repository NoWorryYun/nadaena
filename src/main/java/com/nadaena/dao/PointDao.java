package com.nadaena.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PointDao {
	
	//필드
	@Autowired
	private SqlSession sqlSession;
	
	//메소드 일반
	
	//포인트초기값(회원가입시 0)
	public int zeroPoint() {
		System.out.println("PointDao > zeroPoint");
		int count = sqlSession.insert("point.zeroPoint", 0);
		
		return count;
		//user 서비스에서 처리
	}
	
	
	
	
}

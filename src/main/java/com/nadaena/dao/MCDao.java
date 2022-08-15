package com.nadaena.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.MCVo;


@Repository public class MCDao {

	//필드
	@Autowired
	private SqlSession sqlSession;
	
	//참가 챌린지 리스트 불러오기
	public List<MCVo> selectList() {
		System.out.println("MycDao > getlist");
		
		List<MCVo> mycList = sqlSession.selectList("mychallenge.selectList");
		System.out.println(mycList);
		
		return mycList; 
	}
}

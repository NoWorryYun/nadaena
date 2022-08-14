package com.nadaena.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.MychallengeVo;

@Repository
public class MychallengeDao {
	
	
	//필드
	@Autowired
	private SqlSession sqlSession;
	
	//참가 챌린지 리스트 불러오기
	public List<MychallengeVo> selectList() {
		System.out.println("MycDao > getclist");
		
		List<MychallengeVo> mycList = sqlSession.selectList("mychallenge.selectList");
		System.out.println(mycList);
		
		return mycList;
	}
}

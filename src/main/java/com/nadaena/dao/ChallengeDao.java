package com.nadaena.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ChallengeDao {

	@Autowired
	private SqlSession sqlSession;
	
	//소개글 받아오기
	public String introContent(int challengeNo){
		
		return sqlSession.selectOne("Challenge.introContent", challengeNo);
	}
	
}

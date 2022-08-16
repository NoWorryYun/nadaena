package com.nadaena.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.ChallengeVo;

@Repository
public class ChallengeDao {

	@Autowired
	private SqlSession sqlSession;
	
	//인트로 내용 받아오기
	public ChallengeVo intro(int challengeNo) {
		return sqlSession.selectOne("Challenge.intro", challengeNo);
	}
	
	//인트로 업로드 상세 받아오기
	public List<ChallengeVo> certifyList(int challengeNo) {
	
		return sqlSession.selectList("Challenge.certifyList", challengeNo);

	}
	
	//챌린지 참여하기(유저)
	public int joinChallenge(ChallengeVo challengeVo) {
		
		return sqlSession.insert("Challenge.joinChallenge", challengeVo);
	}
	
	//챌린지 참여하기(방장)
	public int joinChallengeHeader(ChallengeVo challengeVo) {
		
		return sqlSession.insert("Challenge.joinChallengeHeader", challengeVo);
	}
	
}

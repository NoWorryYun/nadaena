package com.nadaena.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.ChallengeSubVo;
import com.nadaena.vo.ChallengeVo;

@Repository
public class ChallengeDao {

	@Autowired
	private SqlSession sqlSession;

	//챌린지 개설
	public int makeChallenge(ChallengeVo clgVo) {
		int count = sqlSession.insert("Challenge.writeChallenge", clgVo);
		
		return count;
	}
	
	//챌린지 과제 만들기
	public int makeClgSub(List<ChallengeSubVo> upsList) {

		for(int i = 0 ; i < upsList.size() ; i++) {
			
			int no = upsList.get(i).getChallengeNo();
			String title = upsList.get(i).getCertifyTitle();
			int sub1 = upsList.get(i).getSubOn();
			int sub2 = upsList.get(i).getSubOff();
			
			ChallengeSubVo clgSubVo = new ChallengeSubVo(no, title, sub1, sub2);
			
			sqlSession.insert("Challenge.makeSubject", clgSubVo);
		}
		return 1;
	}
	
	//챌린지 참여하기(방장)
	public int joinChallengeHeader(ChallengeVo challengeVo) {
		
		return sqlSession.insert("Challenge.joinChallengeHeader", challengeVo);
	}
	
	
	//인트로 내용 받아오기
	public ChallengeVo intro(int challengeNo) {
		return sqlSession.selectOne("Challenge.intro", challengeNo);
	}
	
	//인트로 업로드 상세 받아오기
	public List<ChallengeVo> certifyList(int challengeNo) {
	
		return sqlSession.selectList("Challenge.certifyList", challengeNo);
		
	}
	
	//북마크 설정
	public int bookMark(int userNo) {
		
		return sqlSession.selectOne("Challenge.bookMark", userNo);
	}
	
	//북마크 설정
	public int chkBM(ChallengeVo challengeVo) {
		
		return sqlSession.insert("Challenge.chkBM", challengeVo);
	}
	
	//북마크 해제
	public int unChkBM(ChallengeVo challengeVo) {
		
		return sqlSession.insert("Challenge.unChkBM", challengeVo);
	}
	
	//챌린지 참여하기(유저)
	public int joinChallenge(ChallengeVo challengeVo) {
		
		return sqlSession.insert("Challenge.joinChallenge", challengeVo);
	}
	
	
}

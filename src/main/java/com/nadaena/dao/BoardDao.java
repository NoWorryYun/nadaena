package com.nadaena.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.BoardVo;
import com.nadaena.vo.ChallengeVo;

@Repository
public class BoardDao {

	@Autowired
	private SqlSession sqlSession;

	//게시판 글쓰기
	public int write(BoardVo boardVo) {

		int count = sqlSession.insert("board.insertBoard", boardVo);

		return count;
	}

	//인트로 내용 받아오기
	public ChallengeVo intro(int challengeNo) {
		return sqlSession.selectOne("board.intro", challengeNo);
	}

	//인트로 업로드 상세 받아오기
	public List<ChallengeVo> certifyList(ChallengeVo challengeVo) {
		List<ChallengeVo> certifyList = sqlSession.selectList("board.certifyList", challengeVo);
		return certifyList;
	}

	//챌린지 참여 확인
	public ChallengeVo joinChk(ChallengeVo challengeVo) {

		return sqlSession.selectOne("board.joinChk", challengeVo);
	}
}

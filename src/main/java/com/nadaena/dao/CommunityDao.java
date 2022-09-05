package com.nadaena.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.BoardVo;
import com.nadaena.vo.CommentVo;
import com.nadaena.vo.SearchVo;

@Repository
public class CommunityDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	//커뮤니티의 게시글 가져오기
	public List<BoardVo> getBoardList(SearchVo searchVo) {
		System.out.println("CommunityDao > getBoardList()");
		
		List<BoardVo> boardList = sqlSession.selectList("Community.getBordList", searchVo);
		return boardList;

	}
	
	
	//커뮤니티의 게시글 저장
	public int insertBoard(BoardVo boardVo) {
		System.out.println("CommunityDao > insertBoard()");
		
		System.out.println(boardVo);
		int count = sqlSession.insert("Community.insertBoard", boardVo);

		return count;
	}
	
	
	//커뮤니티의 전체 글갯수 구하기
	public int selectTotalCnt(SearchVo searchVo) {
		System.out.println("CommunityDao > selectTotalCnt()");
		System.out.println(searchVo);
		int totalCnt = sqlSession.selectOne("Community.selectTotalCnt", searchVo);

		return totalCnt;
	}
	
	
	//글1개 가져오기 (읽기)
	public BoardVo selectBoard(int boardNo) {
		System.out.println("CommunityDao > selectBoard");
		
		BoardVo boardInfo = sqlSession.selectOne("Community.selectBoard", boardNo);
		
		return boardInfo;

	}
	
	
	//댓글 가져오기
	public List<CommentVo> getReplyList(int boardNo) {
		System.out.println("CommunityDao > getReplyList");
		
		List<CommentVo> replyList = sqlSession.selectList("Community.getReplyList", boardNo);
		return replyList;

	}

	//조회수 올리기
	public int updateHit(int boardNo) {
		System.out.println("CommunityDao > updateHit");
		
		return sqlSession.update("Community.updateHit", boardNo);

	}
	
	
	
	//댓글 등록하기
	public int insertReply(CommentVo commentVo) {
		System.out.println("CommunityDao > insertReply");
		
		return sqlSession.insert("Community.insertReply", commentVo);

	}
	
	//댓글 1개 가져오기
	public CommentVo getReplyByNo(int commentNo) {
		System.out.println("CommunityDao > getReplyByNo");
		
		return sqlSession.selectOne("Community.getReplyByNo", commentNo);

	}
	
	
	
	
	
	
	
	public List<CommentVo> comment(BoardVo boardVo) {
		System.out.println("CommunityDao > comuInfo");
		
		List<CommentVo> comment = sqlSession.selectList("Community.comment", boardVo);
		
		return comment;

	}
}
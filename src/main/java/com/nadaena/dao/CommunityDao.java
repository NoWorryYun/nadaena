package com.nadaena.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.BoardVo;
import com.nadaena.vo.CommentVo;

@Repository
public class CommunityDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<BoardVo> communityList(BoardVo boardVo) {
		//System.out.println("CommunityDao > communityList()");
		
		List<BoardVo> communityList = sqlSession.selectList("Community.comuList", boardVo);
		System.out.println("dao communityList " +boardVo);
		return communityList;

	}
	
	public List<BoardVo> comentList(BoardVo boardVo) {
		//System.out.println("CommunityDao > comentList()");
		
		List<BoardVo> comentList = sqlSession.selectList("Community.comentList",boardVo);
		System.out.println("dao comentList " +comentList);
		return comentList;

	}
	
	public BoardVo boardInfo(BoardVo boardVo) {
		System.out.println("CommunityDao > comuInfo");
		
		BoardVo boardInfo = sqlSession.selectOne("Community.comuInfo", boardVo);
		
		return boardInfo;

	}
	
	public List<CommentVo> comment(BoardVo boardVo) {
		System.out.println("CommunityDao > comuInfo");
		
		List<CommentVo> comment = sqlSession.selectList("Community.comment", boardVo);
		
		return comment;

	}
}
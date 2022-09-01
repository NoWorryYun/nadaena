package com.nadaena.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.BoardVo;

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
	
	public List<BoardVo> comuInfo(int challengeNo) {
		//System.out.println("CommunityDao > comentList()");
		
		List<BoardVo> comuInfo = sqlSession.selectList("Community.comentList");
		
		return comuInfo;

	}
	
}
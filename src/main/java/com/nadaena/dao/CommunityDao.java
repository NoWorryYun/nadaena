package com.nadaena.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.nadaena.vo.BoardVo;

public class CommunityDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<BoardVo> communityList() {
		System.out.println("CommunityDao > communityList()");
		
		List<BoardVo> communityList = sqlSession.selectList("Community.comuList");
		System.out.println("CommunityDao > "+communityList);
		
		return communityList;

	}
	
	public List<BoardVo> comentList() {
		System.out.println("CommunityDao > comentList()");
		
		List<BoardVo> comentList = sqlSession.selectList("Community.comentList");
		System.out.println("CommunityDao > "+comentList);
		
		return comentList;

	}
	
}
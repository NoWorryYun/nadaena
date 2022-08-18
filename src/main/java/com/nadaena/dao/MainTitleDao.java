package com.nadaena.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.MainTitleVo;

@Repository
public class MainTitleDao {

	@Autowired
	private SqlSession sqlSession;
	
	//이벤트 나대나
	public List<MainTitleVo> eventList() {
		System.out.println("MainTitleDao > eventList()");
		
		List<MainTitleVo> eventList = sqlSession.selectList("mainTitle.eventList");
		System.out.println(eventList);
		
		return eventList;
	}
	
	//인기 나대나
	public List<MainTitleVo> popularityList() {
		System.out.println("MainTitleDao > popularityList()");
		
		List<MainTitleVo> popularityList = sqlSession.selectList("mainTitle.popularityList");
		System.out.println(popularityList);
		
		return popularityList;
	}
	
	
	
}

package com.nadaena.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.MainTitleVo;

@Repository
public class EventDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<MainTitleVo> eventListForm(){
		System.out.println("EventDao > eventListForm()");
		
		List<MainTitleVo> eventListForm = sqlSession.selectList("mainTitle.eventList");
		System.out.println("EventDao > "+ eventListForm);
		
		return eventListForm;
	}
}

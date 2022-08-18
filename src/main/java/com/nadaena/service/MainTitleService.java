package com.nadaena.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.MainTitleDao;
import com.nadaena.vo.MainTitleVo;

@Service
public class MainTitleService {

	@Autowired
	
	private MainTitleDao mainTitleDao;
	
	//이벤트 나대나
	public List<MainTitleVo> eventList() {
		System.out.println("MainTitleService > eventList()");
		
		List<MainTitleVo> eventList = mainTitleDao.eventList();
		
		return eventList;
		
	}  
	
	//인기 나대나
	public List<MainTitleVo> popularityList() {
		System.out.println("MainTitleService > popularityList()");
		
		List<MainTitleVo> popularityList = mainTitleDao.popularityList();
		
		return popularityList;
		
	}
	
	
	
}

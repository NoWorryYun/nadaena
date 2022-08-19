package com.nadaena.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.MainTitleDao;
import com.nadaena.vo.MainTitleVo;

@Service
public class MainTitleService {

	@Autowired
	
	private MainTitleDao mainTitleDao;
	
	//이벤트 나대나
	public Map<String, Object> eventList() {
		System.out.println("MainTitleService > eventList()");
		
		List<MainTitleVo> eventList = mainTitleDao.eventList();
		//System.out.println(eventList);
		
		List<MainTitleVo> popularityList = mainTitleDao.popularityList();
		//System.out.println(popularityList);
		
		List<MainTitleVo> limtiTimeList = mainTitleDao.popularityList();
		//System.out.println(popularityList);
		
		Map<String, Object> evMap = new HashMap<String, Object>();
		
		evMap.put("eventList", eventList);
		evMap.put("popularityList", popularityList);
		evMap.put("limtiTimeList", limtiTimeList);
		
		return evMap;
		
	}  
	
	/*
	 * //인기 나대나 public List<MainTitleVo> popularityList() { System.out.println("MainTitleService > popularityList()");
	 * 
	 * List<MainTitleVo> popularityList = mainTitleDao.popularityList();
	 * 
	 * return popularityList;
	 * 
	 * }
	 */
	
	
}

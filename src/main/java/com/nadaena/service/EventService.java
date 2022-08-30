package com.nadaena.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.EventDao;
import com.nadaena.vo.MainTitleVo;

@Service
public class EventService {

	@Autowired
	
	private EventDao eventDao;
	
	/*
	public List<MainTitleVo> eventListForm(){
		
		List<MainTitleVo> eventListForm = eventDao.eventListForm();
		
		return eventListForm;
	}
	*/
	
	
	public Map<String, Object> eventListForm(){
		System.out.println("EventService > eventListForm()");
		
		List<MainTitleVo> eventListForm = eventDao.eventListForm();
		System.out.println("EventService > "+ eventListForm);
		
		Map<String, Object> evMap = new HashMap<String, Object>();
		
		evMap.put("eventListForm", eventListForm);
		
		return evMap;
	}
	
}

package com.nadaena.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.SearchDao;
import com.nadaena.vo.MainTitleVo;
@Service
public class SearchService {
	
	@Autowired
	private SearchDao searchDao ;
	
	//검색입력
	public Map<String, Object> searchList(String searchbar) {
		System.out.println("SearchService > searchList()");
		
		List<MainTitleVo> searchList = searchDao.searchList(searchbar);
			
		Map<String, Object> cMap = new HashMap<String, Object>();
		
		
		cMap.put("eventList", searchList);
		
		return cMap;
		
	}

}

package com.nadaena.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nadaena.service.SearchService;
import com.nadaena.vo.MainTitleVo;
import com.nadaena.vo.SearchVo;

@Controller
public class SearchController {

	@Autowired
	private SearchService searchService;

	//검색리스트 폼  검색결과페이지
	@RequestMapping(value = "/search/searchForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String searchForm(@ModelAttribute SearchVo searchVo) {
		System.out.println("SearchController > search");

		return "search/searchForm";
	}

	//검색결과 리스트(ajax)
	@ResponseBody
	@RequestMapping(value = "/search/getClgList", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, Object> getClgList(@ModelAttribute SearchVo searchVo) {
		System.out.println("SearchController > getClgList");
		
		Map<String, Object> cMap = searchService.searchList(searchVo);

		System.out.println("====================================================");
		System.out.println(cMap.get("clgList"));
		
		System.out.println(cMap.get("prev"));
		System.out.println(cMap.get("startPageBtnNo"));
		System.out.println(cMap.get("endPageBtnNo"));
		System.out.println(cMap.get("next"));
		System.out.println(cMap.get("crtPage"));
		
		List<MainTitleVo> a = (List<MainTitleVo>)cMap.get("clgList");
		System.out.println(a.size());
		System.out.println("====================================================");
		return cMap;
	}

	
	
//	//best리스트(ajax)
//	@ResponseBody
//	@RequestMapping(value = "/search/getBestClgList", method = { RequestMethod.GET, RequestMethod.POST })
//	public List<MainTitleVo> getBestClgList(@ModelAttribute SearchVo searchVo) {
//		System.out.println("SearchController > getBestClgList");
//		
//		System.out.println("====================================================");
//		System.out.println(searchVo);
//		System.out.println("====================================================");
//		
//		//List<MainTitleVo> bestList = searchService.getBestClgList(searchVo);
//
//		return bestList;
//	}
//	


}

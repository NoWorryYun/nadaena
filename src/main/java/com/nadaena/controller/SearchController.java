package com.nadaena.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nadaena.service.SearchService;
import com.nadaena.vo.MainTitleVo;
import com.nadaena.vo.SearchVo;

@Controller
public class SearchController {
	
	@Autowired
	SearchService searchService;
	//검색리스트 폼
	@RequestMapping(value="/search/searchForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String saerch(@RequestParam("keyword") String searchbar, Model model) {
		System.out.println("SearchController > search");
		
		//List<MainTitleVo> searchList = searchService.searchList(searchbar);
		
		//model.addAttribute("searchList",searchList);
		
		return "search/searchForm"; 
	}
	
	
	
	//검색결과 리스트(ajax)
	@ResponseBody
	@RequestMapping(value="/search/getClgList", method = {RequestMethod.GET, RequestMethod.POST})
	public List<MainTitleVo> getClgList(@ModelAttribute SearchVo searchVo) {
		System.out.println("SearchController > getClgList");
		
		System.out.println(searchVo);
		List<MainTitleVo> cglList = searchService.searchList(searchVo);
		
		return cglList; 
	}
	
	
	
	@RequestMapping(value = "/search/searchForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String list4(Model model, 
					    @RequestParam(value="crtPage", required = false, defaultValue = "1") int crtPage ) {
		System.out.println("BoardContoller>list4()");
		
		Map<String, Object> cMap = searchService.selectList(crtPage);
		model.addAttribute("cMap", cMap);
		
		System.out.println("controller --> " + cMap);
		
		return "search/searchForm";
	}
	
}

package com.nadaena.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.SearchDao;
import com.nadaena.vo.MainTitleVo;
import com.nadaena.vo.SearchVo;

@Service
public class SearchService {

	@Autowired
	private SearchDao searchDao;

	//검색입력
	public Map<String, Object> searchList(SearchVo searchVo) {
		System.out.println("SearchService > searchList()");

		/////////////////////// // 리스트가져오기 /////////////////////////////////////////////
		
		//페이지당 글갯수
		int listCnt = 8;

		//현재페이지
		int crtPage = searchVo.getCrtPage();
		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		//시작글번호 
		int startRnum = (crtPage - 1) * listCnt + 1;

		//끝글번호 
		int endRnum = (startRnum + listCnt) - 1;

		//시작글번호 끝글번호 적용
		searchVo.setStartRnum(startRnum);
		searchVo.setEndRnum(endRnum);
		
		List<MainTitleVo> searchList = searchDao.searchList(searchVo);
		
		
		////////////////////////////////////////////// // 페이징 계산 //////////////////////////////////////////////

		//전체글갯수 
		int totalCnt = searchDao.selectTotalCnt(searchVo);
		//System.out.println("전체글갯수" + totalCnt);
		
		
		//페이지당 버튼 갯수 
		int pageBtnCount = 5;

		//마지막 버튼 번호 
		int endPageBtnNo = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;

		//마지막 버튼 번호 
		int startPageBtnNo = (endPageBtnNo - pageBtnCount) + 1;

		//다음 화살표 유무 
		boolean next = false;
		if ((listCnt * endPageBtnNo) < totalCnt) {
			next = true;

		} else {
			endPageBtnNo = (int) Math.ceil(totalCnt / (double) listCnt);
		}

		//이전 화살표 유무 
		boolean prev = false;
		if (startPageBtnNo != 1) {
			prev = true;
		}
		
		//리스트 페이징 정보 묶기 
		Map<String, Object> cMap = new HashMap<String, Object>();

		cMap.put("clgList", searchList);
		cMap.put("prev", prev);
		cMap.put("startPageBtnNo", startPageBtnNo);
		cMap.put("endPageBtnNo", endPageBtnNo);
		cMap.put("next", next);
		cMap.put("crtPage", crtPage);
		return cMap;

	}

	

	//bestList
	public Map<String, List<MainTitleVo>> getBestClgList() {
		System.out.println("SearchService > searchList()");

		SearchVo searchVo = new SearchVo();
		/////////////////////// // 리스트가져오기 /////////////////////////////////////////////
		//시작글번호 
		int startRnum = 1;

		//끝글번호 
		int endRnum = 3;

		//시작글번호 끝글번호 적용
		searchVo.setStartRnum(startRnum);
		searchVo.setEndRnum(endRnum);
		
		
		
		///////////////////////최신챌린지/////////////////////////////////////////////
		searchVo.setOrderType("newOrder");
		List<MainTitleVo> newOrderList = searchDao.searchList(searchVo);

		
		///////////////////////최신챌린지/////////////////////////////////////////////
		searchVo.setOrderType("likeOrder");
		List<MainTitleVo> likeOrderList = searchDao.searchList(searchVo);

		///////////////////////마감  임박 챌린지/////////////////////////////////////////////
		searchVo.setOrderType("recruitmentOrder");
		List<MainTitleVo> recruitmentOrderList = searchDao.searchList(searchVo);
		
		

		Map<String, List<MainTitleVo>> bestListMap = new HashMap<String, List<MainTitleVo>>();
		
		bestListMap.put("newOrderList", newOrderList);
		bestListMap.put("likeOrderList", likeOrderList);
		bestListMap.put("recruitmentOrderList", recruitmentOrderList);
		
		return bestListMap;

	}

	
	
}

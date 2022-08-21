package com.nadaena.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.MCDao;
import com.nadaena.vo.MCVo;
import com.nadaena.vo.MRVo;

@Service
public class MCService {
	
	@Autowired
	MCDao mcDao;
	
	//참가+종료 리스트(전체)
	public Map<String, Object> getmcList(int crtPage) {
		System.out.println("C > getmcList");
		
		//////리스트 가져오기
		
		//페이지당 글갯수
		int listCnt = 3;
		
		//현재페이지
		crtPage = (crtPage>0) ? crtPage : (crtPage=1);
		
		//시작글번호
		int startRnum = (crtPage - 1)*listCnt + 1;
		
		//끝글번호
		int endRnum = (startRnum + listCnt) -1 ;
		
		List<MCVo> mcList = mcDao.selectList();
		List<MCVo> mcList2 = mcDao.selectList12(startRnum, endRnum);
		
		//////////
		//페이징계산
		//////////
		
		//전체글갯수
		int totalCnt = mcDao.selectTotalCnt();
		
		//페이지당버튼갯수
		int pageBtnCount = 5;
		
		//마지막버튼번호
		int endPageBtnNo = (int)Math.ceil(crtPage/(double)pageBtnCount)*pageBtnCount;
		
		//
		int startPageBtnNo = (endPageBtnNo-pageBtnCount)+1;
		
		//다음 화살표 유무
        boolean next = false;
        if( (listCnt*endPageBtnNo) < totalCnt  ) {
        	 next=true;
        
        }else {
        	endPageBtnNo =(int)Math.ceil(totalCnt/(double)listCnt);       
        }
       
        //이전 화살표 유무
        boolean prev = false;
        if(startPageBtnNo != 1) {
        	prev=true;
        }
        
        
        Map<String, Object> mcMap = new HashMap<String, Object>();
		
        mcMap.put("mcList", mcList);
        mcMap.put("mcList2", mcList2);
        mcMap.put("prev", prev);
        mcMap.put("startPageBtnNo", startPageBtnNo);
        mcMap.put("endPageBtnNo", endPageBtnNo);
        mcMap.put("next", next);
		
		return mcMap;
	}
	
	//참가+종료 리스트(성공)
	public Map<String, Object> getmcList2(int crtPage) {
		System.out.println("C > getmcList");
		
		//////리스트 가져오기
		
		//페이지당 글갯수
		int listCnt = 3;
		
		//현재페이지
		crtPage = (crtPage>0) ? crtPage : (crtPage=1);
		
		//시작글번호
		int startRnum = (crtPage - 1)*listCnt + 1;
		
		//끝글번호
		int endRnum = (startRnum + listCnt) -1 ;
		
		List<MCVo> mcList = mcDao.selectList();
		List<MCVo> mcList3 = mcDao.selectList13(startRnum, endRnum);
		
		//////////
		//페이징계산
		//////////
		
		//전체글갯수
		int totalCnt = mcDao.selectTotalCnt();
		
		//페이지당버튼갯수
		int pageBtnCount = 5;
		
		//마지막버튼번호
		int endPageBtnNo = (int)Math.ceil(crtPage/(double)pageBtnCount)*pageBtnCount;
		
		//
		int startPageBtnNo = (endPageBtnNo-pageBtnCount)+1;
		
		//다음 화살표 유무
        boolean next = false;
        if( (listCnt*endPageBtnNo) < totalCnt  ) {
        	 next=true;
        
        }else {
        	endPageBtnNo =(int)Math.ceil(totalCnt/(double)listCnt);       
        }
       
        //이전 화살표 유무
        boolean prev = false;
        if(startPageBtnNo != 1) {
        	prev=true;
        }
        
        
        Map<String, Object> mcMap = new HashMap<String, Object>();
		
        mcMap.put("mcList", mcList);
        mcMap.put("mcList3", mcList3);
        mcMap.put("prev", prev);
        mcMap.put("startPageBtnNo", startPageBtnNo);
        mcMap.put("endPageBtnNo", endPageBtnNo);
        mcMap.put("next", next);
		
		return mcMap;
	}
	
	//참가+종료 리스트(실패)
	public Map<String, Object> getmcList3(int crtPage) {
		System.out.println("C > getmcList");
		
		//////리스트 가져오기
		
		//페이지당 글갯수
		int listCnt = 3;
		
		//현재페이지
		crtPage = (crtPage>0) ? crtPage : (crtPage=1);
		
		//시작글번호
		int startRnum = (crtPage - 1)*listCnt + 1;
		
		//끝글번호
		int endRnum = (startRnum + listCnt) -1 ;
		
		List<MCVo> mcList = mcDao.selectList();
		List<MCVo> mcList4 = mcDao.selectList14(startRnum, endRnum);
		
		//////////
		//페이징계산
		//////////
		
		//전체글갯수
		int totalCnt = mcDao.selectTotalCnt();
		
		//페이지당버튼갯수
		int pageBtnCount = 5;
		
		//마지막버튼번호
		int endPageBtnNo = (int)Math.ceil(crtPage/(double)pageBtnCount)*pageBtnCount;
		
		//
		int startPageBtnNo = (endPageBtnNo-pageBtnCount)+1;
		
		//다음 화살표 유무
        boolean next = false;
        if( (listCnt*endPageBtnNo) < totalCnt  ) {
        	 next=true;
        
        }else {
        	endPageBtnNo =(int)Math.ceil(totalCnt/(double)listCnt);       
        }
       
        //이전 화살표 유무
        boolean prev = false;
        if(startPageBtnNo != 1) {
        	prev=true;
        }
        
        
        Map<String, Object> mcMap = new HashMap<String, Object>();
		
        mcMap.put("mcList", mcList);
        mcMap.put("mcList4", mcList4);
        mcMap.put("prev", prev);
        mcMap.put("startPageBtnNo", startPageBtnNo);
        mcMap.put("endPageBtnNo", endPageBtnNo);
        mcMap.put("next", next);
		
		return mcMap;
	}
	
	
	/*
	 * //참가+종료 리스트(성공) public Map<String, Object> getmcList2() { System.out.println("C > getmcList2");
	 * 
	 * List<MCVo> mcList = mcDao.selectList(); List<MCVo> mcList3 = mcDao.selectList3();
	 * 
	 * Map<String, Object> mcMap = new HashMap<String, Object>();
	 * 
	 * mcMap.put("mcList", mcList); mcMap.put("mcList3", mcList3);
	 * 
	 * return mcMap; }
	 * 
	 * //참가+종료 리스트(실패) public Map<String, Object> getmcList3() { System.out.println("C > getmcList3");
	 * 
	 * List<MCVo> mcList = mcDao.selectList(); List<MCVo> mcList4 = mcDao.selectList4();
	 * 
	 * Map<String, Object> mcMap = new HashMap<String, Object>();
	 * 
	 * mcMap.put("mcList", mcList); mcMap.put("mcList4", mcList4);
	 * 
	 * return mcMap; }
	 */
	//리뷰리스트(리스트만)
	public List<MRVo> getmrList() {
		System.out.println("MRS > getmcList()");
		
		List<MRVo> mrList = mcDao.selectreviewList();
		
		return mrList;
		
	} 
	
	//리뷰 쓰기
	public int writeReview(MRVo mrVo, MCVo mcVo) {
		System.out.println("bService>b.write()");
		
		mcDao.writeReview(mrVo);
		mcDao.update(mcVo);
		
		return 1;
	}
	
	//리뷰 삭제
	public int removeReview(MRVo mrVo) {
		System.out.println("MCSERVICE >> del.review");
		
		return mcDao.deleteReview(mrVo);
		
	}
	
}

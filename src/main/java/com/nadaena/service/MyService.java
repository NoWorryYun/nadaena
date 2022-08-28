package com.nadaena.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.nadaena.dao.MyDao;
import com.nadaena.vo.MyVo;
import com.nadaena.vo.ReviewVo;

@Service
public class MyService {
	
	@Autowired
	MyDao myDao;
	
	//참가+종료 리스트(전체)
	public Map<String, Object> getmcList(int crtPage) {
		
		//////리스트 가져오기
		
		//페이지당 글갯수
		int listCnt = 3;
		
		//현재페이지
		crtPage = (crtPage>0) ? crtPage : (crtPage=1);
		
		//시작글번호
		int startRnum = (crtPage - 1)*listCnt + 1;
		
		//끝글번호
		int endRnum = (startRnum + listCnt) -1 ;
		
		List<MyVo> mcList = myDao.selectList();
		List<MyVo> mcList2 = myDao.selectList12(startRnum, endRnum);
		
		//////////
		//페이징계산
		//////////
		
		//전체글갯수
		int totalCnt = myDao.selectTotalCnt();
		
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
		
		List<MyVo> mcList = myDao.selectList();
		List<MyVo> mcList3 = myDao.selectList13(startRnum, endRnum);
		
		//////////
		//페이징계산
		//////////
		
		//전체글갯수
		int totalCnt2 = myDao.selectTotalCnt2();
		
		//페이지당버튼갯수
		int pageBtnCount = 5;
		
		//마지막버튼번호
		int endPageBtnNo = (int)Math.ceil(crtPage/(double)pageBtnCount)*pageBtnCount;
		
		//
		int startPageBtnNo = (endPageBtnNo-pageBtnCount)+1;
		
		//다음 화살표 유무
        boolean next = false;
        if( (listCnt*endPageBtnNo) < totalCnt2  ) {
        	 next=true;
        
        }else {
        	endPageBtnNo =(int)Math.ceil(totalCnt2/(double)listCnt);       
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
		
		List<MyVo> mcList = myDao.selectList();
		List<MyVo> mcList4 = myDao.selectList14(startRnum, endRnum);
		
		//////////
		//페이징계산
		//////////
		
		//전체글갯수
		int totalCnt3 = myDao.selectTotalCnt3();
		
		//페이지당버튼갯수
		int pageBtnCount = 5;
		
		//마지막버튼번호
		int endPageBtnNo = (int)Math.ceil(crtPage/(double)pageBtnCount)*pageBtnCount;
		
		//
		int startPageBtnNo = (endPageBtnNo-pageBtnCount)+1;
		
		//다음 화살표 유무
        boolean next = false;
        if( (listCnt*endPageBtnNo) < totalCnt3  ) {
        	 next=true;
        
        }else {
        	endPageBtnNo =(int)Math.ceil(totalCnt3/(double)listCnt);       
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

	//진행중 이벤트 리스트(전체)
	public Map<String, Object> getmeList21(int crtPage) {
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
		
		List<MyVo> meList1 = myDao.selectList21(startRnum, endRnum);
		
		//////////
		//페이징계산
		//////////
		
		//전체글갯수
		int totalCnt21 = myDao.selectTotalCnt21();
		
		//페이지당버튼갯수
		int pageBtnCount = 5;
		
		//마지막버튼번호
		int endPageBtnNo = (int)Math.ceil(crtPage/(double)pageBtnCount)*pageBtnCount;
		
		//
		int startPageBtnNo = (endPageBtnNo-pageBtnCount)+1;
		
		//다음 화살표 유무
        boolean next = false;
        if( (listCnt*endPageBtnNo) < totalCnt21  ) {
        	 next=true;
        
        }else {
        	endPageBtnNo =(int)Math.ceil(totalCnt21/(double)listCnt);       
        }
       
        //이전 화살표 유무
        boolean prev = false;
        if(startPageBtnNo != 1) {
        	prev=true;
        }
        
        
        Map<String, Object> mcMap = new HashMap<String, Object>();
		
        mcMap.put("meList1", meList1);
        mcMap.put("prev", prev);
        mcMap.put("startPageBtnNo", startPageBtnNo);
        mcMap.put("endPageBtnNo", endPageBtnNo);
        mcMap.put("next", next);
		
		return mcMap;
	}	
	
	//종료 이벤트 리스트(전체)
	public Map<String, Object> getmeList22(int crtPage) {
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
		
		List<MyVo> meList2 = myDao.selectList22(startRnum, endRnum);
		
		//////////
		//페이징계산
		//////////
		
		//전체글갯수
		int totalCnt22 = myDao.selectTotalCnt22();
		
		//페이지당버튼갯수
		int pageBtnCount = 5;
		
		//마지막버튼번호
		int endPageBtnNo = (int)Math.ceil(crtPage/(double)pageBtnCount)*pageBtnCount;
		
		//
		int startPageBtnNo = (endPageBtnNo-pageBtnCount)+1;
		
		//다음 화살표 유무
        boolean next = false;
        if( (listCnt*endPageBtnNo) < totalCnt22  ) {
        	 next=true;
        
        }else {
        	endPageBtnNo =(int)Math.ceil(totalCnt22/(double)listCnt);       
        }
       
        //이전 화살표 유무
        boolean prev = false;
        if(startPageBtnNo != 1) {
        	prev=true;
        }
        
        
        Map<String, Object> mcMap = new HashMap<String, Object>();
		
        mcMap.put("meList2", meList2);
        mcMap.put("prev", prev);
        mcMap.put("startPageBtnNo", startPageBtnNo);
        mcMap.put("endPageBtnNo", endPageBtnNo);
        mcMap.put("next", next);
		
		return mcMap;
	}	

	//종료 이벤트 리스트(전체)
	public Map<String, Object> getmbList1(int crtPage) {
		
		//////리스트 가져오기
		
		//페이지당 글갯수
		int listCnt = 3;
		
		//현재페이지
		crtPage = (crtPage>0) ? crtPage : (crtPage=1);
		
		//시작글번호
		int startRnum = (crtPage - 1)*listCnt + 1;
		
		//끝글번호
		int endRnum = (startRnum + listCnt) -1 ;
		
		List<MyVo> mbList1 = myDao.selectbList1(startRnum, endRnum);
		
		//////////
		//페이징계산
		//////////
		
		//전체글갯수
		int totalCntb1 = myDao.selectTotalCntb1();
		
		//페이지당버튼갯수
		int pageBtnCount = 5;
		
		//마지막버튼번호
		int endPageBtnNo = (int)Math.ceil(crtPage/(double)pageBtnCount)*pageBtnCount;
		
		//
		int startPageBtnNo = (endPageBtnNo-pageBtnCount)+1;
		
		//다음 화살표 유무
        boolean next = false;
        if( (listCnt*endPageBtnNo) < totalCntb1  ) {
        	 next=true;
        
        }else {
        	endPageBtnNo =(int)Math.ceil(totalCntb1/(double)listCnt);       
        }
       
        //이전 화살표 유무
        boolean prev = false;
        if(startPageBtnNo != 1) {
        	prev=true;
        }
        
        
        Map<String, Object> mbMap = new HashMap<String, Object>();
		
        mbMap.put("mbList1", mbList1);
        mbMap.put("prev", prev);
        mbMap.put("startPageBtnNo", startPageBtnNo);
        mbMap.put("endPageBtnNo", endPageBtnNo);
        mbMap.put("next", next);
		
		return mbMap;
	}	
	
	//북마크 이벤트 리스트
	public Map<String, Object> getmbList2(int crtPage) {
		
		//////리스트 가져오기
		
		//페이지당 글갯수
		int listCnt = 3;
		
		//현재페이지
		crtPage = (crtPage>0) ? crtPage : (crtPage=1);
		
		//시작글번호
		int startRnum = (crtPage - 1)*listCnt + 1;
		
		//끝글번호
		int endRnum = (startRnum + listCnt) -1 ;
		
		List<MyVo> mbList2 = myDao.selectbList2(startRnum, endRnum);
		
		//////////
		//페이징계산
		//////////
		
		//전체글갯수
		int totalCntb2 = myDao.selectTotalCntb2();
		
		//페이지당버튼갯수
		int pageBtnCount = 5;
		
		//마지막버튼번호
		int endPageBtnNo = (int)Math.ceil(crtPage/(double)pageBtnCount)*pageBtnCount;
		
		//
		int startPageBtnNo = (endPageBtnNo-pageBtnCount)+1;
		
		//다음 화살표 유무
        boolean next = false;
        if( (listCnt*endPageBtnNo) < totalCntb2  ) {
        	 next=true;
        
        }else {
        	endPageBtnNo =(int)Math.ceil(totalCntb2/(double)listCnt);       
        }
       
        //이전 화살표 유무
        boolean prev = false;
        if(startPageBtnNo != 1) {
        	prev=true;
        }
        
        
        Map<String, Object> mbMap = new HashMap<String, Object>();
		
        mbMap.put("mbList2", mbList2);
        mbMap.put("prev", prev);
        mbMap.put("startPageBtnNo", startPageBtnNo);
        mbMap.put("endPageBtnNo", endPageBtnNo);
        mbMap.put("next", next);
		
		return mbMap;
	}
	
	//마이리뷰리스트
	public Map<String, Object> getrList41(int crtPage) {
		
		//////리스트 가져오기
		
		//페이지당 글갯수
		int listCnt = 20;
		
		//현재페이지
		crtPage = (crtPage>0) ? crtPage : (crtPage=1);
		
		//시작글번호
		int startRnum = (crtPage - 1)*listCnt + 1;
		
		//끝글번호
		int endRnum = (startRnum + listCnt) -1 ;
		
		List<ReviewVo> rList = myDao.selectreviewList(startRnum, endRnum);
		
		//////////
		//페이징계산
		//////////
		
		//전체글갯수
		int totalCnt41 = myDao.selectTotalCnt41();
		
		//페이지당버튼갯수
		int pageBtnCount = 5;
		
		//마지막버튼번호
		int endPageBtnNo = (int)Math.ceil(crtPage/(double)pageBtnCount)*pageBtnCount;
		
		//
		int startPageBtnNo = (endPageBtnNo-pageBtnCount)+1;
		
		//다음 화살표 유무
        boolean next = false;
        if( (listCnt*endPageBtnNo) < totalCnt41  ) {
        	 next=true;
        
        }else {
        	endPageBtnNo =(int)Math.ceil(totalCnt41/(double)listCnt);       
        }
       
        //이전 화살표 유무
        boolean prev = false;
        if(startPageBtnNo != 1) {
        	prev=true;
        }
        
        
        Map<String, Object> rMap = new HashMap<String, Object>();
		
        rMap.put("rList", rList);
        rMap.put("prev", prev);
        rMap.put("startPageBtnNo", startPageBtnNo);
        rMap.put("endPageBtnNo", endPageBtnNo);
        rMap.put("next", next);
		
		return rMap;
	}		
	
	//챌린지리뷰리스트
	public Map<String, Object> getrList(int crtPage) {
		
		//////리스트 가져오기
		
		//페이지당 글갯수
		int listCnt = 20;
		
		//현재페이지
		crtPage = (crtPage>0) ? crtPage : (crtPage=1);
		
		//시작글번호
		int startRnum = (crtPage - 1)*listCnt + 1;
		
		//끝글번호
		int endRnum = (startRnum + listCnt) -1 ;
		
		List<ReviewVo> rList = myDao.selectreview(startRnum, endRnum);
		
		//////////
		//페이징계산
		//////////
		
		//전체글갯수
		int totalrCnt = myDao.selectTotalrCnt();
		
		//페이지당버튼갯수
		int pageBtnCount = 5;
		
		//마지막버튼번호
		int endPageBtnNo = (int)Math.ceil(crtPage/(double)pageBtnCount)*pageBtnCount;
		
		//
		int startPageBtnNo = (endPageBtnNo-pageBtnCount)+1;
		
		//다음 화살표 유무
        boolean next = false;
        if( (listCnt*endPageBtnNo) < totalrCnt  ) {
        	 next=true;
        
        }else {
        	endPageBtnNo =(int)Math.ceil(totalrCnt/(double)listCnt);       
        }
       
        //이전 화살표 유무
        boolean prev = false;
        if(startPageBtnNo != 1) {
        	prev=true;
        }
        
        
        Map<String, Object> rMap = new HashMap<String, Object>();
		
        rMap.put("rList", rList);
        rMap.put("prev", prev);
        rMap.put("startPageBtnNo", startPageBtnNo);
        rMap.put("endPageBtnNo", endPageBtnNo);
        rMap.put("next", next);
		
		return rMap;
	}	
	
	//리뷰 쓰기 + 리워드 지급 + 상태업데이트
	public String writeReview(MultipartFile file, ReviewVo reviewVo) {

		String saveDir = "C:\\javaStudy\\upload";
		
		// -원파일이름
		
		String orgName = file.getOriginalFilename();
		System.out.println("orgName:" + orgName);

		// 확장자
		String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		System.out.println("exName:" + exName);

		// -저장파일이름
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
		System.out.println("saveName:" + saveName);

		// -파일패스 생성(
		String filePath = saveDir + "\\" + saveName;
		System.out.println("filePath:" + filePath);

		// 파일 사이즈
		long fileSize = file.getSize();
		System.out.println("fileSize:" + fileSize);
		
		// 파일업로드(복사)
		try {
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);

			if (bout != null) {
				bout.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		System.out.println("=======");
		
		
		//reviewVo파일정보 추가
		reviewVo.setReviewImg(saveName);
		
		//리뷰저장
		myDao.writeReview(reviewVo);
		
		//챌린지 완료로 상태 변경
		myDao.update(reviewVo);
		
		//포인트계산
		//난이도, 참가비용 <-- reviewVo<--챌린지번호 유저번호
		System.out.println("상태업데이트 후 서비스로 옴");
		System.out.println("포인트 정보 가져오라 시킴");
		
				
		ReviewVo rVo = myDao.selectReviewPoint(reviewVo);
		
		System.out.println("담아왔다 서비스로");
		
		
		System.out.println("담아온Vo" + rVo);
		
		
		int pay = rVo.getPayment();
		int level = rVo.getClgLevel();
		int source = rVo.getChallengeNo();
		
		rVo.setChallengeSource(source);
		rVo.setAmount(pay+level);
		
		myDao.writeReviewPoint(rVo);
		
		//달성률 -->함수로계산
		//persent = makePersent()
				
		//난이도 참가비용 달성률 --> 받을 포인트 계산
		
		//포인트 저장
		
		
		/* myDao.writeReviewPoint(reviewVo); */
		
		return filePath;
	}
	
	//리뷰 삭제
	public int removeReview(ReviewVo reviewVo) {
		System.out.println("MySERVICE >> del.review");
		
		return myDao.deleteReview(reviewVo);
		
	}
	
	//포인트(전체)
	public Map<String, Object> getpList51(int crtPage) {
		System.out.println("C > getmcList");
		
		//////리스트 가져오기
		
		//페이지당 글갯수
		int listCnt = 7;
		
		//현재페이지
		crtPage = (crtPage>0) ? crtPage : (crtPage=1);
		
		//시작글번호
		int startRnum = (crtPage - 1)*listCnt + 1;
		
		//끝글번호
		int endRnum = (startRnum + listCnt) -1 ;
		//총포인트
		int sum = myDao.selectsum();
		List<ReviewVo> pList = myDao.selectPoint(startRnum, endRnum);
		
		//////////
		//페이징계산
		//////////
		
		//전체글갯수
		int totalCnt51 = myDao.selectTotalCnt51();
		
		
		//페이지당버튼갯수
		int pageBtnCount = 5;
		
		//마지막버튼번호
		int endPageBtnNo = (int)Math.ceil(crtPage/(double)pageBtnCount)*pageBtnCount;
		
		//
		int startPageBtnNo = (endPageBtnNo-pageBtnCount)+1;
		
		//다음 화살표 유무
        boolean next = false;
        if( (listCnt*endPageBtnNo) < totalCnt51  ) {
        	 next=true;
        
        }else {
        	endPageBtnNo =(int)Math.ceil(totalCnt51/(double)listCnt);       
        }
       
        //이전 화살표 유무
        boolean prev = false;
        if(startPageBtnNo != 1) {
        	prev=true;
        }
        
        
        Map<String, Object> pMap = new HashMap<String, Object>();
		
        pMap.put("pList", pList);
        pMap.put("prev", prev);
        pMap.put("startPageBtnNo", startPageBtnNo);
        pMap.put("endPageBtnNo", endPageBtnNo);
        pMap.put("next", next);
		pMap.put("sum", sum);
        
		return pMap;
	}	
	
	 
} 
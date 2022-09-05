package com.nadaena.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.ChallengeDao;
import com.nadaena.dao.CommunityDao;
import com.nadaena.vo.BoardVo;
import com.nadaena.vo.ChallengeVo;
import com.nadaena.vo.CommentVo;
import com.nadaena.vo.SearchVo;

@Service
public class CommunityService {

	@Autowired
	private CommunityDao communityDao;

	@Autowired
	private ChallengeDao challengeDao;

	//커뮤니티 리스트
	public Map<String, Object> getCommunity(SearchVo searchVo, ChallengeVo challengeVo) {
		System.out.println("CommunityService > getCommunity");

		//조인체크, intro, 글 리스트

		//intro
		ChallengeVo intro = challengeDao.intro(searchVo.getChallengeNo());

		//조인체크
		ChallengeVo joinChk = challengeDao.joinChk(challengeVo);

		//글리스트
		/////////////////////// // 리스트가져오기 /////////////////////////////////////////////
				
		//페이지당 글갯수
		int listCnt = 10;
		
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
		
		
		List<BoardVo> boardList = communityDao.getBoardList(searchVo);

		
		//////////////////////////////////////////////// 페이징 계산 //////////////////////////////////////////////
		
		//전체글갯수 
		int totalCnt = communityDao.selectTotalCnt(searchVo);
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
		
		
		
		//맵만들기
		Map<String, Object> cMap = new HashMap<String, Object>();

		cMap.put("intro", intro);
		cMap.put("joinChk", joinChk);
		cMap.put("boardList", boardList);
		cMap.put("prev", prev);
		cMap.put("startPageBtnNo", startPageBtnNo);
		cMap.put("endPageBtnNo", endPageBtnNo);
		cMap.put("next", next);
		cMap.put("crtPage", crtPage);
		
		System.out.println("=============================================");
		System.out.println(searchVo);
		System.out.println(challengeVo);
		System.out.println(cMap);
		System.out.println("=============================================");
		return cMap;
	}

	
	//챌린지 기본 정보 가져오기
	public Map<String, Object> intro(int challengeNo) {
		System.out.println("CommunityService > intro");

		//intro
		ChallengeVo intro = challengeDao.intro(challengeNo);

		
		//앱만들기
		Map<String, Object> cMap = new HashMap<String, Object>();

		cMap.put("intro", intro);

		return cMap;
	}
	
	
	//글작성(저장)
	public int writeBoard(BoardVo boardVo) {
		
		return communityDao.insertBoard(boardVo);
		
	}
	
	
	//글1개 가져오기 (읽기)
	public Map<String, Object> boardRead(int challengeNo, int boardNo) {
		System.out.println("CommunityService > boardRead");

		//intro
		ChallengeVo intro = challengeDao.intro(challengeNo);
		
		//글 가져오기
		BoardVo boardVo = communityDao.selectBoard(boardNo);
	   
		//댓글리스트
		List<CommentVo> replyList = communityDao.getReplyList(boardNo);

		Map<String, Object> boardMap = new HashMap<String, Object>();
		
		boardMap.put("intro", intro);
		boardMap.put("boardVo", boardVo);
		boardMap.put("replyList", replyList);

		return boardMap;
	}

	
	//ajax댓글등록
	public CommentVo replyWrite(CommentVo commentVo) {
		System.out.println("CommunityService > replyWrite");


		//댓글 등록
		int count = communityDao.insertReply(commentVo);
		
		//방금 등록한 댓글 가져오기
		int commentNo = commentVo.getCommentNo();
		
		return communityDao.getReplyByNo(commentNo);
	}
	
	
}

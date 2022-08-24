package com.nadaena.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.MCVo;
import com.nadaena.vo.ReviewVo;
import com.nadaena.vo.PointVo;

@Repository
public class MCDao {
	 
	@Autowired
	private SqlSession sqlSession;
	
	//참가 리스트
	public List<MCVo> selectList() {
		System.out.println("MCDao > selectList()");
		
		List<MCVo> mcList = sqlSession.selectList("myChallenge.selectList");
		System.out.println(mcList);
		
		return mcList;
	}
	
	//종료 리스트+페이징
	public List<MCVo> selectList12(int startRnum, int endRnum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		List<MCVo> mcList2 = sqlSession.selectList("myChallenge.selectList12", map);
		
		return mcList2;
	}
	
	//종료 리스트(성공) + 페이징
	public List<MCVo> selectList13(int startRnum, int endRnum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		List<MCVo> mcList3 = sqlSession.selectList("myChallenge.selectList13", map);
		
		return mcList3;
	}
	
	//종료 리스트(실패) + 페이징
	public List<MCVo> selectList14(int startRnum, int endRnum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		List<MCVo> mcList4 = sqlSession.selectList("myChallenge.selectList14", map);
		
		return mcList4;
	}
	
	//진행중 이벤트 + 페이징
	public List<MCVo> selectList21(int startRnum, int endRnum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		List<MCVo> meList1 = sqlSession.selectList("myChallenge.selectList21", map);
		System.out.println(meList1);
		return meList1;
	}

	//종료 이벤트 + 페이징
	public List<MCVo> selectList22(int startRnum, int endRnum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		List<MCVo> meList2 = sqlSession.selectList("myChallenge.selectList22", map);
		System.out.println(meList2);
		return meList2;
	}
	
	//전체글 갯수
	public int selectTotalCnt() {
		
		int totalCnt = sqlSession.selectOne("myChallenge.selectTotalCnt");
		
		return totalCnt;
	}
	
	//성공글 갯수
	public int selectTotalCnt2() {
		
		int totalCnt2 = sqlSession.selectOne("myChallenge.selectTotalCnt2");
		
		return totalCnt2;
	}
	
	//실패글 갯수
	public int selectTotalCnt3() {
		
		int totalCnt3 = sqlSession.selectOne("myChallenge.selectTotalCnt3");
		
		return totalCnt3;
	}

	//진행이벤트 갯수
	public int selectTotalCnt21() {
		
		int totalCnt21 = sqlSession.selectOne("myChallenge.selectTotalCnt21");
		
		return totalCnt21;
	}

	//종료이벤트 갯수
	public int selectTotalCnt22() {
		
		int totalCnt22 = sqlSession.selectOne("myChallenge.selectTotalCnt22");
		
		return totalCnt22;
	}
	
	//리뷰 갯수
	public int selectTotalCnt41() {
		
		int totalCnt41 = sqlSession.selectOne("myChallenge.selectTotalCnt41");
		
		return totalCnt41;
	}
	
	//리뷰리스트 + 페이징
	public List<ReviewVo> selectreviewList(int startRnum, int endRnum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		List<ReviewVo> rList = sqlSession.selectList("myChallenge.selectreviewList", map);
		
		return rList;
	}	
	
	//리뷰쓰기
	public int writeReview(ReviewVo reviewVo) {
		System.out.println("BoardDao>write()");
		
		int count = sqlSession.insert("myChallenge.insertReview", reviewVo);
		
		return count;
	}
	
	//상태업데이트
	public int update(ReviewVo reviewVo) {
		
		return sqlSession.update("myChallenge.updateState",reviewVo);
	}
	
	//리뷰삭제
	public int deleteReview(ReviewVo reviewVo) {
		System.out.println("MCDAO >>> DEL.review");
		
		return sqlSession.delete("myChallenge.deleteReview", reviewVo);
		
	}
	
	//포인트리스트 + 페이징
	public List<PointVo> selectPoint(int startRnum, int endRnum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		List<PointVo> pList = sqlSession.selectList("myChallenge.selectPoint", map);
		
		return pList;
	}
	
	//포인트내역 갯수
	public int selectTotalCnt51() {
		
		int totalCnt51 = sqlSession.selectOne("myChallenge.selectTotalCnt51");
		
		return totalCnt51;
	}	
}

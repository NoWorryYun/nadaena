package com.nadaena.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.MyVo;
import com.nadaena.vo.ReviewVo;

@Repository
public class MyDao {
	 
	@Autowired
	private SqlSession sqlSession;
	
	//참가 리스트
	public List<MyVo> selectList() {
		
		List<MyVo> mcList = sqlSession.selectList("my.selectList");
		
		return mcList;
	}
	
	//종료 리스트+페이징
	public List<MyVo> selectList12(int startRnum, int endRnum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		List<MyVo> mcList2 = sqlSession.selectList("my.selectList12", map);
		
		return mcList2;
	}
	
	//종료 리스트(성공) + 페이징
	public List<MyVo> selectList13(int startRnum, int endRnum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		List<MyVo> mcList3 = sqlSession.selectList("my.selectList13", map);
		
		return mcList3;
	}
	
	//종료 리스트(실패) + 페이징
	public List<MyVo> selectList14(int startRnum, int endRnum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		List<MyVo> mcList4 = sqlSession.selectList("my.selectList14", map);
		
		return mcList4;
	}
	
	//진행중 이벤트 + 페이징
	public List<MyVo> selectList21(int startRnum, int endRnum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		List<MyVo> meList1 = sqlSession.selectList("my.selectList21", map);
		System.out.println(meList1);
		return meList1;
	}

	//종료 이벤트 + 페이징
	public List<MyVo> selectList22(int startRnum, int endRnum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		List<MyVo> meList2 = sqlSession.selectList("my.selectList22", map);
		System.out.println(meList2);
		return meList2;
	}
	
	//전체글 갯수
	public int selectTotalCnt() {
		
		int totalCnt = sqlSession.selectOne("my.selectTotalCnt");
		
		return totalCnt;
	}
	
	//성공글 갯수
	public int selectTotalCnt2() {
		
		int totalCnt2 = sqlSession.selectOne("my.selectTotalCnt2");
		
		return totalCnt2;
	}
	
	//실패글 갯수
	public int selectTotalCnt3() {
		
		int totalCnt3 = sqlSession.selectOne("my.selectTotalCnt3");
		
		return totalCnt3;
	}

	//진행이벤트 갯수
	public int selectTotalCnt21() {
		
		int totalCnt21 = sqlSession.selectOne("my.selectTotalCnt21");
		
		return totalCnt21;
	}

	//종료이벤트 갯수
	public int selectTotalCnt22() {
		
		int totalCnt22 = sqlSession.selectOne("my.selectTotalCnt22");
		
		return totalCnt22;
	}
	
	//북마크 챌린지 + 페이징
	public List<MyVo> selectbList1(int startRnum, int endRnum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		List<MyVo> mbList1 = sqlSession.selectList("my.selectbList1", map);
		return mbList1;
	}
	
	//북마크 챌린지 갯수
	public int selectTotalCntb1() {
		
		int totalCnt = sqlSession.selectOne("my.selectTotalCntb1");
		
		return totalCnt;
	}
	
	//북마크 이벤트 + 페이징
	public List<MyVo> selectbList2(int startRnum, int endRnum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		List<MyVo> mbList2 = sqlSession.selectList("my.selectbList2", map);
		return mbList2;
	}
	
	//북마크 이벤트 갯수
	public int selectTotalCntb2() {
		
		int totalCnt = sqlSession.selectOne("my.selectTotalCntb2");
		
		return totalCnt;
	}	
	
	
	
	//리뷰 갯수
	public int selectTotalCnt41() {
		
		int totalCnt41 = sqlSession.selectOne("my.selectTotalCnt41");
		
		return totalCnt41;
	}
	
	//리뷰리스트 + 페이징
	public List<ReviewVo> selectreviewList(int startRnum, int endRnum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		List<ReviewVo> rList = sqlSession.selectList("my.selectreviewList", map);
		
		return rList;
	}	
	
	//리뷰쓰기
	public int writeReview(ReviewVo reviewVo) {
		
		int count = sqlSession.insert("my.insertReview", reviewVo);
		
		System.out.println("리뷰쓰기");
		
		return count;
	}

	//포인트 정보가져오기
	public ReviewVo selectReviewPoint(ReviewVo reviewVo) {
		
		System.out.println("포인트담아와라(dao)");
		
		return sqlSession.selectOne("my.selectReviewPoint", reviewVo);
		
	}	
	
	//포인트 지급
	public int writeReviewPoint(ReviewVo rVo) {
		
		int count = sqlSession.insert("my.insertReviewPoint", rVo);
		
		
		return count;
	}	
	
	
	//상태업데이트
	public int update(ReviewVo reviewVo) {
		
		return sqlSession.update("my.updateState",reviewVo);
		
	}
	
	//리뷰삭제
	public int deleteReview(ReviewVo reviewVo) {
		System.out.println("MyDAO >>> DEL.review");
		
		return sqlSession.delete("my.deleteReview", reviewVo);
		
	}
	
	//포인트리스트 + 페이징
	public List<ReviewVo> selectPoint(int startRnum, int endRnum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		List<ReviewVo> pList = sqlSession.selectList("my.selectPoint", map);
		
		return pList;
	}
	
	//포인트 총합
	public int selectsum() {
		
		int sum = sqlSession.selectOne("my.selectSum");
		
		return sum;
	}	
	
	//포인트내역 갯수
	public int selectTotalCnt51() {
		
		int totalCnt51 = sqlSession.selectOne("my.selectTotalCnt51");
		
		return totalCnt51;
	}	
}

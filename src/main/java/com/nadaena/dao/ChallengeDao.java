package com.nadaena.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.ChallengeSubVo;
import com.nadaena.vo.ChallengeVo;

@Repository
public class ChallengeDao {

	@Autowired
	private SqlSession sqlSession;

	//챌린지 개설
	public int makeChallenge(ChallengeVo clgVo) {
		int count = sqlSession.insert("Challenge.writeChallenge", clgVo);
		System.out.println(clgVo.toString());

		return count;
	}

	//챌린지 과제 만들기
	public int makeClgSub(List<ChallengeSubVo> upsList) {

		for (int i = 0; i < upsList.size(); i++) {

			int no = upsList.get(i).getChallengeNo();
			String title = upsList.get(i).getCertifyTitle();
			int sub1 = upsList.get(i).getSubOn();
			int sub2 = upsList.get(i).getSubOff();

			ChallengeSubVo clgSubVo = new ChallengeSubVo(no, title, sub1, sub2);

			sqlSession.insert("Challenge.makeSubject", clgSubVo);
		}
		return 1;
	}

	//챌린지 참여하기(방장)
	public int joinChallengeHeader(ChallengeVo challengeVo) {

		return sqlSession.insert("Challenge.joinChallengeHeader", challengeVo);
	}
	
	//챌린지 금액 지출(방장)
	public int joinPayHeader(ChallengeVo challengeVo) {
		
		return sqlSession.insert("Challenge.joinPayHeader", challengeVo);
	}
	
	//인트로 내용 받아오기
	public ChallengeVo intro(int challengeNo) {
		return sqlSession.selectOne("Challenge.intro", challengeNo);
	}

	//인트로 업로드 상세 받아오기
	public List<ChallengeVo> certifyList(ChallengeVo challengeVo) {
		List<ChallengeVo> certifyList = sqlSession.selectList("Challenge.certifyList", challengeVo);
		return certifyList;
	}
	
	//북마크 설정
	public int bookMark(int userNo) {

		return sqlSession.selectOne("Challenge.bookMark", userNo);
	}

	//북마크 설정
	public int chkBM(ChallengeVo challengeVo) {

		return sqlSession.insert("Challenge.chkBM", challengeVo);
	}

	//북마크 해제
	public int unChkBM(ChallengeVo challengeVo) {

		return sqlSession.insert("Challenge.unChkBM", challengeVo);
	}

	//챌린지 참여 확인
	public ChallengeVo joinChk(ChallengeVo challengeVo) {

		return sqlSession.selectOne("Challenge.joinChk", challengeVo);
	}

	//챌린지 참여하기(유저)
	public int joinChallenge(ChallengeVo challengeVo) {

		return sqlSession.insert("Challenge.joinChallenge", challengeVo);
	}

	//챌린지 탈퇴하기(유저)
	public int joinCancel(ChallengeVo challengeVo) {

		return sqlSession.delete("Challenge.joinCancel", challengeVo);
	}

	//챌린지 유저 참여 금액 확인
	public Integer userPay(ChallengeVo challengeVo) {
		
		Integer userPay = sqlSession.selectOne("Challenge.userPay",challengeVo);
		
			if(userPay != null) {
				return userPay;
			} else {
				return 0;
			}
	}
	
	//챌린지 참여 금액 차감
	public int joinPay(ChallengeVo challengeVo) {
		return sqlSession.insert("Challenge.joinPay", challengeVo);
	}
	
	//챌린지 참여 금액 환급
	public int joinPayBack(ChallengeVo challengeVo) {
		
		return sqlSession.insert("Challenge.joinPayBack", challengeVo);
	}
	
	//챌린지 삭제하기
	public int deleteClg(int challengeNo) {
		return sqlSession.delete("Challenge.deleteClg", challengeNo);
	}
	
	//챌린지 인증 삭제
	public int deleteClgUpload(int challengeNo) {
		
		return sqlSession.delete("Challenge.deleteClgUpload", challengeNo);
	}
	
	//챌린지 유지 인증 있는지 확인
	public int ClguUerUploadCheck(int challengeNo){
		
		return sqlSession.selectOne("Challenge.ClguUerUploadCheck", challengeNo);
	}
	
	//챌린지 유저 인증 삭제
	public int deleteClgUserUpload(int challengeNo) {
		
		return sqlSession.delete("Challenge.deleteClgUserUpload", challengeNo);
	}
	
	//챌린지 북마크 여부 확인
	public int chkBookmark(int challengeNo) {
		
		return sqlSession.selectOne("Challenge.chkBookmark", challengeNo);
	}
	
	//챌린지 북마크 지워버리기
	public int deleteBookMark(int challengeNo) {
		return sqlSession.delete("Challenge.deleteBookMark", challengeNo);
	}
	
	//진행바 체크하기
	public int chkProgress(ChallengeVo clgVo) {

		return sqlSession.selectOne("Challenge.chkProgress", clgVo);
	}
	
	//챌린지 인원 리스트
	public List<Integer> clgUserList(int challengeNo){
		
		 List<Integer> userList = sqlSession.selectList("Challenge.clgUserList", challengeNo);
		
		return userList;
	}

	//달력 계산하기
	public List<ChallengeVo> calender(ChallengeVo challengeVo) {
		return sqlSession.selectList("Challenge.calender", challengeVo);
	}
	
	//답 제출하기
	public int certifiedSubmit(ChallengeVo challengeVo) {
		
		return sqlSession.insert("Challenge.certifiedSubmit", challengeVo);

	}

	//답 수정하기
	public int certifiedUpdate(ChallengeVo challengeVo) {

		return sqlSession.update("Challenge.certifiedUpdate", challengeVo);
	}
	
	public int joinCount(int userNo) {
		
		Integer count = sqlSession.selectOne("Challenge.joinCount", userNo);
		
		if(count != null && count > 0) {
			count = sqlSession.selectOne("Challenge.joinCount", userNo);
		} else {
			count = 0;
		}
		
		return count;
		
	}
	
	//유저 포인트 계산하기
	public int userAmount(int userNo) {
		
		List<Integer> userAmount = sqlSession.selectList("Challenge.userAmount", userNo);

		int amount = 0;
		if(userAmount != null) {
			for(int i = 0 ; i < userAmount.size() ; i++) {
				amount += userAmount.get(i);
			}
		} else {
			amount = 0;
		}
		return amount;
	}
	
	
	//챌리지 존재 여부 확인
	public Integer clgChk(int challengeNo) {
		
		Integer clg = sqlSession.selectOne("Challenge.clgChk",challengeNo);
		
		int clgChk;
		if(clg != null) {
			clgChk = clg;
		} else {
			clgChk = 0;
		}
		
		return clgChk;
	}
	
	//인증리스트
	public List<ChallengeVo> certifyIMGList(int startRnum, int endRnum, int challengeNo){
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		map.put("challengeNo", challengeNo);
		
		return sqlSession.selectList("Challenge.certifyIMGList", map);
	}
	
	//전체글갯수
	public int selectTotatlCnt(int challengeNo) {
		int totalCnt = sqlSession.selectOne("Challenge.selectTotalCnt", challengeNo);
		
		return totalCnt;
	}
	
}
